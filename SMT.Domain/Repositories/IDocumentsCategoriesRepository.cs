using SMT.Data.Models.SMTDBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Repositories
{
    public interface IDocumentsCategoriesRepository
    {
        DocumentsCategories Get(int id);
        IEnumerable<DocumentsCategories> GetAll();
        void Add(DocumentsCategories DocumentsCategory);
        void Delete(int DocumentsCategoryId);
        void Update(int DocumentsCategoryId, DocumentsCategories DocumentsCategory);
    }
}
