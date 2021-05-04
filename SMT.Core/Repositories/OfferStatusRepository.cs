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
    public class OfferStatusRepository : IOfferStatusRepository
    {
        private readonly SMTDbContext _context;

        public OfferStatusRepository(SMTDbContext context)
        {
            _context = context;
        }
        public void Add(OfferStatus offerStatus)
        {
            try
            {
                if (offerStatus != null)
                {
                    _context.Add(offerStatus);
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

        public void Delete(int offerStatusId)
        {
            var offerStatus = _context.OfferStatus.Find(offerStatusId);

            if (offerStatus != null)
            {
                _context.OfferStatus.Remove(offerStatus);
                _context.SaveChanges();
            }
            else
            {
                throw new NotExistException("Not Exist Exception");
            }
        }

        public OfferStatus Get(int id)
        {
            var offerStatus = _context.OfferStatus.Find(id);

            if (offerStatus == null)
            {
                throw new NotExistException("Not Exist Exception");
            }
            else
            {
                return offerStatus;
            }
        }

        public IEnumerable<OfferStatus> GetAll()
        {
            return _context.OfferStatus.ToList();
        }

        public void Update(int offerStatusId, OfferStatus offerStatus)
        {
            if (offerStatusId != offerStatus.Id)
            {
                throw new NotExistException("Not Exist Exception");
            }
            _context.Entry(offerStatus).State = EntityState.Modified;
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
