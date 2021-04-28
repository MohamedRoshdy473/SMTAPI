using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SMT.Data.DTO;
using SMT.Data.Models.SMTDBContext;
using SMT.Domain.Repositories;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Core.Repositories
{
    public class ProjectDocumentsRepository : ControllerBase , IProjectDocumentsRepository
    {
        private readonly SMTDbContext _context;
        public ProjectDocumentsRepository(SMTDbContext context)
        {
            _context = context;
        }
        public void Add(List<ProjectDocumentsDTO> projectDocumentsDTO)
        {
            try
            {
                if (projectDocumentsDTO != null)
                {
                    foreach (var item in projectDocumentsDTO)
                    {
                    ProjectDocuments projectDocuments = new ProjectDocuments();
                    projectDocuments.Id = item.Id;
                    projectDocuments.DocumentFile = item.DocumentFile;
                    projectDocuments.ProjectId = item.ProjectId;
                    projectDocuments.ProjectUpdateId = item.ProjectUpdateId;
                    projectDocuments.DocumentsCategoryId = item.DocumentsCategoryId;
                    _context.Add(projectDocuments);
                    _context.SaveChanges();
                    }
                }
                else
                {
                    throw new NotCompletedException("Not Completed Exception");
                }
            }
            catch (Exception)
            {
                throw new NotExistException("Not Exist Exception");
            }
        }

        public void Delete(int projectDocumentsDTOId)
        {
            var projectDocuments = _context.ProjectDocuments.Find(projectDocumentsDTOId);

            if (projectDocuments != null)
            {
                _context.ProjectDocuments.Remove(projectDocuments);
                _context.SaveChanges();
            }
            else
            {
                throw new NotExistException("Not Exist Exception");
            }
        }

        public ProjectDocumentsDTO Get(int id)
        {
            var projectDocuments = _context.ProjectDocuments.Where(d => d.Id == id)
                                                 .Include(d => d.projects).Include(d => d.ProjectUpdate).Include(d => d.DocumentsCategories).FirstOrDefault();


            if (projectDocuments == null)
            {
                throw new NotExistException("Not Exist Exception");
            }
            else
            {
                var projectDocumentsDTO = new ProjectDocumentsDTO
                {
                    Id = projectDocuments.Id,
                    DocumentFile = projectDocuments.DocumentFile,
                    ProjectUpdateId = (int)projectDocuments.ProjectUpdateId,
                    DueDate = projectDocuments.ProjectUpdate.DueDate,
                    ProjectId = projectDocuments.ProjectId,
                    ProjectName = projectDocuments.projects.ProjectName,
                    DocumentsCategoryId = projectDocuments.DocumentsCategoryId,
                    DocumentsCategoryName = projectDocuments.DocumentsCategories.CategoryName

                };
                return projectDocumentsDTO;
            }
        }

        public IEnumerable<ProjectDocumentsDTO> GetAll()
        {
            var projectDocuments = _context.ProjectDocuments.Select(projectDocuments => new ProjectDocumentsDTO
            {
                Id = projectDocuments.Id,
                DocumentFile = projectDocuments.DocumentFile,
                ProjectUpdateId = (int)projectDocuments.ProjectUpdateId,
                DueDate = projectDocuments.ProjectUpdate.DueDate,
                ProjectId = projectDocuments.ProjectId,
                ProjectName = projectDocuments.projects.ProjectName,
                DocumentsCategoryId = projectDocuments.DocumentsCategoryId,
                DocumentsCategoryName = projectDocuments.DocumentsCategories.CategoryName

            }).ToList();
            return projectDocuments;
        }

        public void Update(int projectDocumentsDTOId, ProjectDocumentsDTO projectDocumentsDTO)
        {
            if (projectDocumentsDTOId != projectDocumentsDTO.Id)
            {
                throw new NotExistException("Not Exist Exception");
            }
            ProjectDocuments projectDocuments = new ProjectDocuments();
            projectDocuments.Id = projectDocumentsDTO.Id;
            projectDocuments.DocumentFile = projectDocumentsDTO.DocumentFile;
            projectDocuments.ProjectId = projectDocumentsDTO.ProjectId;
            projectDocuments.ProjectUpdateId = projectDocumentsDTO.ProjectUpdateId;
            projectDocuments.DocumentsCategoryId = projectDocumentsDTO.DocumentsCategoryId;
            _context.Entry(projectDocuments).State = EntityState.Modified;
            try
            {
                _context.SaveChanges();
            }
            catch (Exception)
            {
                throw new NotCompletedException("Not Completed Exception");
            }
        }

        public IActionResult Upload()
        {
            try
            {
                var file = Request.Form.Files[0];
                var folderName = Path.Combine("wwwroot", "documentFiles");
                var pathToSave = Path.Combine(Directory.GetCurrentDirectory(), folderName);

                if (file.Length > 0)
                {
                    var fileName = ContentDispositionHeaderValue.Parse(file.ContentDisposition).FileName.Trim('"');
                    var fullPath = Path.Combine(pathToSave, fileName);
                    var dbPath = Path.Combine(folderName, fileName);

                    using (var stream = new FileStream(fullPath, FileMode.Create))
                    {
                        file.CopyTo(stream);
                    }

                    return Ok(new { dbPath });
                }
                else
                {
                    throw new NotCompletedException("Not Completed Exception");
                }
            }
            catch (Exception)
            {
                throw new NotExistException("Not Exist Exception");
            }
        }
    }
}
