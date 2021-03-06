using SMT.Data.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Services
{
    public interface IProjectService
    {
        ProjectsDTO GetProject(int id);
        IEnumerable<ProjectsDTO> GetAllProjects();
        IEnumerable<ProjectsDTO> GetAllAcceptedProjects();
        IEnumerable<ProjectsDTO> GetAllProjectByUserId(string UserId);
        void AcceptProject(int ProjectId);
        int AddProject(ProjectsDTO projectsDTO);
        void DeleteProject(int projectsDTOId);
        void UpdateProject(int projectsDTOId, ProjectsDTO projectsDTO);
    }
}
