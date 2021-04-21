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
    public class GovernoratesController : ControllerBase
    {
        private readonly IGovernoratesService _governoratesService;

        public GovernoratesController(IGovernoratesService governoratesService)
        {
            _governoratesService = governoratesService;
        }
        // GET: api/<GovernoratesController>
        [HttpGet]
        public IEnumerable<Governorates> Get()
        {
            return _governoratesService.GetAllGovernorates();
        }

        // GET api/<GovernoratesController>/5
        [HttpGet("{id}")]
        public ActionResult<Governorates> Get(int id)
        {
            return _governoratesService.GetGovernorate(id);
        }

        // POST api/<GovernoratesController>
        [HttpPost]
        public ActionResult<Governorates> Post(Governorates governorates)
        {
            _governoratesService.AddGovernorate(governorates);
            return CreatedAtAction("Get", new { id = governorates.Id }, governorates);

        }

        // PUT api/<GovernoratesController>/5
        [HttpPut("{id}")]
        public ActionResult<Governorates> Put(int id, Governorates governorates)
        {
            _governoratesService.UpdateGovernorate(id, governorates);
            return CreatedAtAction("Get", new { id = governorates.Id }, governorates);

        }

        // DELETE api/<GovernoratesController>/5
        [HttpDelete("{id}")]
        public ActionResult<Governorates> Delete(int id)
        {
            _governoratesService.DeleteGovernorate(id);
            return Ok();
        }
    }
}
