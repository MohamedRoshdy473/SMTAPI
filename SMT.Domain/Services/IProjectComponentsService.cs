using SMT.Data.Models.SMTDBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Services
{
    public interface IProjectComponentsService
    {
        ProjectComponents GetProjectComponent(int id);
        IEnumerable<ProjectComponents> GetAllProjectComponents();
        void AddProjectComponent(ProjectComponents ProjectComponent);
        void DeleteProjectComponent(int ProjectComponentId);
        void UpdateProjectComponent(int ProjectComponentId, ProjectComponents ProjectComponent);
    }
}
