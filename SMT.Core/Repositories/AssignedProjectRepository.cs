using SMT.Data.DTO;
using SMT.Data.Models.SMTDBContext;
using SMT.Domain.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using SMT.Data.Models.HRDBContext;

namespace SMT.Core.Repositories
{
    public class AssignedProjectRepository : IAssignedProjectRepository
    {
        private readonly SMTDbContext _context;
        private readonly HRDBContext _hrContext;

        public AssignedProjectRepository(SMTDbContext context,HRDBContext hrContext)
        {
            _context = context;
            _hrContext = hrContext;
        }
        public void Add(AssignedProjectDTO assignedProjectDTO)
        {
            try
            {
                if (assignedProjectDTO != null)
                {
                    AssignedProject assignedProject = new AssignedProject();
                    assignedProject.Id = assignedProjectDTO.Id;
                    assignedProject.IsAssigned = assignedProjectDTO.IsAssigned;
                    assignedProject.EmployeeId = assignedProjectDTO.EmployeeId;
                    assignedProject.ProjectId = assignedProjectDTO.ProjectId;
                    assignedProject.ProjectUpdateId = assignedProjectDTO.ProjectUpdateId;
                    assignedProject.AssignedProjectDate = DateTime.Now; //assignedProjectDTO.AssignedProjectDate;
                    assignedProject.Description = assignedProjectDTO.Description;
                    _context.AssignedProject.Add(assignedProject);
                    _context.SaveChanges();
                    var projectsDTO = _context.Projects.Where(p => p.Id == assignedProjectDTO.ProjectId).FirstOrDefault();
                    // projectsDTO.ProjectStatus Assigned
                    projectsDTO.ProjectStatusId = 8;
                    _context.Entry(projectsDTO).State = EntityState.Modified;
                    _context.SaveChanges();
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

        public void Delete(int assignedProjectDTOId)
        {
            var assignedProject = _context.AssignedProject.Find(assignedProjectDTOId);

            if (assignedProject != null)
            {
                _context.AssignedProject.Remove(assignedProject);
                _context.SaveChanges();
            }
            else
            {
                throw new NotExistException("Not Exist Exception");
            }
        }

        public AssignedProjectDTO Get(int id)
        {
            var assignedProject = _context.AssignedProject.Where(a => a.Id == id).Include(p => p.projects).Include(p => p.ProjectUpdate.projects).FirstOrDefault();
            if (assignedProject == null)
            {
                throw new NotExistException("Not Exist Exception");
            }
            else
            {
                var assignedProjectDTO = new AssignedProjectDTO
                {
                    Id = assignedProject.Id,
                    IsAssigned = assignedProject.IsAssigned,
                    EmployeeId = assignedProject.EmployeeId,
                    EmployeeName = _hrContext.Employees.Where(e => e.Id == assignedProject.EmployeeId).ToList().FirstOrDefault().Name,
                    ProjectId = assignedProject.ProjectId,
                    ProjectUpdateId = assignedProject.ProjectUpdateId,
                    ProjectName = assignedProject.projects.ProjectName,
                    AssignedProjectDate = assignedProject.AssignedProjectDate,
                    Description = assignedProject.Description
            };
                return assignedProjectDTO;
            }
        }

        public IEnumerable<AssignedProjectDTO> GetAll()
        {
            List<AssignedProjectDTO> assignedProjectDTOs = new List<AssignedProjectDTO>();
            var lstassignedProject=  _context.AssignedProject.Include(p => p.projects).Include(p => p.ProjectUpdate.projects).ToList();
            foreach (var assignedProject in lstassignedProject)
            {
                AssignedProjectDTO assignedProjectDTOObj = new AssignedProjectDTO();
                assignedProjectDTOObj.Id = assignedProject.Id;
                assignedProjectDTOObj.IsAssigned = assignedProject.IsAssigned;
                assignedProjectDTOObj.EmployeeId = assignedProject.EmployeeId;
                assignedProjectDTOObj.EmployeeName = _hrContext.Employees.Where(e => e.Id == assignedProject.EmployeeId).ToList().FirstOrDefault().Name; //assignedProject.Employee.Name,
                assignedProjectDTOObj.ProjectId = assignedProject.ProjectId;
                assignedProjectDTOObj.ProjectUpdateId = assignedProject.ProjectUpdateId;
                assignedProjectDTOObj.ProjectName = assignedProject.projects.ProjectName;
                assignedProjectDTOObj.AssignedProjectDate = assignedProject.AssignedProjectDate;
                assignedProjectDTOObj.Description = assignedProject.Description;
                assignedProjectDTOs.Add(assignedProjectDTOObj);
            }
            return assignedProjectDTOs.OrderByDescending(a => a.AssignedProjectDate);
        }

        public IEnumerable<AssignedProjectDTO> GetAllAssignedProjectsByEmployeeId(int EmployeeId)
        {
            var assignedProjectDTO = _context.AssignedProject.Where(a=>a.EmployeeId==EmployeeId).Include(p => p.ProjectUpdate.projects).Select(assignedProject => new AssignedProjectDTO
            {
                Id = assignedProject.Id,
                IsAssigned = assignedProject.IsAssigned,
                EmployeeId = assignedProject.EmployeeId,
                EmployeeName = assignedProject.Employee.Name,
                ProjectId = assignedProject.ProjectId,
                ProjectUpdateId = assignedProject.ProjectUpdateId,
                ProjectName = assignedProject.projects.ProjectName,
                AssignedProjectDate = assignedProject.AssignedProjectDate,
                Description = assignedProject.Description
            }).ToList();
            return assignedProjectDTO;
        }

        public IEnumerable<AssignedProjectDTO> GetAllAssignedProjectsByProjectId(int ProjectId)
        {

            List<AssignedProjectDTO> assignedProjectDTOs = new List<AssignedProjectDTO>();
            var lstassignedProject = _context.AssignedProject.Where(p=>p.ProjectId==ProjectId).Include(p => p.projects).Include(p => p.ProjectUpdate.projects).ToList();
            foreach (var assignedProject in lstassignedProject)
            {
                AssignedProjectDTO assignedProjectDTOObj = new AssignedProjectDTO();
                assignedProjectDTOObj.Id = assignedProject.Id;
                assignedProjectDTOObj.IsAssigned = assignedProject.IsAssigned;
                assignedProjectDTOObj.EmployeeId = assignedProject.EmployeeId;
                assignedProjectDTOObj.EmployeeName = _hrContext.Employees.Where(e => e.Id == assignedProject.EmployeeId).ToList().FirstOrDefault().Name; //assignedProject.Employee.Name,
                assignedProjectDTOObj.ProjectId = assignedProject.ProjectId;
                assignedProjectDTOObj.ProjectUpdateId = assignedProject.ProjectUpdateId;
                assignedProjectDTOObj.ProjectName = assignedProject.projects.ProjectName;
                assignedProjectDTOObj.AssignedProjectDate = assignedProject.AssignedProjectDate;
                assignedProjectDTOObj.Description = assignedProject.Description;
                assignedProjectDTOs.Add(assignedProjectDTOObj);
            }
            return assignedProjectDTOs.OrderByDescending(a => a.AssignedProjectDate);
        }

        public void Update(int assignedProjectDTOId, AssignedProjectDTO assignedProjectDTO)
        {
            if (assignedProjectDTOId != assignedProjectDTO.Id)
            {
                throw new NotExistException("Not Exist Exception");
            }
            AssignedProject assignedProject = new AssignedProject();
            assignedProject.Id = assignedProjectDTO.Id;
            assignedProject.IsAssigned = true;
            assignedProject.EmployeeId = assignedProject.EmployeeId;
            assignedProject.ProjectId = assignedProjectDTO.ProjectId;
            assignedProject.ProjectUpdateId = assignedProject.ProjectUpdateId;
            assignedProject.AssignedProjectDate = assignedProjectDTO.AssignedProjectDate.ToLocalTime();
            assignedProject.Description = assignedProjectDTO.Description;
            _context.Entry(assignedProject).State = EntityState.Modified;
            try
            {
                _context.SaveChanges();
            }
            catch (Exception)
            {
                throw new NotCompletedException("Not Completed Exception");
            }
        }
    }
}
