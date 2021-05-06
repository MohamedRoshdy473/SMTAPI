using SMT.Data.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Services
{
    public interface IProjectDescriptionsService
    {
        ProjectDescriptionsDTO GetProjectDescription(int id);
        IEnumerable<ProjectDescriptionsDTO> GetDescriptionsByProjectId(int projectId);
        IEnumerable<ProjectDescriptionsDTO> GetAllProjectDescriptions();
        void AddProjectDescription(ProjectDescriptionsDTO projectDescriptionsDTO);
        void DeleteProjectDescription(int projectDescriptionsDTOId);
        void UpdateProjectDescription(int projectDescriptionsDTOId, ProjectDescriptionsDTO projectDescriptionsDTO);
    }
}
