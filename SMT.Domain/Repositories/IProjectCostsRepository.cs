using SMT.Data.Models.SMTDBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Repositories
{
    public interface IProjectCostsRepository
    {
        ProjectCosts Get(int id);
        IEnumerable<ProjectCosts> GetAll();
        int Add(ProjectCosts projectCost);
        void Delete(int projectCostId);
        void Update(int projectCostId, ProjectCosts projectCost);
    }
}
