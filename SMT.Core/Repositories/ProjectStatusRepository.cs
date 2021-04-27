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
    public class ProjectStatusRepository : IProjectStatusRepository
    {
        protected readonly SMTDbContext _context;

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
                    throw new NotCompletedException("Not Completed Exception");
                }
            }
            catch (Exception)
            {
                throw new NotExistException("Not Exist Exception");
            }
        }

        public void Delete(int ProjectStatusId)
        {
            var projectStatus = _context.ProjectStatus.Find(ProjectStatusId);

            if (projectStatus != null)
            {
                _context.ProjectStatus.Remove(projectStatus);
                _context.SaveChanges();
            }
            else
            {
                throw new NotExistException("Not Exist Exception");
            }
        }

        public ProjectStatus Get(int id)
        {
            var projectStatus = _context.ProjectStatus.Find(id);

            if (projectStatus == null)
            {
                throw new NotExistException("Not Exist Exception");
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
            if (ProjectStatusId != ProjectStatus.Id)
            {
                throw new NotExistException("Not Exist Exception");
            }
            _context.Entry(ProjectStatus).State = EntityState.Modified;
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
