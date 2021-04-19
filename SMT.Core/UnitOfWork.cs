using SMT.Core.Repositories;
using SMT.Data.Models.SMTDBContext;
using SMT.Domain;
using SMT.Domain.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Core
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly SMTDbContext _context;
        private  ProjectComponentsRepository _projectComponentsRepository;

        public UnitOfWork(SMTDbContext context)
        {
            _context = context;
        }
        public IProjectComponentsRepository projectComponentsRepository => new ProjectComponentsRepository(_context);

        public int CommitAsync()
        {
            return _context.SaveChanges();
        }
        private bool disposed = false;
        protected virtual void Dispose(bool disposing)
        {
            if (!this.disposed)
            {
                if (disposing)
                {
                    _context.Dispose();
                }
            }
            this.disposed = true;
        }
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        public IProjectComponentsRepository projectComponents => _projectComponentsRepository = _projectComponentsRepository ?? new ProjectComponentsRepository(_context);

    }
}
