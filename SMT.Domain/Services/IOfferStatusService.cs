using SMT.Data.Models.SMTDBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Services
{
    public interface IOfferStatusService
    {
        OfferStatus GetOfferStatus(int id);
        IEnumerable<OfferStatus> GetAllOfferStatus();
        void AddOfferStatus(OfferStatus offerStatus);
        void DeleteOfferStatus(int offerStatusId);
        void UpdateOfferStatus(int offerStatusId, OfferStatus offerStatus);
    }
}
