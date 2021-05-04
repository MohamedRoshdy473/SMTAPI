using SMT.Data.Models.SMTDBContext;
using SMT.Domain;
using SMT.Domain.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Core.Services
{
    public class ProjectCostsService : IProjectCostsService
    {
        private readonly IUnitOfWork _unitOfWork;

        public ProjectCostsService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }
        public void AddProjectCost(ProjectCosts projectCost)
        {
            _unitOfWork.ProjectCosts.Add(projectCost);
        }

        public void DeleteProjectCost(int projectCostId)
        {
            _unitOfWork.ProjectCosts.Delete(projectCostId);
        }

        public IEnumerable<ProjectCosts> GetAllProjectCosts()
        {
            return _unitOfWork.ProjectCosts.GetAll();
        }

        public ProjectCosts GetProjectCost(int id)
        {
            return _unitOfWork.ProjectCosts.Get(id);
        }

        public void UpdateProjectCost(int projectCostId, ProjectCosts projectCost)
        {
            _unitOfWork.ProjectCosts.Update(projectCostId, projectCost);
        }
    }
}
