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
    public class OfferStatusController : ControllerBase
    {
        private readonly IOfferStatusService _offerStatusService;

        public OfferStatusController(IOfferStatusService offerStatusService)
        {
            _offerStatusService = offerStatusService;
        }
        // GET: api/<OfferStatusController>
        [HttpGet]
        public IEnumerable<OfferStatus> Get()
        {
            return _offerStatusService.GetAllOfferStatus();
        }

        // GET api/<OfferStatusController>/5
        [HttpGet("{id}")]
        public ActionResult<OfferStatus> Get(int id)
        {
            return _offerStatusService.GetOfferStatus(id);
        }

        // POST api/<OfferStatusController>
        [HttpPost]
        public ActionResult<OfferStatus> Post(OfferStatus offerStatus)
        {
            _offerStatusService.AddOfferStatus(offerStatus);
            return CreatedAtAction("Get", new { id = offerStatus.Id }, offerStatus);
        }

        // PUT api/<OfferStatusController>/5
        [HttpPut("{id}")]
        public ActionResult<OfferStatus> Put(int id, OfferStatus offerStatus)
        {
            _offerStatusService.UpdateOfferStatus(id,offerStatus);
            return CreatedAtAction("Get", new { id = offerStatus.Id }, offerStatus);
        }

        // DELETE api/<OfferStatusController>/5
        [HttpDelete("{id}")]
        public ActionResult<OfferStatus> Delete(int id)
        {
            _offerStatusService.DeleteOfferStatus(id);
            return Ok();
        }
    }
}
