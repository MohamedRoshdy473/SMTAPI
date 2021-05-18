using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SMT.Data.DTO;
using SMT.Data.Models.SMTDBContext;
using SMT.Domain.Repositories;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Core.Repositories
{
    public class DataSheetsRepository : ControllerBase, IDataSheetsRepository
    {
        private readonly SMTDbContext _context;
        public DataSheetsRepository(SMTDbContext context)
        {
            _context = context;
        }
        public IActionResult Add(DataSheetsDTO dataSheetsDTO)
        {
            try
            {

                if (dataSheetsDTO != null)
                {
                    DataSheets dataSheets = new DataSheets();
                    var file = Request.Form.Files[0];
                    var pathToSave = Path.Combine(Directory.GetCurrentDirectory());
                    var fileName = ContentDispositionHeaderValue.Parse(file.ContentDisposition).FileName.Trim('"');
                    var fullPath = Path.Combine(pathToSave, fileName);
                    dataSheets.DocumentLink = fullPath;
                    dataSheets.OfferId = dataSheetsDTO.OfferId;
                    _context.Add(dataSheets);
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
            return Ok();
        }

        public void Delete(int dataSheetsDTOId)
        {
            var dataSheet = _context.DataSheets.Find(dataSheetsDTOId);

            if (dataSheet != null)
            {
                _context.DataSheets.Remove(dataSheet);
                _context.SaveChanges();
            }
            else
            {
                throw new NotExistException("Not Exist Exception");

            }
        }

        public DataSheetsDTO Get(int id)
        {
            var dataSheet = _context.DataSheets.Where(d => d.Id == id).Include(d => d.Offers).FirstOrDefault();
            if (dataSheet == null)
            {
                throw new NotExistException("Not Exist Exception");
            }
            else
            {
                var dataSheetsDTO = new DataSheetsDTO
                {
                    Id= dataSheet.Id,
                    OfferId= dataSheet.OfferId,
                    DocumentLink= dataSheet.DocumentLink
                };
                return dataSheetsDTO;
            }
        }

        public IEnumerable<DataSheetsDTO> GetAll()
        {
            return _context.DataSheets.Select(dataSheet =>
                new DataSheetsDTO
                {
                    Id = dataSheet.Id,
                    OfferId = dataSheet.OfferId,
                    DocumentLink = dataSheet.DocumentLink
                }).ToList();
        }

        public void Update(int dataSheetsDTOId, DataSheetsDTO dataSheetsDTO)
        {
            if (dataSheetsDTOId != dataSheetsDTO.Id)
            {
                throw new NotExistException("Not Exist Exception");
            }
            DataSheets dataSheets = new DataSheets();
            dataSheets.DocumentLink = dataSheetsDTO.DocumentLink;
            dataSheets.OfferId = dataSheetsDTO.OfferId;
            _context.Entry(dataSheets).State = EntityState.Modified;
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
