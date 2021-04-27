using Microsoft.EntityFrameworkCore;
using SMT.Data.Models.SMTDBContext;
using SMT.Domain.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Web.Http;

namespace SMT.Core.Repositories
{
    public class DocumentsCategoriesRepository : IDocumentsCategoriesRepository
    {
        private readonly SMTDbContext _context;
        public DocumentsCategoriesRepository(SMTDbContext context)
        {
            _context = context;
        }

        public void Add(DocumentsCategories DocumentsCategory)
        {
            try
            {
                if (DocumentsCategory != null)
                {
                    _context.Add(DocumentsCategory);
                    _context.SaveChanges();
                }
                else
                {
                    throw new NotCompletedException("Not Completed Exception");

                }
            }
            catch (Exception)
            {
                throw new NotExistException("Not Exist Exception");
            }
        }

        public void Delete(int DocumentsCategoryId)
        {
            var DocumentsCategory = _context.DocumentsCategories.Find(DocumentsCategoryId);

            if (DocumentsCategory != null)
            {
                _context.DocumentsCategories.Remove(DocumentsCategory);
                _context.SaveChanges();
            }
            else
            {
                throw new NotExistException("Not Exist Exception");
            }
        }

        public DocumentsCategories Get(int id)
        {
            var DocumentsCategory = _context.DocumentsCategories.Find(id);

            if (DocumentsCategory == null)
            {
                throw new NotExistException("Not Exist Exception");
            }
            else
            {
                return DocumentsCategory;
            }
        }
        public IEnumerable<DocumentsCategories> GetAll()
        {
            return _context.DocumentsCategories.ToList();
        }

        public void Update(int DocumentsCategoryId, DocumentsCategories DocumentsCategory)
        {
            if (DocumentsCategoryId != DocumentsCategory.Id)
            {
                throw new NotExistException("Not Exist Exception");
            }
            _context.Entry(DocumentsCategory).State = EntityState.Modified;
            try
            {
                _context.SaveChanges();
            }
            catch (Exception)
            {
                throw new NotCompletedException("Not Completed Exception");
            }
        }
    }
}
