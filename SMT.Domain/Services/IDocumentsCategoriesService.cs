using SMT.Data.Models.SMTDBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Services
{
    public interface IDocumentsCategoriesService
    {
        DocumentsCategories GetDocumentsCategory(int id);
        IEnumerable<DocumentsCategories> GetAllDocumentsCategories();
        void AddDocumentsCategory(DocumentsCategories DocumentsCategory);
        void DeleteDocumentsCategory(int DocumentsCategoryId);
        void UpdateDocumentsCategory(int DocumentsCategoryId, DocumentsCategories DocumentsCategory);
    }
}
