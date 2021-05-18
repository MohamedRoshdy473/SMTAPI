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
    public class ProjectSystemsService : IProjectSystemsService
    {
        private readonly IUnitOfWork _unitOfWork;

        public ProjectSystemsService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }
        public void AddProjectSystem(ProjectSystemsDTO projectSystemsDTO)
        {
            _unitOfWork.ProjectSystems.Add(projectSystemsDTO);
        }

        public void DeleteProjectSystem(int projectSystemsDTOId)
        {
            _unitOfWork.ProjectSystems.Delete(projectSystemsDTOId);
        }

        public IEnumerable<ProjectSystemsDTO> GetAllProjectSystems()
        {
           return _unitOfWork.ProjectSystems.GetAll();
        }

        public ProjectSystemsDTO GetProjectSystem(int id)
        {
           return _unitOfWork.ProjectSystems.Get(id);
        }

        public void UpdateProjectSystem(int projectSystemsDTOId, ProjectSystemsDTO projectSystemsDTO)
        {
            _unitOfWork.ProjectSystems.Update(projectSystemsDTOId, projectSystemsDTO);
        }
    }
}
