﻿using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using SMT.Data.DTO;
using SMT.Data.Models.HRDBContext;
using SMT.Data.Models.SMTDBContext.SMTDBContext;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SMT.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UsersController : ControllerBase
    {
       private readonly UserManager<ApplicationUser> userManager;
        private readonly RoleManager<IdentityRole> roleManager;
        private readonly IConfiguration _configuration; 
        private readonly HRDBContext _context;

        public UsersController(UserManager<ApplicationUser> userManager,
            RoleManager<IdentityRole> roleManager, IConfiguration configuration
            , HRDBContext context)
        {
            this.userManager = userManager;
            this.roleManager = roleManager;
            _context = context;
            _configuration = configuration;
        }
        // GET: api/<UsersController>
        [HttpGet]
        public async Task<IEnumerable<UsersWithRolesDTO>> GetAllUsersAsync()
        {
            List<UsersWithRolesDTO> usersWithRoles = new List<UsersWithRolesDTO>();
            UsersWithRolesDTO usersWithRolesDTO;
            var users = userManager.Users.ToList();
            var roles = roleManager.Roles.ToList();
            foreach (var User in users)
            {
                foreach (var role in roles)
                {
                    if ( await userManager.IsInRoleAsync(User, role.Name))
                    {
                        usersWithRolesDTO= new UsersWithRolesDTO()
                        {
                            id=User.Id,
                            Email = User.Email,
                            Role = role.Name,
                            UserName = User.UserName
                        };
                        usersWithRoles.Add(usersWithRolesDTO);
                    }
                }
            }
            return usersWithRoles;
        }
        [HttpGet]
        [Route("GetUnregisteredUsers")]
        public IEnumerable<Employee> GetUnregisteredUsers()
        {
            //List<Employee> emps = new List<Employee>();
            var users = userManager.Users.ToList();
            var employees = _context.Employees.ToList();
            var emps = _context.Employees.ToList();
            foreach (var employee in employees)
            {
                foreach (var user in users)
                {
                    if (employee.Email == user.Email)
                        emps.Remove(employee);
                }
            }
            return emps;
        }
        // DELETE api/<UsersController>/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> Delete(string id)
        {
            var user = userManager.FindByIdAsync(id).Result;
            var result=await userManager.DeleteAsync(user);
            if (result.Succeeded)
                return  Ok();
            else
                return  BadRequest();
        }
    }
}
