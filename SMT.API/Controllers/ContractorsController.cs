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
    public class ContractorsController : ControllerBase
    {
        private readonly IContractorsService _contractorsService;

        public ContractorsController(IContractorsService contractorsService)
        {
            _contractorsService = contractorsService;
        }
        // GET: api/<ContractorsController>
        [HttpGet]
        public IEnumerable<Contractors> Get()
        {
            return _contractorsService.GetAllContractors();
        }

        // GET api/<ContractorsController>/5
        [HttpGet("{id}")]
        public ActionResult<Contractors> Get(int id)
        {
            return _contractorsService.GetContractor(id);
        }

        // POST api/<ContractorsController>
        [HttpPost]
        public ActionResult<Contractors> Post(Contractors contractors)
        {
            _contractorsService.AddContractor(contractors);
            return CreatedAtAction("Get", new { id = contractors.ID }, contractors);

        }

        // PUT api/<ContractorsController>/5
        [HttpPut("{id}")]
        public ActionResult<Contractors> Put(int id, Contractors contractors)
        {
            try
            {
                _contractorsService.UpdateContractor(id, contractors);
            }
            catch (DbUpdateConcurrencyException ex)
            {
                string msg = ex.Message;
            }

            return CreatedAtAction("Get", new { id = contractors.ID }, contractors);
        }

        // DELETE api/<ContractorsController>/5
        [HttpDelete("{id}")]
        public ActionResult<Contractors> Delete(int id)
        {
            try
            {
                _contractorsService.DeleteContractor(id);
            }
            catch (DbUpdateConcurrencyException ex)
            {
                string msg = ex.Message;
            }

            return Ok();
        }
    }
}
