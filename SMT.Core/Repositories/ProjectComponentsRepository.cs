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
    public class ProjectComponentsRepository : IProjectComponentsRepository
    {
        protected readonly SMTDbContext _context;
        private string msg;

        public ProjectComponentsRepository(SMTDbContext context)
        {
            _context = context;
        }
        public void Add(ProjectComponents ProjectComponent)
        {
            try
            {
                if (ProjectComponent != null)
                {
                    _context.Add(ProjectComponent);
                    _context.SaveChanges();
                }
                else
                {
                    var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                    {
                        Content = new StringContent("ProjectComponent doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
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

        public void Delete(int ProjectComponentId)
        {
            var ProjectComponent = _context.ProjectComponents.Find(ProjectComponentId);
            try
            {
                if (ProjectComponent != null)
                {
                    _context.ProjectComponents.Remove(ProjectComponent);
                    _context.SaveChanges();
                }
                else
                {
                    var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                    {
                        Content = new StringContent("Project Component doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
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

        public ProjectComponents Get(int id)
        {
            var ProjectComponent = _context.ProjectComponents.Find(id);

            if (ProjectComponent == null)
            {
                var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                {
                    Content = new StringContent("Project Component doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
                    StatusCode = HttpStatusCode.NotFound
                };
                throw new HttpResponseException(response);
            }
            else
            {
                return ProjectComponent;

            }
        }

        public IEnumerable<ProjectComponents> GetAll()
        {
            return _context.ProjectComponents.ToList();
        }

        public void Update(int ProjectComponentId, ProjectComponents ProjectComponent)
        {
            try
            {
                if (ProjectComponent != null)
                {
                    _context.Entry(ProjectComponent).State = EntityState.Modified;
                    _context.SaveChanges();
                }
                else
                {
                    var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                    {
                        Content = new StringContent("Project Component doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
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
