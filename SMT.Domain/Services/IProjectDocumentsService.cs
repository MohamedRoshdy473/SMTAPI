﻿using Microsoft.AspNetCore.Mvc;
using SMT.Data.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Services
{
    public interface IProjectDocumentsService
    {
        ProjectDocumentsDTO GetProjectDocument(int id);
        IEnumerable<ProjectDocumentsDTO> GetAllProjectDocuments();
        IActionResult UploadProjectDocument();
        void AddProjectDocument(List<ProjectDocumentsDTO> projectDocumentsDTO);
        void DeleteProjectDocument(int projectDocumentsDTOId);
        void UpdateProjectDocument(int projectDocumentsDTOId, ProjectDocumentsDTO projectDocumentsDTO);
    }
}
