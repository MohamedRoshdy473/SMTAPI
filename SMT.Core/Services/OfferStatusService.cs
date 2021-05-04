using SMT.Data.Models.SMTDBContext;
using SMT.Domain;
using SMT.Domain.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Core.Services
{
    public class OfferStatusService : IOfferStatusService
    {
        private readonly IUnitOfWork _unitOfWork;

        public OfferStatusService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }
        public void AddOfferStatus(OfferStatus offerStatus)
        {
            _unitOfWork.OfferStatus.Add(offerStatus);
        }

        public void DeleteOfferStatus(int offerStatusId)
        {
            _unitOfWork.OfferStatus.Delete(offerStatusId);
        }

        public IEnumerable<OfferStatus> GetAllOfferStatus()
        {
            return _unitOfWork.OfferStatus.GetAll();
        }

        public OfferStatus GetOfferStatus(int id)
        {
            return _unitOfWork.OfferStatus.Get(id);
        }

        public void UpdateOfferStatus(int offerStatusId, OfferStatus offerStatus)
        {
            _unitOfWork.OfferStatus.Update(offerStatusId,offerStatus);
        }
    }
}
