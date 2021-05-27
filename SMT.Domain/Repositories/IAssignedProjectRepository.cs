using SMT.Data.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Repositories
{
    public interface IAssignedProjectRepository
    {
        AssignedProjectDTO Get(int id);
        IEnumerable<AssignedProjectDTO> GetAll();
        IEnumerable<AssignedProjectDTO> GetAllAssignedProjectsByEmployeeId(int EmployeeId);
        void Add(AssignedProjectDTO assignedProjectDTO);
        void Delete(int assignedProjectDTOId);
        void Update(int assignedProjectDTOId, AssignedProjectDTO assignedProjectDTO);
    }
}
