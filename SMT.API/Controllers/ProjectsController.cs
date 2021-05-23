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
    public class ProjectsController : ControllerBase
    {
        private readonly IProjectService _projectService;

        public ProjectsController(IProjectService projectService)
        {
            _projectService = projectService;
        }
        // GET: api/<ProjectsController>
        [HttpGet]
        public IEnumerable<ProjectsDTO> Get()
        {
            return _projectService.GetAllProjects();
        }

        // GET api/<ProjectsController>/5
        [HttpGet("{id}")]
        public ActionResult<ProjectsDTO> Get(int id)
        {
            return  _projectService.GetProject(id);
        }

        // POST api/<ProjectsController>
        [HttpPost]
        public int Post(ProjectsDTO projectsDTO)
        {
            _projectService.AddProject(projectsDTO);
            return projectsDTO.Id;
        }
        [Route("GetAllAcceptedProjects")]
        public IEnumerable<ProjectsDTO> GetAllAcceptedProjects()
        {
            return _projectService.GetAllAcceptedProjects();
        }
        [Route("AcceptProject/{ProjectId}")]
        public ActionResult<ProjectsDTO> AcceptProject(int ProjectId)
        {
            _projectService.AcceptProject(ProjectId);
            return CreatedAtAction("Get", new { id = ProjectId });
        }
        // PUT api/<ProjectsController>/5
        [HttpPut("{id}")]
        public ActionResult<ProjectsDTO> Put(int id, ProjectsDTO projectsDTO)
        {
            _projectService.UpdateProject(id, projectsDTO);
            return CreatedAtAction("Get", new { id = projectsDTO.Id }, projectsDTO);

        }

        // DELETE api/<ProjectsController>/5
        [HttpDelete("{id}")]
        public ActionResult<Projects> Delete(int id)
        {
            _projectService.DeleteProject(id);
            return Ok();
        }
    }
}
