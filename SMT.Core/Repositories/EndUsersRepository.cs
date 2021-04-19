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
    public class EndUsersRepository: IEndUsersRepository
    {
        private readonly SMTDbContext _context;
        private string msg;

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
                    var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                    {
                        Content = new StringContent("EndUser doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
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

        public void Delete(int EndUserId)
        {
            var EndUser = _context.EndUsers.Find(EndUserId);
            try
            {
                if (EndUser != null)
                {
                    _context.EndUsers.Remove(EndUser);
                    _context.SaveChanges();
                }
                else
                {
                    var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                    {
                        Content = new StringContent("End User doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
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

        public EndUsers Get(int id)
        {
            var EndUser = _context.EndUsers.Find(id);

            if (EndUser == null)
            {
                var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                {
                    Content = new StringContent("End User doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
                    StatusCode = HttpStatusCode.NotFound
                };
                throw new HttpResponseException(response);
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
            try
            {
                if (EndUser != null)
                {
                    _context.Entry(EndUser).State = EntityState.Modified;
                    _context.SaveChanges();
                }
                else
                {
                    var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                    {
                        Content = new StringContent("End User doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
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
