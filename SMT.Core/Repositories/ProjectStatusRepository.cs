using Microsoft.EntityFrameworkCore;
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
    public class ProjectStatusRepository: IProjectStatusRepository
    {
        protected readonly SMTDbContext _context;
        private string msg;

        public ProjectStatusRepository(SMTDbContext context)
        {
            _context = context;
        }

        public void Add(ProjectStatus ProjectStatus)
        {
            try
            {
                if (ProjectStatus != null)
                {
                    _context.Add(ProjectStatus);
                    _context.SaveChanges();
                }
                else
                {
                    var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                    {
                        Content = new StringContent("Project Status doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
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

        public void Delete(int ProjectStatusId)
        {
            var projectStatus = _context.ProjectStatus.Find(ProjectStatusId);
            try
            {
                if (projectStatus != null)
                {
                    _context.ProjectStatus.Remove(projectStatus);
                    _context.SaveChanges();
                }
                else
                {
                    var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                    {
                        Content = new StringContent("Project Status doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
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

        public ProjectStatus Get(int id)
        {
            var projectStatus = _context.ProjectStatus.Find(id);

            if (projectStatus == null)
            {
                var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                {
                    Content = new StringContent("Project Status doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
                    StatusCode = HttpStatusCode.NotFound
                };
                throw new HttpResponseException(response);
            }
            else
            {
                return projectStatus;

            }
        }

        public IEnumerable<ProjectStatus> GetAll()
        {
            return _context.ProjectStatus.ToList();
        }

        public void Update(int ProjectStatusId, ProjectStatus ProjectStatus)
        {
            try
            {
                if (ProjectStatus != null)
                {
                    _context.Entry(ProjectStatus).State = EntityState.Modified;
                    _context.SaveChanges();
                }
                else
                {
                    var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                    {
                        Content = new StringContent("Project Status doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
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
