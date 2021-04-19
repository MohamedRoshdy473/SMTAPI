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
    public class ProjectComponentsService : IProjectComponentsService
    {
        private readonly IUnitOfWork _unitOfWork;
        public ProjectComponentsService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }
        public void AddProjectComponent(ProjectComponents ProjectComponent)
        {
            _unitOfWork.ProjectComponents.Add(ProjectComponent);
        }

        public void DeleteProjectComponent(int ProjectComponentId)
        {
            _unitOfWork.ProjectComponents.Delete(ProjectComponentId);
        }

        public IEnumerable<ProjectComponents> GetAllProjectComponents()
        {
           return _unitOfWork.ProjectComponents.GetAll();
        }

        public ProjectComponents GetProjectComponent(int id)
        {
           return _unitOfWork.ProjectComponents.Get(id);
        }

        public void UpdateProjectComponent(int ProjectComponentId, ProjectComponents ProjectComponent)
        {
            _unitOfWork.ProjectComponents.Update(ProjectComponentId, ProjectComponent);
        }
    }
}
