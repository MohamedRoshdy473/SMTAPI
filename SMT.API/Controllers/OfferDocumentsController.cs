using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SMT.Core;
using SMT.Data.DTO;
using SMT.Data.Models.SMTDBContext;
using SMT.Domain.Services;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http.Headers;
using System.Threading.Tasks;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace SMT.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class OfferDocumentsController : ControllerBase
    {
        private readonly IOfferDocumentsService _offerDocumentsService;

        public OfferDocumentsController(IOfferDocumentsService offerDocumentsService)
        {
            _offerDocumentsService = offerDocumentsService;
        }
        // GET: api/<OfferDocumentsController>
        [HttpGet]
        public IEnumerable<OfferDocuments> Get()
        {
            return _offerDocumentsService.GetAllOfferDocuments();
        }

        // GET api/<OfferDocumentsController>/5
        [HttpGet("{id}")]
        public ActionResult<OfferDocuments> Get(int id)
        {
            return _offerDocumentsService.GetOfferDocument(id);
        }

        // POST api/<OfferDocumentsController>
        [HttpPost]
        public ActionResult<OfferDocuments> Post(List<OfferDocumentsDTO> offerDocumentsDTO)
        {
            _offerDocumentsService.AddOfferDocument(offerDocumentsDTO);
            return CreatedAtAction("Get", new { offerDocumentsDTO });
        }

        // PUT api/<OfferDocumentsController>/5
        [HttpPut("{id}")]
        public ActionResult<OfferDocuments> Put(int id, OfferDocuments offerDocuments)
        {
            _offerDocumentsService.UpdateOfferDocument(id,offerDocuments);
            return CreatedAtAction("Get", new { id = offerDocuments.Id }, offerDocuments);
        }

        // DELETE api/<OfferDocumentsController>/5
        [HttpDelete("{id}")]
        public ActionResult<OfferDocuments> Delete(int id)
        {
            _offerDocumentsService.DeleteOfferDocument(id);
            return Ok();
        }
        [HttpPost, DisableRequestSizeLimit]
        [Route("Uploadfile")]
        public IActionResult Upload()
        {
            try
            {
                var file = Request.Form.Files[0];
                var folderName = Path.Combine("wwwroot", "documentFiles");
                var pathToSave = Path.Combine(Directory.GetCurrentDirectory(), folderName);

                if (file.Length > 0)
                {
                    var fileName = ContentDispositionHeaderValue.Parse(file.ContentDisposition).FileName.Trim('"');
                    var fullPath = Path.Combine(pathToSave, fileName);
                    var dbPath = Path.Combine(folderName, fileName);

                    using (var stream = new FileStream(fullPath, FileMode.Create))
                    {
                        file.CopyTo(stream);
                    }

                    return Ok(new { dbPath });
                }
                else
                {
                    throw new NotCompletedException("Not Completed Exception");
                }
            }
            catch (Exception)
            {
                throw new NotExistException("Not Exist Exception");
            }
        }
        [AllowAnonymous]
        [HttpGet]
        [Route("GetDocument/{docName}")]
        public IActionResult GetDocument(string docName)
        {
            if (docName == null)
                return Content("filename not present");

            var path = Path.Combine(
                           Directory.GetCurrentDirectory(),
                           "wwwroot/documentFiles", docName);

            var memory = new MemoryStream();
            var ext = System.IO.Path.GetExtension(path);
            using (var stream = new FileStream(path, FileMode.Open))
            {
                stream.CopyTo(memory);
            }
            memory.Position = 0;
            var contentType = "APPLICATION/octet-stream";
            return File(memory, contentType, Path.GetFileName(path));
        }



    }
}
