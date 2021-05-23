using SMT.Data.DTO;
using SMT.Domain;
using SMT.Domain.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Core.Services
{
    public class ProjectService: IProjectService
    {
        private readonly IUnitOfWork _unitOfWork;
        public ProjectService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public void AcceptProject(int ProjectId)
        {
            _unitOfWork.Project.AcceptProject(ProjectId);
        }

        public int AddProject(ProjectsDTO projectsDTO)
        {
            _unitOfWork.Project.Add(projectsDTO);
            return projectsDTO.Id;
        }

        public void DeleteProject(int projectsDTOId)
        {
            _unitOfWork.Project.Delete(projectsDTOId);
        }

        public IEnumerable<ProjectsDTO> GetAllAcceptedProjects()
        {
           return _unitOfWork.Project.GetAllAcceptedProjects();
        }

        public IEnumerable<ProjectsDTO> GetAllProjects()
        {
           return _unitOfWork.Project.GetAll();
        }

        public ProjectsDTO GetProject(int id)
        {
            return _unitOfWork.Project.Get(id);
        }

        public void UpdateProject(int projectsDTOId, ProjectsDTO projectsDTO)
        {
            _unitOfWork.Project.Update(projectsDTOId,projectsDTO);
        }
    }
}
