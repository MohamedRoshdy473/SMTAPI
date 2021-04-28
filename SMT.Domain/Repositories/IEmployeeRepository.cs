using SMT.Data.DTO;
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
    }
}
