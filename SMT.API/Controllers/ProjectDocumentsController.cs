using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SMT.Core;
using SMT.Data.DTO;
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
    public class ProjectDocumentsController : ControllerBase
    {
        private readonly IProjectDocumentsService _projectDocumentsService;

        public ProjectDocumentsController(IProjectDocumentsService projectDocumentsService)
        {
            _projectDocumentsService = projectDocumentsService;
        }
        // GET: api/<ProjectDocumentsController>
        [HttpGet]
        public IEnumerable<ProjectDocumentsDTO> Get()
        {
            return _projectDocumentsService.GetAllProjectDocuments();
        }

        // GET api/<ProjectDocumentsController>/5
        [HttpGet("{id}")]
        public ActionResult<ProjectDocumentsDTO> Get(int id)
        {
            return _projectDocumentsService.GetProjectDocument(id);
        }
    [HttpGet]
    [Route("GetProjectDocumentByProjectId/{ProjectId}")]
        public IEnumerable<ProjectDocumentsDTO> GetProjectDocumentsByProjectId(int ProjectId)
        {
          return _projectDocumentsService.GetProjectDocumentByProjectId(ProjectId);
        }
    // POST api/<ProjectDocumentsController>
    [HttpPost]
        public ActionResult<ProjectDocumentsDTO> Post(List<ProjectDocumentsDTO> projectDocumentsDTO)
        {
            _projectDocumentsService.AddProjectDocument(projectDocumentsDTO);
            return CreatedAtAction("Get", new { projectDocumentsDTO });

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
        // PUT api/<ProjectDocumentsController>/5
        [HttpPut("{id}")]
        public ActionResult<ProjectDocumentsDTO> Put(int id, ProjectDocumentsDTO projectDocumentsDTO)
        {
            _projectDocumentsService.UpdateProjectDocument(id, projectDocumentsDTO);
            return CreatedAtAction("Get", new { projectDocumentsDTO });
        }

        // DELETE api/<ProjectDocumentsController>/5
        [HttpDelete("{id}")]
        public ActionResult<ProjectDocumentsDTO> Delete(int id)
        {
            _projectDocumentsService.DeleteProjectDocument(id);
            return Ok();
        }
    }
}
