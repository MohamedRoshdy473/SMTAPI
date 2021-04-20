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
    public class ProjectStatusController : ControllerBase
    {
        private readonly IProjectStatusService _projectStatusService;

        public ProjectStatusController(IProjectStatusService projectStatusService)
        {
            _projectStatusService = projectStatusService;
        }
        // GET: api/<ProjectStatusController>
        [HttpGet]
        public IEnumerable<ProjectStatus> Get()
        {
            return _projectStatusService.GetAllProjectStatus();
        }

        // GET api/<ProjectStatusController>/5
        [HttpGet("{id}")]
        public ActionResult<ProjectStatus> Get(int id)
        {
            return _projectStatusService.GetProjectStatus(id);
        }

        // POST api/<ProjectStatusController>
        [HttpPost]
        public ActionResult<ProjectStatus> Post(ProjectStatus projectStatus)
        {
            _projectStatusService.AddProjectStatus(projectStatus);
            return CreatedAtAction("Get", new { id = projectStatus.Id }, projectStatus);

        }

        // PUT api/<ProjectStatusController>/5
        [HttpPut("{id}")]
        public ActionResult<ProjectStatus> Put(int id, ProjectStatus projectStatus)
        {
            try
            {
                _projectStatusService.UpdateProjectStatus(id, projectStatus);
            }
            catch (DbUpdateConcurrencyException ex)
            {
                string msg = ex.Message;
            }

            return CreatedAtAction("Get", new { id = projectStatus.Id }, projectStatus);
        }

        // DELETE api/<ProjectStatusController>/5
        [HttpDelete("{id}")]
        public ActionResult<ProjectStatus> Delete(int id)
        {
            try
            {
                _projectStatusService.DeleteProjectStatus(id);
            }
            catch (DbUpdateConcurrencyException ex)
            {
                string msg = ex.Message;
            }

            return Ok();
        }
    }
}
