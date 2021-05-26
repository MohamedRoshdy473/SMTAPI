using SMT.Data.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Services
{
    public interface IAssignedProjectService
    {
        AssignedProjectDTO GetAssignedProject(int id);
        IEnumerable<AssignedProjectDTO> GetAllAssignedProjects();
        void AddAssignedProject(AssignedProjectDTO assignedProjectDTO);
        void DeleteAssignedProject(int assignedProjectDTOId);
        void UpdateAssignedProject(int assignedProjectDTOId, AssignedProjectDTO assignedProjectDTO);
    }
}
