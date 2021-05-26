using SMT.Data.DTO;
using SMT.Data.Models.HRDBContext;
using SMT.Domain;
using SMT.Domain.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Core.Services
{
   public class EmployeeService : IEmployeeService
    {
        private readonly IUnitOfWork _unitOfWork;

        public EmployeeService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public IEnumerable<EmployeeDTO> GetAllEmployees()
        {
           return _unitOfWork.Employee.GetAllEmployeesDTO();
        }

        public IEnumerable<EmployeeDTO> GetAllEmployeesByProfessionId(int ProfessionId)
        {
            return _unitOfWork.Employee.GetAllEmployeesByProfessionId(ProfessionId);
        }

        public IEnumerable<Profession> GetAllProfessions()
        {
            return _unitOfWork.Employee.GetAllProfessions();
        }

        public EmployeeDTO GetEmployeeById(int EmpId)
        {
            return _unitOfWork.Employee.GetEmployeeById(EmpId);
        }
    }
}
