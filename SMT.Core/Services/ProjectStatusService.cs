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
    public class ProjectStatusService : IProjectStatusService
    {
        private readonly IUnitOfWork _unitOfWork;

        public ProjectStatusService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }
        public void AddProjectStatus(ProjectStatus ProjectStatus)
        {
            _unitOfWork.ProjectStatus.Add(ProjectStatus);
        }

        public void DeleteProjectStatus(int ProjectStatusId)
        {
            _unitOfWork.ProjectStatus.Delete(ProjectStatusId);
        }

        public IEnumerable<ProjectStatus> GetAllProjectStatus()
        {
            return _unitOfWork.ProjectStatus.GetAll();
        }

        public ProjectStatus GetProjectStatus(int id)
        {
            return _unitOfWork.ProjectStatus.Get(id);
        }

        public void UpdateProjectStatus(int ProjectStatusId, ProjectStatus ProjectStatus)
        {
            _unitOfWork.ProjectStatus.Update(ProjectStatusId, ProjectStatus);
        }
    }
}
