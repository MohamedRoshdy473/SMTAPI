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
    public class AssignedProjectsController : ControllerBase
    {
        private readonly IAssignedProjectService _assignedProjectService;

        public AssignedProjectsController(IAssignedProjectService assignedProjectService)
        {
            _assignedProjectService = assignedProjectService;
        }
        // GET: api/<AssignedProjectsController>
        [HttpGet]
        public IEnumerable<AssignedProjectDTO> Get()
        {
            return _assignedProjectService.GetAllAssignedProjects();
        }

        // GET api/<AssignedProjectsController>/5
        [HttpGet("{id}")]
        public ActionResult<AssignedProjectDTO> Get(int id)
        {
            return _assignedProjectService.GetAssignedProject(id);
        }

        // POST api/<AssignedProjectsController>
        [HttpPost]
        public ActionResult<AssignedProjectDTO> Post(AssignedProjectDTO assignedProjectDTO)
        {
            _assignedProjectService.AddAssignedProject(assignedProjectDTO);
            return CreatedAtAction("Get", new { id = assignedProjectDTO.Id }, assignedProjectDTO);

        }

        // PUT api/<AssignedProjectsController>/5
        [HttpPut("{id}")]
        public ActionResult<AssignedProjectDTO> Put(int id, AssignedProjectDTO assignedProjectDTO)
        {
            _assignedProjectService.UpdateAssignedProject(id,assignedProjectDTO);
            return CreatedAtAction("Get", new { id = assignedProjectDTO.Id }, assignedProjectDTO);
        }

        // DELETE api/<AssignedProjectsController>/5
        [HttpDelete("{id}")]
        public ActionResult<AssignedProjectDTO> Delete(int id)
        {
            _assignedProjectService.DeleteAssignedProject(id);
            return Ok();
        }
    }
}
