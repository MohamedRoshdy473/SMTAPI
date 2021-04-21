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
        private string msg;

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
                    var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                    {
                        Content = new StringContent("Governorate doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
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

        public void Delete(int GovernorateId)
        {
            var Governorate = _context.Governorates.Find(GovernorateId);
            try
            {
                if (Governorate != null)
                {
                    _context.Governorates.Remove(Governorate);
                    _context.SaveChanges();
                }
                else
                {
                    var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                    {
                        Content = new StringContent("Governorate doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
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

        public Governorates Get(int id)
        {
            var Governorate = _context.Governorates.Find(id);

            if (Governorate == null)
            {
                var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                {
                    Content = new StringContent("Governorate doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
                    StatusCode = HttpStatusCode.NotFound
                };
                throw new HttpResponseException(response);
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
            try
            {
                if (Governorate != null)
                {
                    _context.Entry(Governorate).State = EntityState.Modified;
                    _context.SaveChanges();
                }
                else
                {
                    var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                    {
                        Content = new StringContent("Governorate doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
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
