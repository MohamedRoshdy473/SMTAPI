using Microsoft.AspNetCore.Mvc;
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
    public class ConsultantController : ControllerBase
    {
        private readonly IConsultantService _consultantService;

        public ConsultantController(IConsultantService consultantService)
        {
            _consultantService = consultantService;
        }
        // GET: api/<ConsultantController>
        [HttpGet]
        public IEnumerable<Consultant> Get()
        {
            return _consultantService.GetAllConsultants();
        }

        // GET api/<ConsultantController>/5
        [HttpGet("{id}")]
        public ActionResult<Consultant> Get(int id)
        {
            return _consultantService.GetConsultant(id);
        }

        // POST api/<ConsultantController>
        [HttpPost]
        public ActionResult<Consultant> Post(Consultant consultant)
        {
            _consultantService.AddConsultant(consultant);
            return CreatedAtAction("Get", new { id = consultant.ID }, consultant);

        }

        // PUT api/<ConsultantController>/5
        [HttpPut("{id}")]
        public ActionResult<Consultant> Put(int id, Consultant consultant)
        {
            _consultantService.UpdateConsultant(id,consultant);
            return CreatedAtAction("Get", new { id = consultant.ID }, consultant);
        }

        // DELETE api/<ConsultantController>/5
        [HttpDelete("{id}")]
        public ActionResult<Consultant> Delete(int id)
        {
            _consultantService.DeleteConsultant(id);
            return Ok();
        }
    }
}
