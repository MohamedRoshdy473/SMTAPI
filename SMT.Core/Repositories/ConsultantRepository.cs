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
    public class ConsultantRepository : IConsultantRepository
    {
        private readonly SMTDbContext _context;

        public ConsultantRepository(SMTDbContext context)
        {
            _context = context;
        }
        public void Add(Consultant consultant)
        {

            try
            {
                if (consultant != null)
                {
                    _context.Add(consultant);
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

        public void Delete(int consultantId)
        {
            var consultant = _context.Consultant.Find(consultantId);

            if (consultant != null)
            {
                _context.Consultant.Remove(consultant);
                _context.SaveChanges();
            }
            else
            {
                throw new NotExistException("Not Exist Exception");
            }
        }

        public Consultant Get(int id)
        {
            var consultant = _context.Consultant.Find(id);
            if (consultant == null)
            {
                throw new NotExistException("Not Exist Exception");
            }
            else
            {
                return consultant;
            }
        }

        public IEnumerable<Consultant> GetAll()
        {
            return _context.Consultant.ToList();
        }

        public void Update(int consultantId, Consultant consultant)
        {
            if (consultantId != consultant.ID)
            {
                throw new NotExistException("Not Exist Exception");
            }
            _context.Entry(consultant).State = EntityState.Modified;
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
