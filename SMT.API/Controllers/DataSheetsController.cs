using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SMT.Core;
using SMT.Data.DTO;
using SMT.Data.Models.SMTDBContext;
using SMT.Domain.Services;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http.Headers;
using System.Threading.Tasks;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace SMT.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DataSheetsController : ControllerBase
    {
        private readonly IDataSheetsService _dataSheetsService;
        private readonly SMTDbContext _context;

        public DataSheetsController(IDataSheetsService dataSheetsService,SMTDbContext context)
        {
            _dataSheetsService = dataSheetsService;
            _context = context;
        }
        // GET: api/<DataSheetsController>
        [HttpGet]
        public IEnumerable<DataSheetsDTO> Get()
        {
            return _dataSheetsService.GetAllDataSheets();
        }

        // GET api/<DataSheetsController>/5
        [HttpGet("{id}")]
        public ActionResult<DataSheetsDTO> Get(int id)
        {
            return _dataSheetsService.GetDataSheet(id);
        }
        //[HttpPost, DisableRequestSizeLimit]
        //[Route("Uploadfile")]
        //public IActionResult Upload()
        //{
        //    try
        //    {
        //        var file = Request.Form.Files[0];
        //        var folderName = "F://desktop/";
        //        //http://localhost:57910/wwwroot/documentFiles/CleanArch.txt
        //        var pathToSave = Path.Combine(Directory.GetCurrentDirectory(), folderName);
        //        if (file.Length > 0)
        //        {
        //            var fileName = ContentDispositionHeaderValue.Parse(file.ContentDisposition).FileName.Trim('"');
        //            var fullPath = Path.Combine(pathToSave, fileName);
        //            //  var dbPath = Path.Combine(folderName, fileName);

        //            return Ok(new { fullPath });
        //        }
        //        else
        //        {
        //            return BadRequest();
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        return StatusCode(500, $"Internal server error: {ex}");
        //    }
        //}
        // POST api/<DataSheetsController>
        [HttpPost]
        public ActionResult<DataSheetsDTO> Post(DataSheetsDTO dataSheetsDTO)
        {
            _dataSheetsService.AddDataSheet(dataSheetsDTO);
            return CreatedAtAction("Get", new { id = dataSheetsDTO.Id }, dataSheetsDTO);
        }

        // PUT api/<DataSheetsController>/5
        [HttpPut("{id}")]
        public ActionResult<DataSheetsDTO> Put(int id, DataSheetsDTO dataSheetsDTO)
        {
            _dataSheetsService.UpdateDataSheet(id,dataSheetsDTO);
            return CreatedAtAction("Get", new { id = dataSheetsDTO.Id }, dataSheetsDTO);
        }

        // DELETE api/<DataSheetsController>/5
        [HttpDelete("{id}")]
        public ActionResult<DataSheetsDTO> Delete(int id)
        {
            _dataSheetsService.DeleteDataSheet(id);
            return Ok();
        }
        [HttpPost, DisableRequestSizeLimit]
        [Route("Uploadfile")]
        public IActionResult Upload()
        {
            try
            {
                var file = Request.Form.Files[0];
                var folderName = Path.Combine("wwwroot", "DataSheets");
                var pathToSave = Path.Combine(Directory.GetCurrentDirectory(), folderName);

                if (file.Length > 0)
                {
                    var fileName = ContentDispositionHeaderValue.Parse(file.ContentDisposition).FileName.Trim('"');
                    var fullPath = Path.Combine(pathToSave, fileName);
                    var dbPath = Path.Combine(folderName, fileName);

                    using (var stream = new FileStream(fullPath, FileMode.Create))
                    {
                        file.CopyTo(stream);
                    }

                    return Ok(new { dbPath });
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
        [AllowAnonymous]
        [HttpGet]
        [Route("GetDocument/{docName}")]
        public IActionResult GetDocument(string docName)
        {
            if (docName == null)
                return Content("filename not present");

            var path = Path.Combine(
                           Directory.GetCurrentDirectory(),
                           "wwwroot/DataSheets", docName);

            var memory = new MemoryStream();
            var ext = System.IO.Path.GetExtension(path);
            using (var stream = new FileStream(path, FileMode.Open))
            {
                stream.CopyTo(memory);
            }
            memory.Position = 0;
            var contentType = "APPLICATION/octet-stream";
            return File(memory, contentType, Path.GetFileName(path));
        }
    }
}
