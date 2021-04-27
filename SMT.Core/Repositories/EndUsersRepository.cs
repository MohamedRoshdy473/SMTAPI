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
    public class EndUsersRepository : IEndUsersRepository
    {
        private readonly SMTDbContext _context;
        public EndUsersRepository(SMTDbContext context)
        {
            _context = context;
        }
        public void Add(EndUsers EndUser)
        {
            try
            {
                if (EndUser != null)
                {
                    _context.Add(EndUser);
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
        public void Delete(int EndUserId)
        {
            var EndUser = _context.EndUsers.Find(EndUserId);

            if (EndUser != null)
            {
                _context.EndUsers.Remove(EndUser);
                _context.SaveChanges();
            }
            else
            {
                throw new NotExistException("Not Exist Exception");
            }
        }

        public EndUsers Get(int id)
        {
            var EndUser = _context.EndUsers.Find(id);
            if (EndUser == null)
            {
                throw new NotExistException("Not Exist Exception");
            }
            else
            {
                return EndUser;
            }
        }

        public IEnumerable<EndUsers> GetAll()
        {
            return _context.EndUsers.ToList();
        }

        public void Update(int EndUserId, EndUsers EndUser)
        {
            if (EndUserId != EndUser.ID)
            {
                throw new NotExistException("Not Exist Exception");
            }
            _context.Entry(EndUser).State = EntityState.Modified;
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
