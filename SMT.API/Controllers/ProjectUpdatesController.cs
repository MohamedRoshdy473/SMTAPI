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
    public class ProjectUpdatesController : ControllerBase
    {
        private readonly IProjectUpdateService _projectUpdateService;

        public ProjectUpdatesController(IProjectUpdateService projectUpdateService)
        {
            _projectUpdateService = projectUpdateService;
        }
        // GET: api/<ProjectUpdatesController>
        [HttpGet]
        public IEnumerable<ProjectUpdateDTO> Get()
        {
            return _projectUpdateService.GetAllProjectUpdates();
        }

        // GET api/<ProjectUpdatesController>/5
        [HttpGet("{id}")]
        public ActionResult<ProjectUpdateDTO> Get(int id)
        {
            return _projectUpdateService.GetProjectUpdate(id);
        }

        // POST api/<ProjectUpdatesController>
        [HttpPost]
        public int Post(ProjectUpdateDTO projectUpdateDTO)
        {
            _projectUpdateService.AddProjectUpdate(projectUpdateDTO);
            return projectUpdateDTO.Id;
        }

        // PUT api/<ProjectUpdatesController>/5
        [HttpPut("{id}")]
        public ActionResult<ProjectUpdateDTO> Put(int id, ProjectUpdateDTO projectUpdateDTO)
        {
            _projectUpdateService.EditProjectUpdate(id, projectUpdateDTO);
            return CreatedAtAction("Get", new { id = projectUpdateDTO.Id }, projectUpdateDTO);
        }

        // DELETE api/<ProjectUpdatesController>/5
        [HttpDelete("{id}")]
        public ActionResult<ProjectUpdateDTO> Delete(int id)
        {
            _projectUpdateService.DeleteProjectUpdate(id);
            return Ok();
        }
    }
}
