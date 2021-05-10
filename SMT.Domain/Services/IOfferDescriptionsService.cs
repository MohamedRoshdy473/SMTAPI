using SMT.Data.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Services
{
    public interface IOfferDescriptionsService
    {
        OfferDescriptionsDTO GetOfferDescriptions(int id);
        IEnumerable<OfferDescriptionsDTO> GetAllOfferDescriptions();
        void AddOfferDescription(OfferDescriptionsDTO offerDescriptionsDTO);
        void DeleteOfferDescription(int offerDescriptionsDTOId);
        void UpdateOfferDescription(int offerDescriptionsDTOId, OfferDescriptionsDTO offerDescriptionsDTO);
    }
}
