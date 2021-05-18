using Microsoft.EntityFrameworkCore;
using SMT.Data.DTO;
using SMT.Data.Models.SMTDBContext;
using SMT.Domain.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Core.Repositories
{
    public class ProjectSystemsRepository : IProjectSystemsRepository
    {
        private readonly SMTDbContext _context;

        public ProjectSystemsRepository(SMTDbContext context)
        {
            _context = context;
        }
        public void Add(ProjectSystemsDTO projectSystemsDTO)
        {

            try
            {
                if (projectSystemsDTO != null)
                {
                    foreach (var item in projectSystemsDTO.LstprojectComponents)
                    {
                        ProjectSystems projectSystems = new ProjectSystems();
                        projectSystems.ProjectComponentsId = item.Id;
                        projectSystems.ProjectId = projectSystemsDTO.ProjectId;
                        _context.Add(projectSystems);
                        _context.SaveChanges();
                    }
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

        public void Delete(int projectSystemsDTOId)
        {
            var projectSystems = _context.ProjectSystems.Find(projectSystemsDTOId);

            if (projectSystems != null)
            {
                _context.ProjectSystems.Remove(projectSystems);
                _context.SaveChanges();
            }
            else
            {
                throw new NotExistException("Not Exist Exception");
            }
        }

        public ProjectSystemsDTO Get(int id)
        {
            var projectSystems = _context.ProjectSystems.Include(p => p.projects).Include(p => p.ProjectComponents).Where(p => p.Id == id).FirstOrDefault();

            if (projectSystems == null)
            {
                throw new NotExistException("Not Exist Exception");
            }
            else
            {
                var projectSystemsDTO = new ProjectSystemsDTO
                {
                    Id = projectSystems.Id,

                    ProjectId = projectSystems.ProjectId,
                    ProjectName = projectSystems.projects.ProjectName,
                    ProjectComponentsId = projectSystems.ProjectComponentsId,
                    ProjectComponentName = projectSystems.ProjectComponents.ProjectComponentName

                };
                return projectSystemsDTO;
            }
            throw new NotImplementedException();
        }

        public IEnumerable<ProjectSystemsDTO> GetAll()
        {
            var projectSystems = _context.ProjectSystems.Include(p => p.projects).Include(p => p.ProjectComponents).Select(
               projectSystems => new ProjectSystemsDTO
               {
                   Id = projectSystems.Id,

                   ProjectId = projectSystems.ProjectId,
                   ProjectName = projectSystems.projects.ProjectName,
                   ProjectComponentsId = projectSystems.ProjectComponentsId,
                   ProjectComponentName = projectSystems.ProjectComponents.ProjectComponentName

               }).ToList();
            return projectSystems;
        }

        public void Update(int projectSystemsDTOId, ProjectSystemsDTO projectSystemsDTO)
        {
            throw new NotImplementedException();
        }
    }
}
