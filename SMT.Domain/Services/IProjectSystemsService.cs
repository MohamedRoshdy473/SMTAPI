using SMT.Data.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Services
{
    public interface IProjectSystemsService
    {
        ProjectSystemsDTO GetProjectSystem(int id);
        IEnumerable<ProjectSystemsDTO> GetAllProjectSystems();
        void AddProjectSystem(ProjectSystemsDTO projectSystemsDTO);
        void DeleteProjectSystem(int projectSystemsDTOId);
        void UpdateProjectSystem(int projectSystemsDTOId, ProjectSystemsDTO projectSystemsDTO);
    }
}
