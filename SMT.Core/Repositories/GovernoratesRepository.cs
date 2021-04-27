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
    public class GovernoratesRepository : IGovernoratesRepository
    {
        private readonly SMTDbContext _context;
        public GovernoratesRepository(SMTDbContext context)
        {
            _context = context;
        }
        public void Add(Governorates Governorate)
        {
            try
            {
                if (Governorate != null)
                {
                    _context.Add(Governorate);
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

        public void Delete(int GovernorateId)
        {
            var Governorate = _context.Governorates.Find(GovernorateId);
            if (Governorate != null)
            {
                _context.Governorates.Remove(Governorate);
                _context.SaveChanges();
            }
            else
            {
                throw new NotExistException("Not Exist Exception");
            }
        }

        public Governorates Get(int id)
        {
            var Governorate = _context.Governorates.Find(id);

            if (Governorate == null)
            {
                throw new NotExistException("Not Exist Exception");
            }
            else
            {
                return Governorate;
            }
        }

        public IEnumerable<Governorates> GetAll()
        {
            return _context.Governorates.ToList();
        }

        public void Update(int GovernorateId, Governorates Governorate)
        {

            if (GovernorateId != Governorate.Id)
            {
                throw new NotExistException("Not Exist Exception");
            }
            _context.Entry(Governorate).State = EntityState.Modified;

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
