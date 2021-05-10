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
    public class OffersController : ControllerBase
    {
        private readonly IOffersService _offersService;

        public OffersController(IOffersService offersService)
        {
            _offersService = offersService;
        }
        // GET: api/<OffersController>
        [HttpGet]
        public IEnumerable<OffersDTO> Get()
        {
            return _offersService.GetAllOffers();
        }

        // GET api/<OffersController>/5
        [HttpGet("{id}")]
        public ActionResult<OffersDTO> Get(int id)
        {
            return _offersService.GetOffer(id);
        }

        // POST api/<OffersController>
        [HttpPost]
        public int Post(OffersDTO offersDTO)
        {
            _offersService.AddOffer(offersDTO);
            return offersDTO.Id;
        }

        // PUT api/<OffersController>/5
        [HttpPut("{id}")]
        public ActionResult<OffersDTO> Put(int id, OffersDTO offersDTO)
        {
            _offersService.UpdateOffer(id, offersDTO);
            return CreatedAtAction("Get", new { id = offersDTO.Id }, offersDTO);
        }

        // DELETE api/<OffersController>/5
        [HttpDelete("{id}")]
        public ActionResult<OffersDTO> Delete(int id)
        {
            _offersService.DeleteOffer(id);
            return Ok();
        }
    }
}
