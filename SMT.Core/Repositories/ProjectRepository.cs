using SMT.Data.DTO;
using SMT.Data.Models.SMTDBContext;
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
    public class ProjectRepository : IProjectRepository
    {
        protected readonly SMTDbContext _context;
        private string msg;
        public ProjectRepository(SMTDbContext context)
        {
            _context = context;
        }
        public void Add(ProjectsDTO projectsDTO)
        {
            try
            {
                if (projectsDTO != null)
                {
                    Projects project = new Projects();
                    project.Id = projectsDTO.Id;
                    project.ProjectName = projectsDTO.ProjectName;
                    project.ProjectCreationDate = projectsDTO.ProjectCreationDate;
                    project.Rank = projectsDTO.Rank;
                    project.ProjectComponentsId = projectsDTO.ProjectComponentsId;
                    project.ProjectStatusId = projectsDTO.ProjectStatusId;
                    project.EndUsersId = projectsDTO.EndUsersId;
                    project.ContractorsId = projectsDTO.ContractorsId;
                    _context.Add(project);
                    _context.SaveChanges();
                }
                else
                {
                    var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                    {
                        Content = new StringContent("Project  doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
                        StatusCode = HttpStatusCode.NotFound
                    };
                    throw new HttpResponseException(response);
                }
            }
            catch (Exception ex)
            {
                msg = ex.Message;
            }
        }

        public void Delete(int projectsDTOId)
        {
            var Project = _context.Projects.Find(projectsDTOId);
            try
            {
                if (Project != null)
                {
                    _context.Projects.Remove(Project);
                    _context.SaveChanges();
                }
                else
                {
                    var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                    {
                        Content = new StringContent("Project doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
                        StatusCode = HttpStatusCode.NotFound
                    };
                    throw new HttpResponseException(response);
                }
            }
            catch (Exception ex)
            {
                msg = ex.Message;
            }
        }

        public ProjectsDTO Get(int id)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<ProjectsDTO> GetAll()
        {
            throw new NotImplementedException();
        }

        public void Update(int projectsDTOId, ProjectsDTO projectsDTO)
        {
            throw new NotImplementedException();
        }
    }
}
