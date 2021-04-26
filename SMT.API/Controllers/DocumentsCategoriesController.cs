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
    public class DocumentsCategoriesController : ControllerBase
    {
        private readonly IDocumentsCategoriesService _documentsCategoriesService;

        public DocumentsCategoriesController(IDocumentsCategoriesService documentsCategoriesService)
        {
            _documentsCategoriesService = documentsCategoriesService;
        }
        // GET: api/<DocumentsCategoriesController>
        [HttpGet]
        public IEnumerable<DocumentsCategories> Get()
        {
            return _documentsCategoriesService.GetAllDocumentsCategories();
        }

        // GET api/<DocumentsCategoriesController>/5
        [HttpGet("{id}")]
        public ActionResult<DocumentsCategories> Get(int id)
        {
            return _documentsCategoriesService.GetDocumentsCategory(id);
        }

        // POST api/<DocumentsCategoriesController>
        [HttpPost]
        public ActionResult<DocumentsCategories> Post(DocumentsCategories documentsCategories)
        {
            _documentsCategoriesService.AddDocumentsCategory(documentsCategories);
            return CreatedAtAction("Get", new { id = documentsCategories.Id }, documentsCategories);

        }

        // PUT api/<DocumentsCategoriesController>/5
        [HttpPut("{id}")]
        public ActionResult<DocumentsCategories> Put(int id, DocumentsCategories documentsCategories)
        {
            _documentsCategoriesService.UpdateDocumentsCategory(id,documentsCategories);
            return CreatedAtAction("Get", new { id = documentsCategories.Id }, documentsCategories);
        }

        // DELETE api/<DocumentsCategoriesController>/5
        [HttpDelete("{id}")]
        public ActionResult<DocumentsCategories> Delete(int id)
        {
            _documentsCategoriesService.DeleteDocumentsCategory(id);
            return Ok();
        }
    }
}
