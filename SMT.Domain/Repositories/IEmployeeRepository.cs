using SMT.Data.DTO;
using SMT.Data.Models.HRDBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Repositories
{
    public interface IEmployeeRepository
    {
        IEnumerable<EmployeeDTO> GetAllEmployeesDTO();
        EmployeeDTO GetEmployeeById(int EmpId);
        IEnumerable<Profession> GetAllProfessions();
        IEnumerable<EmployeeDTO> GetAllEmployeesByProfessionId(int ProfessionId);
    }
}
