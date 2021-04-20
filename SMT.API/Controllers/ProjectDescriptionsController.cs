using Microsoft.AspNetCore.Mvc;
using SMT.Data.DTO;
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
    public class ProjectDescriptionsController : ControllerBase
    {
        private readonly IProjectDescriptionsService _projectDescriptionsService;

        public ProjectDescriptionsController(IProjectDescriptionsService projectDescriptionsService)
        {
            _projectDescriptionsService = projectDescriptionsService;
        }
        // GET: api/<ProjectDescriptionsController>
        [HttpGet]
        public IEnumerable<ProjectDescriptionsDTO> Get()
        {
            return _projectDescriptionsService.GetAllProjectDescriptions();
        }

        // GET api/<ProjectDescriptionsController>/5
        [HttpGet("{id}")]
        public ActionResult<ProjectDescriptionsDTO> Get(int id)
        {
            return _projectDescriptionsService.GetProjectDescription(id);
        }

        // POST api/<ProjectDescriptionsController>
        [HttpPost]
        public ActionResult<ProjectDescriptionsDTO> Post(ProjectDescriptionsDTO projectDescriptionsDTO)
        {
            _projectDescriptionsService.AddProjectDescription(projectDescriptionsDTO);
            return CreatedAtAction("Get", new { id = projectDescriptionsDTO.Id }, projectDescriptionsDTO);

        }

        // PUT api/<ProjectDescriptionsController>/5
        [HttpPut("{id}")]
        public ActionResult<ProjectDescriptionsDTO> Put(int id, ProjectDescriptionsDTO projectDescriptionsDTO)
        {
            _projectDescriptionsService.UpdateProjectDescription(id, projectDescriptionsDTO);
            return CreatedAtAction("Get", new { id = projectDescriptionsDTO.Id }, projectDescriptionsDTO);

        }

        //// DELETE api/<ProjectDescriptionsController>/5
        [HttpDelete("{id}")]
        public ActionResult<ProjectDescriptions> Delete(int id)
        {
            _projectDescriptionsService.DeleteProjectDescription(id);
            return Ok();
        }
    }
}
