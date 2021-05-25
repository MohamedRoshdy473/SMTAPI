using SMT.Data.DTO;
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
    public class OfferDocumentsService : IOfferDocumentsService
    {
        private readonly IUnitOfWork _unitOfWork;

        public OfferDocumentsService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }
        public void AddOfferDocument(List<OfferDocumentsDTO> offerDocumentsDTO)
        {
            _unitOfWork.OfferDocuments.Add(offerDocumentsDTO);
        }

        public void DeleteOfferDocument(int offerDocumentsId)
        {
            _unitOfWork.OfferDocuments.Delete(offerDocumentsId);
        }

        public IEnumerable<OfferDocuments> GetAllOfferDocuments()
        {
            return _unitOfWork.OfferDocuments.GetAll();
        }

        public IEnumerable<OfferDocuments> GetAllOfferDocumentsByOfferId(int OfferId)
        {
            return _unitOfWork.OfferDocuments.GetAllOfferDocumentsByOfferId(OfferId);
        }

        public OfferDocuments GetOfferDocument(int id)
        {
            return _unitOfWork.OfferDocuments.Get(id);
        }

        public void UpdateOfferDocument(int offerDocumentsId, OfferDocuments offerDocuments)
        {
            _unitOfWork.OfferDocuments.Update(offerDocumentsId, offerDocuments);
        }
    }
}
