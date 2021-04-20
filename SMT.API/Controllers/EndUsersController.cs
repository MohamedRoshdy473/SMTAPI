using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SMT.Data.Models.SMTDBContext;
using SMT.Domain.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace SMT.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EndUsersController : ControllerBase
    {
        private readonly IEndUsersService _endUsersService;

        public EndUsersController(IEndUsersService endUsersService)
        {
            _endUsersService = endUsersService;
        }
        // GET: api/<EndUsersController>
        [HttpGet]
        public IEnumerable<EndUsers> Get()
        {
            return _endUsersService.GetAllEndUsers();
        }

        // GET api/<EndUsersController>/5
        [HttpGet("{id}")]
        public ActionResult<EndUsers> Get(int id)
        {
            return _endUsersService.GetEndUser(id);
        }

        // POST api/<EndUsersController>
        [HttpPost]
        public ActionResult<EndUsers> Post(EndUsers endUsers)
        {
            _endUsersService.AddEndUser(endUsers);
            return CreatedAtAction("Get", new { id = endUsers.ID }, endUsers);

        }

        // PUT api/<EndUsersController>/5
        [HttpPut("{id}")]
        public ActionResult<EndUsers> Put(int id, EndUsers endUsers)
        {
            try
            {
                _endUsersService.UpdateEndUser(id, endUsers);
            }
            catch (DbUpdateConcurrencyException ex)
            {
                string msg = ex.Message;
            }

            return CreatedAtAction("Get", new { id = endUsers.ID }, endUsers);
        }

        // DELETE api/<EndUsersController>/5
        [HttpDelete("{id}")]
        public ActionResult<EndUsers> Delete(int id)
        {
            try
            {
                _endUsersService.DeleteEndUser(id);
            }
            catch (DbUpdateConcurrencyException ex)
            {
                string msg = ex.Message;
            }

            return Ok();
        }
    }
}
