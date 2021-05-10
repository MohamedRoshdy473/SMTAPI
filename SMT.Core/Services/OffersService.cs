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
    public class OffersService : IOffersService
    {
        private readonly IUnitOfWork _unitOfWork;

        public OffersService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }
        public int AddOffer(OffersDTO offersDTO)
        {
            _unitOfWork.Offers.Add(offersDTO);
            return offersDTO.Id;
        }

        public void DeleteOffer(int offersDTOId)
        {
            _unitOfWork.Offers.Delete(offersDTOId);
        }

        public OffersDTO GetOffer(int id)
        {
            return _unitOfWork.Offers.Get(id);
        }

        public IEnumerable<OffersDTO> GetAllOffers()
        {
            return _unitOfWork.Offers.GetAll();
        }

        public void UpdateOffer(int offersDTOId, OffersDTO offersDTO)
        {
            _unitOfWork.Offers.Update(offersDTOId, offersDTO);
        }
    }
}
