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
                    throw new NotCompletedException("Not Completed Exception");
                }
            }
            catch (Exception)
            {
                throw new NotExistException("Not Exist Exception");
            }
        }

        public void Delete(int ProjectComponentId)
        {
            var ProjectComponent = _context.ProjectComponents.Find(ProjectComponentId);

            if (ProjectComponent != null)
            {
                _context.ProjectComponents.Remove(ProjectComponent);
                _context.SaveChanges();
            }
            else
            {
                throw new NotExistException("Not Exist Exception");
            }
        }

        public ProjectComponents Get(int id)
        {
            var ProjectComponent = _context.ProjectComponents.Find(id);

            if (ProjectComponent == null)
            {
                throw new NotExistException("Not Exist Exception");
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
            if (ProjectComponentId != ProjectComponent.Id)
            {
                throw new NotExistException("Not Exist Exception");
            }
            _context.Entry(ProjectComponent).State = EntityState.Modified;

            try
            {
                _context.SaveChanges();
            }
            catch (Exception ex)
            {
                throw new NotCompletedException("Not Completed Exception");
            }
        }
    }
}

