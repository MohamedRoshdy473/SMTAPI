using SMT.Data.Models.SMTDBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Services
{
    public interface IOfferDocumentsService
    {
        OfferDocuments GetOfferDocument(int id);
        IEnumerable<OfferDocuments> GetAllOfferDocuments();
        void AddOfferDocument(OfferDocuments offerDocuments);
        void DeleteOfferDocument(int offerDocumentsId);
        void UpdateOfferDocument(int offerDocumentsId, OfferDocuments offerDocuments);
    }
}
