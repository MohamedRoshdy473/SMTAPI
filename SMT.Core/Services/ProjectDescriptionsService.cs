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
    public class ProjectDescriptionsService : IProjectDescriptionsService
    {
        private readonly IUnitOfWork _unitOfWork;

        public ProjectDescriptionsService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }
        public void AddProjectDescription(ProjectDescriptionsDTO projectDescriptionsDTO)
        {
            _unitOfWork.ProjectDescriptions.Add(projectDescriptionsDTO);
        }

        public void DeleteProjectDescription(int projectDescriptionsDTOId)
        {
            _unitOfWork.ProjectDescriptions.Delete(projectDescriptionsDTOId);
        }
        public IEnumerable<ProjectDescriptionsDTO> GetDescriptionsByProjectId(int projectId)
        {
           return _unitOfWork.ProjectDescriptions.GetDescriptionsByProjectId(projectId);
        }
        public IEnumerable<ProjectDescriptionsDTO> GetAllProjectDescriptions()
        {
            return _unitOfWork.ProjectDescriptions.GetAll();
        }

        public ProjectDescriptionsDTO GetProjectDescription(int id)
        {
            return _unitOfWork.ProjectDescriptions.Get(id);
        }

        public void UpdateProjectDescription(int projectDescriptionsDTOId, ProjectDescriptionsDTO projectDescriptionsDTO)
        {
            _unitOfWork.ProjectDescriptions.Update(projectDescriptionsDTOId, projectDescriptionsDTO);
        }
    }
}
