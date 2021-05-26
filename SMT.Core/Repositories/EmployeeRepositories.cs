using Microsoft.EntityFrameworkCore;
using SMT.Data.DTO;
using SMT.Data.Models.HRDBContext;
using SMT.Domain.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Core.Repositories
{
   public class EmployeeRepositories : IEmployeeRepository
    {
        private readonly HRDBContext _context;

        public EmployeeRepositories(HRDBContext context)
        {
            _context = context;
        }

        public IEnumerable<EmployeeDTO> GetAllEmployeesByProfessionId(int ProfessionId)
        {
            var emps = _context.Employees.Where(e=>e.ProfessionId== ProfessionId).Include(e => e.Profession).Include(e => e.Position).Include(e => e.Positionlevel).Select(e => new EmployeeDTO
            {
                ID = e.Id,
                Name = e.Name,
                ProfessionName = e.Profession.Name,
                GraduatioYear = e.GraduatioYear,
                Address = e.Address,
                Code = e.Code,
                DateOfBirth = e.DateOfBirth,
                Email = e.Email,
                gender = e.Gender,
                HiringDateHiringDate = e.HiringDateHiringDate,
                MaritalStatus = e.MaritalStatus,
                Phone = e.Phone,
                RelevantPhone = e.RelevantPhone,
                Photo = e.Photo,
                EmailCompany = e.EmailCompany,
                Mobile = e.Mobile,
                NationalId = e.NationalId,
                PositionId = e.PositionId,
                PositionlevelId = e.PositionlevelId,
            }).ToList();
            return emps;
        }

        public IEnumerable<EmployeeDTO> GetAllEmployeesDTO()
        {
            var emps = _context.Employees.Include(e=>e.Profession).Include(e => e.Position).Include(e => e.Positionlevel).Select(e => new EmployeeDTO
            {
                ID = e.Id,
                Name = e.Name,
                ProfessionName = e.Profession.Name,
                GraduatioYear = e.GraduatioYear,
                Address = e.Address,
                Code = e.Code,
                DateOfBirth = e.DateOfBirth,
                Email = e.Email,
                gender = e.Gender,
                HiringDateHiringDate = e.HiringDateHiringDate,
                MaritalStatus = e.MaritalStatus,
                Phone = e.Phone,
                RelevantPhone = e.RelevantPhone,
                Photo = e.Photo,
                EmailCompany = e.EmailCompany,
                Mobile = e.Mobile,
                NationalId = e.NationalId,
                //FacultyDepartmentName = e.FacultyDepartment.FacultyDepartmentName,
                //FacultyDepartmentId = (int)e.FacultyDepartmentId,
                //FacultyName = e.FacultyDepartment.Faculty.FacultyName,
                //UniversityName = e.FacultyDepartment.Faculty.University.UniversityName,
                PositionId = e.PositionId,
                PositionlevelId = e.PositionlevelId,
            }).ToList();
            return emps;
        }

        public EmployeeDTO GetEmployeeById(int EmpId)
        {
            var e = _context.Employees.Include(e => e.Profession).Include(e => e.Position).Include(e => e.Positionlevel).Where(e => e.Id == EmpId).FirstOrDefault();
                                                                  
            if (e == null)
            {
                throw new NotExistException("Not Exist Exception");
            }
            else
            {
                var employeeDTO = new EmployeeDTO
                {
                    ID = e.Id,
                    Name = e.Name,
                    ProfessionName = e.Profession.Name,
                    GraduatioYear = e.GraduatioYear,
                    Address = e.Address,
                    Code = e.Code,
                    DateOfBirth = e.DateOfBirth,
                    Email = e.Email,
                    gender = e.Gender,
                    HiringDateHiringDate = e.HiringDateHiringDate,
                    MaritalStatus = e.MaritalStatus,
                    Phone = e.Phone,
                    RelevantPhone = e.RelevantPhone,
                    Photo = e.Photo,
                    EmailCompany = e.EmailCompany,
                    Mobile = e.Mobile,
                    NationalId = e.NationalId,
                    //FacultyDepartmentName = e.FacultyDepartment.FacultyDepartmentName,
                    //FacultyDepartmentId = (int)e.FacultyDepartmentId,
                    //FacultyName = e.FacultyDepartment.Faculty.FacultyName,
                    //UniversityName = e.FacultyDepartment.Faculty.University.UniversityName,
                    PositionId = e.PositionId,
                    PositionlevelId = e.PositionlevelId,
                };
                return employeeDTO;
            }
        }
    }
}
