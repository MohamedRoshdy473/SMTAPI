﻿using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.WebUtilities;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using SMT.Data.DTO;
using SMT.Data.Models.HRDBContext;
using SMT.Data.Models.SMTDBContext;
using SMT.Data.Models.SMTDBContext.SMTDBContext;
using SMT.Data.ViewModels;
using SMT.Domain;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;

namespace SMT.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AuthenticateController : ControllerBase
    {
        private readonly UserManager<ApplicationUser> userManager;
        private readonly RoleManager<IdentityRole> roleManager;
        private readonly IConfiguration _configuration;
        private readonly HRDBContext _context;
        private readonly IEmailSender _emailSender;
        public AuthenticateController(UserManager<ApplicationUser> userManager, IEmailSender emailSender,
            RoleManager<IdentityRole> roleManager, IConfiguration configuration, HRDBContext context)
        {
            this.userManager = userManager;
            this.roleManager = roleManager;
            _configuration = configuration;
            _context = context;
            _emailSender = emailSender;

        }

        [HttpPost]
        [Route("login")]
        public async Task<IActionResult> Login(LoginVM model)
        {
            var time = DateTime.Now;
            var user = await userManager.FindByEmailAsync(model.Email);
            if (user != null && await userManager.CheckPasswordAsync(user, model.Password))
            {
                var userRoles = await userManager.GetRolesAsync(user);

                var authClaims = new List<Claim>
                {
                    new Claim(ClaimTypes.Name, user.UserName),
                    new Claim(ClaimTypes.Email, user.Email),
                    new Claim("key","value"),
                    new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString()),
                };

                foreach (var userRole in userRoles)
                {
                    authClaims.Add(new Claim(ClaimTypes.Role, userRole));
                }
                foreach (var claim in authClaims)
                {
                    await userManager.AddClaimAsync(user, claim);

                }
                var authSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_configuration["JWT:Secret"]));

                var token = new JwtSecurityToken(
                    issuer: _configuration["JWT:ValidIssuer"],
                    audience: _configuration["JWT:ValidAudience"],
                    expires: DateTime.Now.AddHours(3),
                    claims: authClaims,
                    signingCredentials: new SigningCredentials(authSigningKey, SecurityAlgorithms.HmacSha256)
                    );
                var userId = User.FindFirstValue(ClaimTypes.Email);
                //var usrId = user.Id;
                var x = user.Email;
                int usrId = 0;
                var lstEmployees = _context.Employees.Where(a => a.Email == user.Email).ToList();
                if (lstEmployees.Count > 0)
                {
                    Employee employeeObj = lstEmployees[0];
                    usrId = employeeObj.Id;
                }



                var name = user.UserName;
                var Useremail = user.Email;
                var UserId = user.Id;
                return Ok(new
                {
                    token = new JwtSecurityTokenHandler().WriteToken(token),
                    email = Useremail,
                    UserName = name,
                    roles = userRoles,
                    expiration = token.ValidTo,
                    UserId = UserId
                });
            }
            return Unauthorized();
        }

        [HttpPost]
        [Route("register")]
        public async Task<IActionResult> Register([FromBody] UserVM model)
        {
            var userExists = await userManager.FindByEmailAsync(model.Email);
            if (userExists != null)
                return StatusCode(StatusCodes.Status500InternalServerError, new Response { Status = "Error", Message = "User already exists!" });
           //var names = model.UserName.Split('_');
           // if(names.Length > 1)
           // {
           //     model.UserName = model.UserName.Remove(names[1].Length);
           // }
            model.UserName = model.UserName.Replace(' ', '_');

            ApplicationUser user = new ApplicationUser()
            {
                Email = model.Email,
                SecurityStamp = Guid.NewGuid().ToString(),
                UserName = model.UserName
            };
            var result = await userManager.CreateAsync(user, model.Password);
            if (!result.Succeeded)
                return StatusCode(StatusCodes.Status500InternalServerError, new Response { Status = "Error", Message = "User creation failed! Please check user details and try again." });
            if (model.Role == "SalesManager")
            {
                if (!await roleManager.RoleExistsAsync(UserRoles.SalesManager))
                    await roleManager.CreateAsync(new IdentityRole(UserRoles.SalesManager));
                await userManager.AddToRoleAsync(user, UserRoles.SalesManager);
            }
            if (model.Role == "Sales")
            {
                if (!await roleManager.RoleExistsAsync(UserRoles.Sales))
                    await roleManager.CreateAsync(new IdentityRole(UserRoles.Sales));
                await userManager.AddToRoleAsync(user, UserRoles.Sales);
            }
            if (model.Role == "PreSalesManager")
            {
                if (!await roleManager.RoleExistsAsync(UserRoles.PreSalesManager))
                    await roleManager.CreateAsync(new IdentityRole(UserRoles.PreSalesManager));
                await userManager.AddToRoleAsync(user, UserRoles.PreSalesManager);
            }
            if (model.Role == "PreSales")
            {
                if (!await roleManager.RoleExistsAsync(UserRoles.PreSales))
                    await roleManager.CreateAsync(new IdentityRole(UserRoles.PreSales));
                await userManager.AddToRoleAsync(user, UserRoles.PreSales);
            }
            if (model.Role == "CEO")
            {
                if (!await roleManager.RoleExistsAsync(UserRoles.CEO))
                    await roleManager.CreateAsync(new IdentityRole(UserRoles.CEO));
                await userManager.AddToRoleAsync(user, UserRoles.CEO);
            }
            if (model.Role == "Admin")
            {
                if (!await roleManager.RoleExistsAsync(UserRoles.Admin))
                    await roleManager.CreateAsync(new IdentityRole(UserRoles.Admin));
                await userManager.AddToRoleAsync(user, UserRoles.Admin);
            }
            //string url = "http://localhost:4200/login";
            string url = "http://10.10.0.129:9090/#/login";

            var message = new MessageDTO(new string[] { $"{model.Email}" }, "Confirmation Email", $"Dear {model.UserName}\r\n Hope this email finds you well \r\n This is Al-Mostakbal Technology. As per your registration , please note that your Email : {model.Email} And Password :{model.Password} follow link to login {url}");
              _emailSender.SendEmail(message);
            return Ok(new Response { Status = "Success", Message = "User created successfully!" });
        }
        [HttpPost]
        [Route("changPassword")]
        public async Task<IActionResult> ChangPassword(ChangePasswordVM model)
        {
            var user = await userManager.FindByNameAsync(model.userName);
            await userManager.ChangePasswordAsync(user, model.Password, model.NewPassword);
            return Ok();
        }

        // to check homepage interceptor
        [Authorize]
        [HttpGet]
        [Route("checkInterceptor")]
        public IActionResult CheckInterceptor()
        {
            return Ok();
        }

        [HttpPost("ForgotPassword")]
        public async Task<IActionResult> ForgotPassword([FromBody] ForgotPasswordDTO forgotPasswordModel)
        {
            if (!ModelState.IsValid)
                return BadRequest();

            var user = await userManager.FindByEmailAsync(forgotPasswordModel.Email);
            if (user == null)
                return BadRequest("Invalid Request");

            var token = await userManager.GeneratePasswordResetTokenAsync(user);
            var param = new Dictionary<string, string>
             {
                 {"token", token },
                 {"email", forgotPasswordModel.Email }
             };

            var callback = QueryHelpers.AddQueryString(forgotPasswordModel.ClientURI, param);
            var hash = callback.Split("#");
            var query = hash[0];
            string replace = query.Replace("/?", "/#/Resetpassword?");
            var message = new MessageDTO(new string[] { user.Email }, "Al-Mostakbal Technology.", $"Dear {user.UserName}\r\n Please follow link to reset your password {replace}");
            // var message = new Message(new string[] { user.Email }, "Al-Mostakbal Technology.", replace);
            _emailSender.SendEmail(message);
            return Ok();
        }
        [HttpPost("ResetPassword")]
        public async Task<IActionResult> ResetPassword([FromBody] ResetPasswordDTO resetPasswordDto)
        {
            if (!ModelState.IsValid)
                return BadRequest();

            var user = await userManager.FindByEmailAsync(resetPasswordDto.Email);
            if (user == null)
                return BadRequest("Invalid Request");

            var resetPassResult = await userManager.ResetPasswordAsync(user, resetPasswordDto.Token, resetPasswordDto.Password);
            if (!resetPassResult.Succeeded)
            {
                var errors = resetPassResult.Errors.Select(e => e.Description);

                return BadRequest(new { Errors = errors });
            }

            return Ok();
        }
    }
}
