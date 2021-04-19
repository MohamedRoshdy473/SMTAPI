using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
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
    public class ProjectComponentsController : ControllerBase
    {
        private readonly IProjectComponentsService _projectComponentsService;

        public ProjectComponentsController(IProjectComponentsService projectComponentsService)
        {
            _projectComponentsService = projectComponentsService;
        }
        // GET: api/<ProjectComponentsController>
        [HttpGet]
        public IEnumerable<ProjectComponents> Get()
        {
            return _projectComponentsService.GetAllProjectComponents();
        }

        // GET api/<ProjectComponentsController>/5
        [HttpGet("{id}")]
        public ActionResult<ProjectComponents> Get(int id)
        {
            return _projectComponentsService.GetProjectComponent(id);
        }

        // POST api/<ProjectComponentsController>
        [HttpPost]
        public ActionResult<ProjectComponents> Post(ProjectComponents projectComponents)
        {
            _projectComponentsService.AddProjectComponent(projectComponents);

            return CreatedAtAction("Get", new { id = projectComponents.Id }, projectComponents);
        }

        // PUT api/<ProjectComponentsController>/5
        [HttpPut("{id}")]
        public ActionResult<ProjectComponents> Put(int id, ProjectComponents projectComponents)
        {
            try
            {
                _projectComponentsService.UpdateProjectComponent(id, projectComponents);
            }
            catch (DbUpdateConcurrencyException ex)
            {
                string msg = ex.Message;
            }

            return CreatedAtAction("Get", new { id = projectComponents.Id }, projectComponents);
        }

        // DELETE api/<ProjectComponentsController>/5
        [HttpDelete("{id}")]
        public ActionResult<ProjectComponents> Delete(int id)
        {
            try
            {
                _projectComponentsService.DeleteProjectComponent(id);
            }
            catch (DbUpdateConcurrencyException ex)
            {
                string msg = ex.Message;
            }

            return NoContent();
        }
    }
}
