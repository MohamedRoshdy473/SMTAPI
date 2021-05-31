using Microsoft.AspNetCore.Mvc;
using SMT.Data.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Repositories
{
   public interface IProjectDocumentsRepository
    {
        ProjectDocumentsDTO Get(int id);
        IEnumerable<ProjectDocumentsDTO> GetProjectDocumentByProjectId(int ProjectId);
        IEnumerable<ProjectDocumentsDTO> GetProjectDocumentByProjectUpdateId(int ProjectId, int ProjectUpdateId);
        List<ProjectDocumentsDTO> GetGetLatestDocuments(int projectId);
        IEnumerable<ProjectDocumentsDTO> GetAll();
        IActionResult Upload();
        void Add(List<ProjectDocumentsDTO> projectDocumentsDTO);
        void Delete(int projectDocumentsDTOId);
        void Update(int projectDocumentsDTOId, ProjectDocumentsDTO projectDocumentsDTO);
    }
}
