using Microsoft.EntityFrameworkCore;
using SMT.Data.Models.SMTDBContext;
using SMT.Domain.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Core.Repositories
{
    public class ProjectCostsRepository : IProjectCostsRepository
    {
        private readonly SMTDbContext _context;

        public ProjectCostsRepository(SMTDbContext context)
        {
            _context = context;
        }
        public void Add(ProjectCosts projectCost)
        {
            try
            {
                if (projectCost != null)
                {
                    _context.Add(projectCost);
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

        public void Delete(int projectCostId)
        {
            var projectCost = _context.ProjectCosts.Find(projectCostId);

            if (projectCost != null)
            {
                _context.ProjectCosts.Remove(projectCost);
                _context.SaveChanges();
            }
            else
            {
                throw new NotExistException("Not Exist Exception");
            }
        }

        public ProjectCosts Get(int id)
        {
            var projectCost = _context.ProjectCosts.Find(id);

            if (projectCost == null)
            {
                throw new NotExistException("Not Exist Exception");
            }
            else
            {
                return projectCost;
            }
        }
        public IEnumerable<ProjectCosts> GetAll()
        {
            return _context.ProjectCosts.ToList();

        }
        public void Update(int projectCostId, ProjectCosts projectCost)
        {
            if (projectCostId != projectCost.Id)
            {
                throw new NotExistException("Not Exist Exception");
            }
            _context.Entry(projectCost).State = EntityState.Modified;
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
