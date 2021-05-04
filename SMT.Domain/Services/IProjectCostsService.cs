using SMT.Data.Models.SMTDBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Services
{
    public interface IProjectCostsService
    {
        ProjectCosts GetProjectCost(int id);
        IEnumerable<ProjectCosts> GetAllProjectCosts();
        void AddProjectCost(ProjectCosts projectCost);
        void DeleteProjectCost(int projectCostId);
        void UpdateProjectCost(int projectCostId, ProjectCosts projectCost);
    }
}
