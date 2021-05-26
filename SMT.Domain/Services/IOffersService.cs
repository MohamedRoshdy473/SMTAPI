using SMT.Data.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Services
{
    public interface IOffersService
    {
        OffersDTO GetOffer(int id);
        IEnumerable<OffersDTO> GetAllOffers();
        IEnumerable<OffersDTO> GetAllOffersOffered();
        int AddOffer(OffersDTO offersDTO);
        void DeleteOffer(int offersDTOId);
        void UpdateOffer(int offersDTOId, OffersDTO offersDTO);
    }
}
