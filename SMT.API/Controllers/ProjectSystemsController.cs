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
    public class ProjectSystemsController : ControllerBase
    {
        private readonly IProjectSystemsService _projectSystemsService;

        public ProjectSystemsController(IProjectSystemsService projectSystemsService)
        {
            _projectSystemsService = projectSystemsService;
        }
        // GET: api/<ProjectSystemsController>
        [HttpGet]
        public IEnumerable<ProjectSystemsDTO> Get()
        {
            return _projectSystemsService.GetAllProjectSystems();
        }

        // GET api/<ProjectSystemsController>/5
        [HttpGet("{id}")]
        public ActionResult<ProjectSystemsDTO> Get(int id)
        {
            return _projectSystemsService.GetProjectSystem(id);
        }

        // POST api/<ProjectSystemsController>
        [HttpPost]
        public ActionResult<ProjectSystemsDTO> Post(List<ProjectSystemsDTO> projectSystemsDTOs)
        {
            _projectSystemsService.AddProjectSystem(projectSystemsDTOs);
            return CreatedAtAction("Get", new { projectSystemsDTOs });

        }

        // PUT api/<ProjectSystemsController>/5
        [HttpPut("{id}")]
        public ActionResult<ProjectSystemsDTO> Put(int id, ProjectSystemsDTO projectSystemsDTOs)
        {
            _projectSystemsService.UpdateProjectSystem(id,projectSystemsDTOs);
            return CreatedAtAction("Get", new { projectSystemsDTOs });

        }

        // DELETE api/<ProjectSystemsController>/5
        [HttpDelete("{id}")]
        public ActionResult<ProjectSystemsDTO> Delete(int id)
        {
            _projectSystemsService.DeleteProjectSystem(id);
            return Ok();
        }
    }
}
