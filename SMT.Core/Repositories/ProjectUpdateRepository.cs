using Microsoft.EntityFrameworkCore;
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
    public class ProjectUpdateRepository : IProjectUpdateRepository
    {
        protected readonly SMTDbContext _context;
        private string msg;

        public ProjectUpdateRepository(SMTDbContext context)
        {
            _context = context;
        }
        public int Add(ProjectUpdateDTO ProjectUpdate)
        {
            try
            {
                if (ProjectUpdate != null)
                {
                    ProjectUpdate projectUpdate = new ProjectUpdate();
                    projectUpdate.ProjectId = ProjectUpdate.ProjectId;
                    projectUpdate.DueDate = ProjectUpdate.DueDate;
                    _context.Add(ProjectUpdate);
                    _context.SaveChanges();
                }
                else
                {
                    var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                    {
                        Content = new StringContent("Project Update doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
                        StatusCode = HttpStatusCode.NotFound
                    };
                    throw new HttpResponseException(response);
                }
            }
            catch (Exception ex)
            {
                msg = ex.Message;
            }
            return ProjectUpdate.Id;
        }

        public void Delete(int ProjectUpdateId)
        {
            var ProjectUpdate = _context.projectUpdates.Find(ProjectUpdateId);
            try
            {
                if (ProjectUpdate != null)
                {
                    _context.projectUpdates.Remove(ProjectUpdate);
                    _context.SaveChanges();
                }
                else
                {
                    var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                    {
                        Content = new StringContent("Project Update doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
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

        public ProjectUpdateDTO Get(int id)
        {
            var ProjectUpdate = _context.projectUpdates.Find(id);

            if (ProjectUpdate == null)
            {
                var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                {
                    Content = new StringContent("Project Update doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
                    StatusCode = HttpStatusCode.NotFound
                };
                throw new HttpResponseException(response);
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

        public void Update(int ProjectUpdateId, ProjectUpdateDTO ProjectUpdate)
        {
            try
            {
                if (ProjectUpdate != null)
                {
                    ProjectUpdate projectUpdate = new ProjectUpdate();
                    projectUpdate.ProjectId = ProjectUpdate.ProjectId;
                    projectUpdate.DueDate = ProjectUpdate.DueDate;
                    _context.Entry(projectUpdate).State = EntityState.Modified;
                    _context.SaveChanges();
                }
                else
                {
                    var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                    {
                        Content = new StringContent("Project Update doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
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
    }
}
