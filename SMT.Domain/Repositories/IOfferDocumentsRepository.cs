using SMT.Data.DTO;
using SMT.Data.Models.SMTDBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Repositories
{
   public interface IOfferDocumentsRepository
    {
        OfferDocuments Get(int id);
        IEnumerable<OfferDocuments> GetAll();
        void Add(List<OfferDocumentsDTO> offerDocumentsDTO);
        void Delete(int offerDocumentsId);
        void Update(int offerDocumentsId, OfferDocuments offerDocuments);
    }
}
