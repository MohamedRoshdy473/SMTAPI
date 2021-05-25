using Microsoft.AspNetCore.Mvc;
using SMT.Data.DTO;
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
    public class OfferDescriptionsController : ControllerBase
    {
        private readonly IOfferDescriptionsService _offerDescriptionsService;

        public OfferDescriptionsController(IOfferDescriptionsService offerDescriptionsService)
        {
            _offerDescriptionsService = offerDescriptionsService;
        }
        // GET: api/<OfferDescriptionsController>
        [HttpGet]
        public IEnumerable<OfferDescriptionsDTO> Get()
        {
            return _offerDescriptionsService.GetAllOfferDescriptions();
        }
        [Route("GetAllOffersByUserId/{UserId}")]
        public IEnumerable<OfferDescriptionsDTO> GetAllOffersByUserId(string UserId)
        {
            return _offerDescriptionsService.GetAllOfferByUserId(UserId);
        }
        [Route("GetAllOfferByProjectUpdateId/{ProjectUpdateId}")]
        public IEnumerable<OfferDescriptionsDTO> GetAllOfferByProjectUpdateId(int ProjectUpdateId)
        {
            return _offerDescriptionsService.GetAllOfferByProjectUpdateId(ProjectUpdateId);
        }

        // GET api/<OfferDescriptionsController>/5
        [HttpGet("{id}")]
        public ActionResult<OfferDescriptionsDTO> Get(int id)
        {
            return _offerDescriptionsService.GetOfferDescriptions(id);
        }

        // POST api/<OfferDescriptionsController>
        [HttpPost]
        public ActionResult<OfferDescriptionsDTO> Post(OfferDescriptionsDTO offerDescriptionsDTO)
        {
            _offerDescriptionsService.AddOfferDescription(offerDescriptionsDTO);
            return CreatedAtAction("Get", new {id= offerDescriptionsDTO.Id }, offerDescriptionsDTO);
        }

        // PUT api/<OfferDescriptionsController>/5
        [HttpPut("{id}")]
        public ActionResult<OfferDescriptionsDTO> Put(int id, OfferDescriptionsDTO offerDescriptionsDTO)
        {
            _offerDescriptionsService.UpdateOfferDescription(id,offerDescriptionsDTO);
            return CreatedAtAction("Get", new { id = offerDescriptionsDTO.Id }, offerDescriptionsDTO);
        }

        // DELETE api/<OfferDescriptionsController>/5
        [HttpDelete("{id}")]
        public ActionResult<OfferDescriptionsDTO> Delete(int id)
        {
            _offerDescriptionsService.DeleteOfferDescription(id);
            return Ok();
        }
    }
}
