using Microsoft.AspNetCore.Http;
using Microsoft.EntityFrameworkCore;
using SMT.Data.DTO;
using SMT.Data.Models.SMTDBContext;
using SMT.Data.ViewModels;
using SMT.Domain.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Web.Http;

namespace SMT.Core.Repositories
{
    public class ProjectUpdateRepository : IProjectUpdateRepository
    {
        protected readonly SMTDbContext _context;
        public ProjectUpdateRepository(SMTDbContext context)
        {
            _context = context;
        }
        public int Add(ProjectUpdateDTO ProjectUpdateDTO)
        {
            try
            {
                if (ProjectUpdateDTO != null)
                {
                    ProjectUpdate projectUpdate = new ProjectUpdate();
                    projectUpdate.Id = ProjectUpdateDTO.Id;
                    projectUpdate.ProjectId = ProjectUpdateDTO.ProjectId;
                    projectUpdate.DueDate = ProjectUpdateDTO.DueDate;
                    _context.Add(projectUpdate);
                    _context.SaveChanges();
                    ProjectUpdateDTO.Id = projectUpdate.Id;
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
            return ProjectUpdateDTO.Id;
        }

        public void Delete(int ProjectUpdateId)
        {
            var ProjectUpdate = _context.projectUpdates.Find(ProjectUpdateId);

            if (ProjectUpdate != null)
            {
                _context.projectUpdates.Remove(ProjectUpdate);
                _context.SaveChanges();
            }
            else
            {
                throw new NotExistException("Not Exist Exception");
            }
        }
    
        public ProjectUpdateDTO Get(int id)
        {
            var ProjectUpdate = _context.projectUpdates.Include(p=>p.projects).FirstOrDefault(p=>p.Id==id);

            if (ProjectUpdate == null)
            {
                throw new NotExistException("Not Exist Exception");
            }
            else
            {
                var ProjectUpdateDTO = new ProjectUpdateDTO
                {
                    Id = ProjectUpdate.Id,
                    ProjectId = ProjectUpdate.ProjectId,
                    ProjectName = ProjectUpdate.projects.ProjectName,
                    DueDate = ProjectUpdate.DueDate,

                };
                return ProjectUpdateDTO;
            }
        }

        public IEnumerable<ProjectUpdateDTO> GetAll()
        {
            var projectUpdates = _context.projectUpdates.Select(ProjectUpdate => new ProjectUpdateDTO
            {
                Id = ProjectUpdate.Id,
                ProjectId = ProjectUpdate.ProjectId,
                ProjectName = ProjectUpdate.projects.ProjectName,
                DueDate = ProjectUpdate.DueDate,
            }).ToList();
            return projectUpdates;
        }

        public void Update(int ProjectUpdateId, ProjectUpdateDTO projectUpdateDTO)
        {
            if (ProjectUpdateId != projectUpdateDTO.Id)
            {
                throw new NotExistException("Not Exist Exception");
            }
            ProjectUpdate projectUpdate = new ProjectUpdate();
            projectUpdate.Id = projectUpdateDTO.Id;
            projectUpdate.ProjectId = projectUpdateDTO.ProjectId;
            projectUpdate.DueDate = projectUpdateDTO.DueDate;

            try
            {
                _context.Entry(projectUpdate).State = EntityState.Modified;
                _context.SaveChanges();
            }
            catch (Exception)
            {
                throw new NotCompletedException("Not Completed Exception");
            }

        }
    }
}
