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
    public class ContractorsRepository : IContractorsRepository
    {
        private readonly SMTDbContext _context;
        public ContractorsRepository(SMTDbContext context)
        {
            _context = context;
        }
        public void Add(Contractors Contractor)
        {
            try
            {
                if (Contractor != null)
                {
                    _context.Add(Contractor);
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

        public void Delete(int ContractorId)
        {
            var Contractor = _context.Contractors.Find(ContractorId);

            if (Contractor != null)
            {
                _context.Contractors.Remove(Contractor);
                _context.SaveChanges();
            }
            else
            {
                throw new NotExistException("Not Exist Exception");
            }
        }

        public Contractors Get(int id)
        {
            var Contractor = _context.Contractors.Find(id);

            if (Contractor == null)
            {
                throw new NotExistException("Not Exist Exception");
            }
            else
            {
                return Contractor;

            }
        }

        public IEnumerable<Contractors> GetAll()
        {
            return _context.Contractors.ToList();
        }

        public void Update(int ContractorId, Contractors Contractor)
        {
            if (ContractorId != Contractor.ID)
            {
                throw new NotExistException("Not Exist Exception");
            }
            _context.Entry(Contractor).State = EntityState.Modified;
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
