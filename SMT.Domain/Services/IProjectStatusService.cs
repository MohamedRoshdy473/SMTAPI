using SMT.Data.Models.SMTDBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Services
{
   public interface IProjectStatusService
    {
        ProjectStatus GetProjectStatus(int id);
        IEnumerable<ProjectStatus> GetAllProjectStatus();
        void AddProjectStatus(ProjectStatus ProjectStatus);
        void DeleteProjectStatus(int ProjectStatusId);
        void UpdateProjectStatus(int ProjectStatusId, ProjectStatus ProjectStatus);
    }
}
