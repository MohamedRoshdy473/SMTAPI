using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SMT.Data.DTO;
using SMT.Data.Models.HRDBContext;
using SMT.Domain.Services;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace SMT.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmployeesController : ControllerBase
    {
        private readonly IEmployeeService _employeeService;

        public EmployeesController(IEmployeeService employeeService)
        {
            _employeeService = employeeService;
        }

        [AllowAnonymous]
        [HttpGet]
        [Route("getImage/{ImageName}")]
        public async Task<IActionResult> ImageGet(string ImageName)
        {
            //ImageName = "#6M@CX79)G77LT&9F&G8^P0XYA2^YNE9J2GO^WCA.jpg";
            //    if (ImageName == null)
            //        return Content("filename not present");
            //    //http://10.10.0.129/HRWeb/api/employees/getImage/1VVQ591JMYN4T1P6TCY1TMIAS01FZYO35XSZG99D.png
            //    var path = Path.Combine(
            //                  "http://10.10.0.129/HRWeb/api/employees/getImage/", ImageName);

            //    var memory = new MemoryStream();
            //    var ext = System.IO.Path.GetExtension(path);
            //    //'D:\SMTAPI\SMT.API\http:\10.10.0.129\TrackerAPI\api\employees\getImage\0FMT896X7TA92RDGFR036N1QBDH1LN3SU1W8Y8E6.jpg
            //    using (var stream = new FileStream(path, FileMode.Open))
            //    {
            //        stream.CopyTo(memory);
            //    }
            //    memory.Position = 0;
            //    var contentType = "APPLICATION/octet-stream";
            //    return File(memory, contentType, Path.GetFileName(path));
            string path = @"D:\SMTAPI\SMT.API\http:\10.10.0.129\TrackerAPI\api\employees\getImage\0FMT896X7TA92RDGFR036N1QBDH1LN3SU1W8Y8E6.jpg";
            string str = path.Substring(path.IndexOf('h'));
            str = str.Replace(@"\", @"/");
            str = str.Insert(5, "/");
            var client = new HttpClient();
            var response = await client.GetAsync(str);
            using (var stream = await response.Content.ReadAsStreamAsync())
            {
                var fileInfo = new FileInfo(Path.GetFileName(path));
                using (var fileStream = fileInfo.OpenWrite())
                {
                    await stream.CopyToAsync(fileStream);
                    var contentType = "APPLICATION/octet-stream";
                    return File(fileStream, contentType, Path.GetFileName(str));
                }
            }

            //    return stream.CopyTo(fileStream);
            //return str;
        }







        // GET: api/<EmployeesController>
        [HttpGet]
        public IEnumerable<EmployeeDTO> Get()
        {
            return _employeeService.GetAllEmployees();
        }
        [Route("GetAllProfessions")]
        public IEnumerable<Profession> GetAllProfessions()
        {
            return _employeeService.GetAllProfessions();
        }
        [Route("GetAllEmployeesByProfessionId/{ProfessionId}")]
        public IEnumerable<EmployeeDTO> GetAllEmployeesByProfessionId(int ProfessionId)
        {
            return _employeeService.GetAllEmployeesByProfessionId(ProfessionId);
        }
        // GET api/<EmployeesController>/5
        [HttpGet("{id}")]
        public EmployeeDTO Get(int id)
        {
            return  _employeeService.GetEmployeeById(id);
        }

        // POST api/<EmployeesController>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<EmployeesController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<EmployeesController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
