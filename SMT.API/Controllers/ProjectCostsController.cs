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
    public class ProjectCostsController : ControllerBase
    {
        private readonly IProjectCostsService _projectCostsService;

        public ProjectCostsController(IProjectCostsService projectCostsService)
        {
            _projectCostsService = projectCostsService;
        }
        // GET: api/<ProjectCostsController>
        [HttpGet]
        public IEnumerable<ProjectCosts> Get()
        {
            return _projectCostsService.GetAllProjectCosts();
        }

        // GET api/<ProjectCostsController>/5
        [HttpGet("{id}")]
        public ActionResult<ProjectCosts> Get(int id)
        {
            return _projectCostsService.GetProjectCost(id);
        }

        // POST api/<ProjectCostsController>
        [HttpPost]
        public ActionResult<ProjectCosts> Post(ProjectCosts projectCosts)
        {
            _projectCostsService.AddProjectCost(projectCosts);
            return CreatedAtAction("Get", new { id = projectCosts.Id }, projectCosts);
        }

        // PUT api/<ProjectCostsController>/5
        [HttpPut("{id}")]
        public ActionResult<ProjectCosts> Put(int id, ProjectCosts projectCosts)
        {
            _projectCostsService.UpdateProjectCost(id,projectCosts);
            return CreatedAtAction("Get", new { id = projectCosts.Id }, projectCosts);
        }

        // DELETE api/<ProjectCostsController>/5
        [HttpDelete("{id}")]
        public ActionResult<ProjectCosts> Delete(int id)
        {
            _projectCostsService.DeleteProjectCost(id);
            return Ok();
        }
    }
}
