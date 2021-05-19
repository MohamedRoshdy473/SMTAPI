using Microsoft.AspNetCore.Mvc;
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
    public class ProjectDocumentsService : IProjectDocumentsService
    {
        private readonly IUnitOfWork _unitOfWork;

        public ProjectDocumentsService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }
        public void AddProjectDocument(List<ProjectDocumentsDTO> projectDocumentsDTO)
        {
            _unitOfWork.ProjectDocuments.Add(projectDocumentsDTO);
        }

        public void DeleteProjectDocument(int projectDocumentsDTOId)
        {
            _unitOfWork.ProjectDocuments.Delete(projectDocumentsDTOId);
        }

        public IEnumerable<ProjectDocumentsDTO> GetAllProjectDocuments()
        {
            return _unitOfWork.ProjectDocuments.GetAll();
        }

        public ProjectDocumentsDTO GetProjectDocument(int id)
        {
            return _unitOfWork.ProjectDocuments.Get(id);
        }
        public IEnumerable<ProjectDocumentsDTO> GetProjectDocumentByProjectId(int ProjectId)
        {
            return _unitOfWork.ProjectDocuments.GetProjectDocumentByProjectId(ProjectId);
        }
        public IEnumerable<ProjectDocumentsDTO> GetProjectDocumentByProjectUpdateId(int ProjectUpdateId)
        {
            return _unitOfWork.ProjectDocuments.GetProjectDocumentByProjectUpdateId(ProjectUpdateId);
        }

        public void UpdateProjectDocument(int projectDocumentsDTOId, ProjectDocumentsDTO projectDocumentsDTO)
        {
            _unitOfWork.ProjectDocuments.Update(projectDocumentsDTOId, projectDocumentsDTO);
        }

        public IActionResult UploadProjectDocument()
        {
            return _unitOfWork.ProjectDocuments.Upload();
        }

        public List<ProjectDocumentsDTO> GetGetLatestDocuments(int projectId)
        {

            return _unitOfWork.ProjectDocuments.GetGetLatestDocuments(projectId);
        }
    }
}
