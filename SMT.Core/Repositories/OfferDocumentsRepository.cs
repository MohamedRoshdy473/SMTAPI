using Microsoft.EntityFrameworkCore;
using SMT.Data.DTO;
using SMT.Data.Models.SMTDBContext;
using SMT.Domain.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Core.Repositories
{
    public class OfferDocumentsRepository : IOfferDocumentsRepository
    {
        private readonly SMTDbContext _context;

        public OfferDocumentsRepository(SMTDbContext context)
        {
            _context = context;
        }
        public void Add(List<OfferDocumentsDTO> offerDocumentsDTO)
        {
            try
            {
                if (offerDocumentsDTO != null)
                {
                    foreach (var item in offerDocumentsDTO)
                    {
                        OfferDocuments offerDocuments = new OfferDocuments();
                        offerDocuments.Id = item.Id;
                        offerDocuments.DocumentFile = item.DocumentFile;
                        offerDocuments.DocumentName = item.DocumentName;
                        offerDocuments.OfferId = item.OfferId;
                        _context.Add(offerDocuments);
                        _context.SaveChanges();
                    }
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

        public void Delete(int offerDocumentsId)
        {
            var offerDocument = _context.OfferDocuments.Find(offerDocumentsId);

            if (offerDocument != null)
            {
                _context.OfferDocuments.Remove(offerDocument);
                _context.SaveChanges();
            }
            else
            {
                throw new NotExistException("Not Exist Exception");
            }
        }

        public OfferDocuments Get(int id)
        {
            var offerDocument = _context.OfferDocuments.Find(id);

            if (offerDocument == null)
            {
                throw new NotExistException("Not Exist Exception");
            }
            else
            {
                return offerDocument;
            }
        }

        public IEnumerable<OfferDocuments> GetAll()
        {
            return _context.OfferDocuments.ToList();
        }

        public void Update(int offerDocumentsId, OfferDocuments offerDocuments)
        {
            if (offerDocumentsId != offerDocuments.Id)
            {
                throw new NotExistException("Not Exist Exception");
            }
            _context.Entry(offerDocuments).State = EntityState.Modified;

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
