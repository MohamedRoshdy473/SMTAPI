using SMT.Data.Models.SMTDBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Repositories
{
    public interface IOfferStatusRepository
    {
        OfferStatus Get(int id);
        IEnumerable<OfferStatus> GetAll();
        void Add(OfferStatus offerStatus);
        void Delete(int offerStatusId);
        void Update(int offerStatusId, OfferStatus offerStatus);
    }
}
