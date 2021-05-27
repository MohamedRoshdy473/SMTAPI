using SMT.Data.DTO;
using SMT.Domain;
using SMT.Domain.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Core.Services
{
    public class AssignedProjectService : IAssignedProjectService
    {
        private readonly IUnitOfWork _unitOfWork;

        public AssignedProjectService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }
        public void AddAssignedProject(AssignedProjectDTO assignedProjectDTO)
        {
            _unitOfWork.AssignedProject.Add(assignedProjectDTO);
        }

        public void DeleteAssignedProject(int assignedProjectDTOId)
        {
            _unitOfWork.AssignedProject.Delete(assignedProjectDTOId);
        }

        public IEnumerable<AssignedProjectDTO> GetAllAssignedProjects()
        {
            return _unitOfWork.AssignedProject.GetAll();
        }

        public IEnumerable<AssignedProjectDTO> GetAllAssignedProjectsByEmployeeId(int EmployeeId)
        {
            return _unitOfWork.AssignedProject.GetAllAssignedProjectsByEmployeeId(EmployeeId);
        }

        public AssignedProjectDTO GetAssignedProject(int id)
        {
            return _unitOfWork.AssignedProject.Get(id);
        }

        public void UpdateAssignedProject(int assignedProjectDTOId, AssignedProjectDTO assignedProjectDTO)
        {
            _unitOfWork.AssignedProject.Update(assignedProjectDTOId, assignedProjectDTO);
        }
    }
}
