using SMT.Data.DTO;
using SMT.Data.Models.SMTDBContext;
using SMT.Domain.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace SMT.Core.Repositories
{
    public class AssignedProjectRepository : IAssignedProjectRepository
    {
        private readonly SMTDbContext _context;

        public AssignedProjectRepository(SMTDbContext context)
        {
            _context = context;
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
                    assignedProject.AssignedProjectDate = assignedProjectDTO.AssignedProjectDate;
                    assignedProject.Description = assignedProjectDTO.Description;
                    _context.AssignedProject.Add(assignedProject);
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
            var assignedProject = _context.AssignedProject.Where(a => a.Id == id).Include(p => p.ProjectUpdate.projects).FirstOrDefault();
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
                    EmployeeName = assignedProject.Employee.Name,
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
            var assignedProjectDTO = _context.AssignedProject.Include(p => p.ProjectUpdate.projects).Select(assignedProject => new AssignedProjectDTO
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
            assignedProject.AssignedProjectDate = assignedProjectDTO.AssignedProjectDate;
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
