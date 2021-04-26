﻿using Microsoft.EntityFrameworkCore;
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
        protected readonly SMTDbContext _context;
        private string msg;
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
                    var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                    {
                        Content = new StringContent("Documents Category doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
                        StatusCode = HttpStatusCode.NotFound
                    };
                    throw new HttpResponseException(response);
                }
            }
            catch (Exception ex)
            {
                msg = ex.Message;
            }
        }

        public void Delete(int DocumentsCategoryId)
        {
            var DocumentsCategory = _context.DocumentsCategories.Find(DocumentsCategoryId);
            try
            {
                if (DocumentsCategory != null)
                {
                    _context.DocumentsCategories.Remove(DocumentsCategory);
                    _context.SaveChanges();
                }
                else
                {
                    var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                    {
                        Content = new StringContent("Documents Category doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
                        StatusCode = HttpStatusCode.NotFound
                    };
                    throw new HttpResponseException(response);
                }
            }
            catch (Exception ex)
            {
                msg = ex.Message;
            }
        }

        public DocumentsCategories Get(int id)
        {
            var DocumentsCategory = _context.DocumentsCategories.Find(id);

            if (DocumentsCategory == null)
            {
                var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                {
                    Content = new StringContent("Documents Category doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
                    StatusCode = HttpStatusCode.NotFound
                };
                throw new HttpResponseException(response);
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

            try
            {
                if (DocumentsCategory != null)
                {
                    _context.Entry(DocumentsCategory).State = EntityState.Modified;
                    _context.SaveChanges();
                }
                else
                {
                    var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                    {
                        Content = new StringContent("DocumentsCategory doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
                        StatusCode = HttpStatusCode.NotFound
                    };
                    throw new HttpResponseException(response);
                }
            }
            catch (Exception ex)
            {
                msg = ex.Message;
            }
        }
    }
}
