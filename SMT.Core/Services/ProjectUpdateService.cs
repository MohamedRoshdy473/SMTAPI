using SMT.Data.DTO;
using SMT.Domain;
using SMT.Domain.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Http;

namespace SMT.Core.Services
{
    public class ProjectUpdateService : IProjectUpdateService
    {
        private readonly IUnitOfWork _unitOfWork;

        public ProjectUpdateService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }
        public int AddProjectUpdate(ProjectUpdateDTO ProjectUpdate)
        {
            _unitOfWork.ProjectUpdate.Add(ProjectUpdate);
            return ProjectUpdate.Id;
        }

        public void DeleteProjectUpdate(int ProjectUpdateId)
        {
            _unitOfWork.ProjectUpdate.Delete(ProjectUpdateId);
        }

        public void EditProjectUpdate(int ProjectUpdateId, ProjectUpdateDTO ProjectUpdate)
        {
            _unitOfWork.ProjectUpdate.Update(ProjectUpdateId, ProjectUpdate);
        }

        public IEnumerable<ProjectUpdateDTO> GetAllProjectUpdates()
        {
            return _unitOfWork.ProjectUpdate.GetAll();
        }

        public ProjectUpdateDTO GetProjectUpdate(int id)
        {
           return _unitOfWork.ProjectUpdate.Get(id);
        }
      
        public IEnumerable<ProjectUpdateDTO> GetAllUpdatesByProjectId(int projectId)
        {
          return _unitOfWork.ProjectUpdate.GetAllUpdatesByProjectId(projectId);
        }
  }
}
