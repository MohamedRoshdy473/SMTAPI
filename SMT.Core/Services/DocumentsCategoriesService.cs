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
    public class DocumentsCategoriesService : IDocumentsCategoriesService
    {
        private readonly IUnitOfWork _unitOfWork;
        public DocumentsCategoriesService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }
        public void AddDocumentsCategory(DocumentsCategories DocumentsCategory)
        {
            _unitOfWork.DocumentsCategories.Add(DocumentsCategory);
        }

        public void DeleteDocumentsCategory(int DocumentsCategoryId)
        {
            _unitOfWork.DocumentsCategories.Delete(DocumentsCategoryId);
        }

        public IEnumerable<DocumentsCategories> GetAllDocumentsCategories()
        {
           return _unitOfWork.DocumentsCategories.GetAll();
        }

        public DocumentsCategories GetDocumentsCategory(int id)
        {
            return _unitOfWork.DocumentsCategories.Get(id);
        }

        public void UpdateDocumentsCategory(int DocumentsCategoryId, DocumentsCategories DocumentsCategory)
        {
            _unitOfWork.DocumentsCategories.Update(DocumentsCategoryId, DocumentsCategory);
        }
    }
}
