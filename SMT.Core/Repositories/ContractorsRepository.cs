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
        private string msg;

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
                    var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                    {
                        Content = new StringContent("Contractor doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
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

        public void Delete(int ContractorId)
        {
            var Contractor = _context.Contractors.Find(ContractorId);
            try
            {
                if (Contractor != null)
                {
                    _context.Contractors.Remove(Contractor);
                    _context.SaveChanges();
                }
                else
                {
                    var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                    {
                        Content = new StringContent("Contractor doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
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

        public Contractors Get(int id)
        {
            var Contractor = _context.Contractors.Find(id);

            if (Contractor == null)
            {
                var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                {
                    Content = new StringContent("Contractor doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
                    StatusCode = HttpStatusCode.NotFound
                };
                throw new HttpResponseException(response);
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
            try
            {
                if (Contractor != null)
                {
                    _context.Entry(Contractor).State = EntityState.Modified;
                    _context.SaveChanges();
                }
                else
                {
                    var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                    {
                        Content = new StringContent("Contractor doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
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
