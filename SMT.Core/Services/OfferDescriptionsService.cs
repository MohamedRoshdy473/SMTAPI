using SMT.Data.DTO;
using SMT.Domain;
using SMT.Domain.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Core.Services
{
    public class OfferDescriptionsService : IOfferDescriptionsService
    {
        private readonly IUnitOfWork _unitOfWork;

        public OfferDescriptionsService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }
        public void AddOfferDescription(OfferDescriptionsDTO offerDescriptionsDTO)
        {
            _unitOfWork.OfferDescriptions.Add(offerDescriptionsDTO);
        }

        public void DeleteOfferDescription(int offerDescriptionsDTOId)
        {
            _unitOfWork.OfferDescriptions.Delete(offerDescriptionsDTOId);
        }

        public OfferDescriptionsDTO GetOfferDescriptions(int id)
        {
           return _unitOfWork.OfferDescriptions.Get(id);
        }

        public IEnumerable<OfferDescriptionsDTO> GetAllOfferDescriptions()
        {
            return _unitOfWork.OfferDescriptions.GetAll();
        }

        public void UpdateOfferDescription(int offerDescriptionsDTOId, OfferDescriptionsDTO offerDescriptionsDTO)
        {
            _unitOfWork.OfferDescriptions.Update(offerDescriptionsDTOId,offerDescriptionsDTO);
        }

        public IEnumerable<OfferDescriptionsDTO> GetAllOfferByUserId(string UserId)
        {
            return _unitOfWork.OfferDescriptions.GetAllOfferByUserId(UserId);
        }

        public IEnumerable<OfferDescriptionsDTO> GetAllOfferByProjectUpdateId(int ProjectUpdateId)
        {
            return _unitOfWork.OfferDescriptions.GetAllOfferByProjectUpdateId(ProjectUpdateId);
        }

    public IEnumerable<OfferDescriptionsDTO> GetAllOfferOfferedByUserId(string UserId)
    {
      return _unitOfWork.OfferDescriptions.GetAllOfferOfferedByUserId(UserId);
    }
  }
}
