using SMT.Data.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Repositories
{
    public interface IOfferDescriptionsRepository
    {
        OfferDescriptionsDTO Get(int id);
        IEnumerable<OfferDescriptionsDTO> GetAll();
        IEnumerable<OfferDescriptionsDTO> GetAllOfferByUserId(string UserId);
        IEnumerable<OfferDescriptionsDTO> GetAllOfferOfferedByUserId(string UserId);
        IEnumerable<OfferDescriptionsDTO> GetAllOfferByProjectUpdateId(int ProjectUpdateId);
        void Add(OfferDescriptionsDTO offerDescriptionsDTO);
        void Delete(int offerDescriptionsDTOId);
        void Update(int offerDescriptionsDTOId, OfferDescriptionsDTO offerDescriptionsDTO);
    }
}
