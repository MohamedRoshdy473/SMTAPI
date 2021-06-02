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
    public class ProjectDocumentsRepository : ControllerBase, IProjectDocumentsRepository
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
                var proUpdateIdInProjectDocuments = _context.ProjectDocuments.Where(p => p.ProjectId == projectDocumentsDTO[0].ProjectId).OrderByDescending(p => p.Id).ToList();
                if (projectDocumentsDTO != null)
                {
                    foreach (var item in projectDocumentsDTO)
                    {
                        if (item.ProjectUpdateId == 0)
                        {
                            item.ProjectUpdateId = null;
                        }
                        ProjectDocuments projectDocuments = new ProjectDocuments();
                        projectDocuments.DocumentFile = item.DocumentFile;
                        projectDocuments.ProjectId = item.ProjectId;
                        projectDocuments.ProjectUpdateId = item.ProjectUpdateId;
                        projectDocuments.DocumentsCategoryId = item.DocumentsCategoryId;
                        _context.Add(projectDocuments);
                        _context.SaveChanges();

                        //var lst = _context.ProjectDocuments.Where(p => p.DocumentsCategoryId != item.DocumentsCategoryId && p.ProjectId == item.ProjectId
                        //&& p.ProjectUpdateId == proUpdateIdInProjectDocuments[0].ProjectUpdateId).OrderByDescending(p => p.Id).ToList();

                        //foreach (var item2 in lst)
                        //{
                        //    ProjectDocuments documentsDTO = new ProjectDocuments();
                        //    documentsDTO.DocumentFile = item2.DocumentFile;
                        //    documentsDTO.ProjectId = item2.ProjectId;
                        //    documentsDTO.ProjectUpdateId = item.ProjectUpdateId;
                        //    documentsDTO.DocumentsCategoryId = item2.DocumentsCategoryId;
                        //    _context.Add(documentsDTO);
                        //    _context.SaveChanges();
                        //}                       
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

            }).OrderByDescending(p => p.Id).ToList();
            return projectDocuments;
        }

        public List<ProjectDocumentsDTO> GetGetLatestDocuments(int projectId)
        {
            List<int> lstCount = new List<int>();
            List<int> result = new List<int>();
            List<int> lstCountDocs = new List<int>();
            List<ProjectDocumentsDTO> lstAllDocuments = new List<ProjectDocumentsDTO>();
            var documentsCategories = _context.DocumentsCategories.ToList();
            var proUpdateIdInProjectDocuments = _context.projectUpdates.Where(p => p.ProjectId == projectId).OrderByDescending(p => p.Id).ToList();


            foreach (var num in documentsCategories)
            {
                lstCount.Add(num.Id);
            }
      if (proUpdateIdInProjectDocuments.Count==0)
      {
        List<ProjectDocumentsDTO> LastDoc1 = _context.ProjectDocuments
                                                        .Where(p => p.ProjectId == projectId)
                                                        .Select(projectDocuments => new ProjectDocumentsDTO
                                                        {
                                                          Id = projectDocuments.Id,
                                                          DocumentFile = projectDocuments.DocumentFile,
                                                          ProjectUpdateId = (int)projectDocuments.ProjectUpdateId,
                                                                      //DueDate = projectDocuments.ProjectUpdate.DueDate,
                                                                      ProjectId = projectDocuments.ProjectId,
                                                          ProjectName = projectDocuments.projects.ProjectName,
                                                          DocumentsCategoryId = projectDocuments.DocumentsCategoryId,
                                                          DocumentsCategoryName = projectDocuments.DocumentsCategories.CategoryName
                                                        }).ToList();
        return LastDoc1;
      }
            IEnumerable<ProjectDocumentsDTO> LastDoc = _context.ProjectDocuments
                                                                    .Where(p => p.ProjectUpdateId == proUpdateIdInProjectDocuments[0].Id)
                                                                    .Select(projectDocuments => new ProjectDocumentsDTO
                                                                    {
                                                                        Id = projectDocuments.Id,
                                                                        DocumentFile = projectDocuments.DocumentFile,
                                                                        ProjectUpdateId = (int)projectDocuments.ProjectUpdateId,
                                                                        //DueDate = projectDocuments.ProjectUpdate.DueDate,
                                                                        ProjectId = projectDocuments.ProjectId,
                                                                        ProjectName = projectDocuments.projects.ProjectName,
                                                                        DocumentsCategoryId = projectDocuments.DocumentsCategoryId,
                                                                        DocumentsCategoryName = projectDocuments.DocumentsCategories.CategoryName
                                                                    }).ToList();
            foreach (var doc in LastDoc)
            {
                lstAllDocuments.Add(doc);
            }
            var groupIds = LastDoc.GroupBy(a => a.DocumentsCategoryId).ToList();
            foreach (var item in groupIds)
            {
                lstCountDocs.Add(item.FirstOrDefault().DocumentsCategoryId);
            }
            result = lstCount.Except(lstCountDocs).ToList();
            if (result.Count > 0)
            {
                foreach (var item in result)
                {
                    var projectDocumentTestObj = _context.ProjectDocuments.Include(p => p.projects).Include(p => p.ProjectUpdate).Include(p => p.DocumentsCategories)
                                                                              .Where(p => p.DocumentsCategoryId == item && p.ProjectId == projectId).FirstOrDefault();
                    if (projectDocumentTestObj == null)
                    {

                    }
                    else if (projectDocumentTestObj.ProjectUpdate == null)
                    {

                        lstAllDocuments.Add(_context.ProjectDocuments.Include(p => p.projects).Include(p => p.ProjectUpdate).Include(p => p.DocumentsCategories)
                                                                                  .Where(p => p.DocumentsCategoryId == item && p.ProjectId == projectId && p.ProjectUpdateId == null)
                                                                                  .Select(projectDocuments => new ProjectDocumentsDTO
                                                                                  {
                                                                                      Id = projectDocuments.Id,
                                                                                      DocumentFile = projectDocuments.DocumentFile,
                                                                          //   ProjectUpdateId = (int)projectDocuments.ProjectUpdateId,
                                                                          //     DueDate = projectDocuments.ProjectUpdate.DueDate,
                                                                          ProjectId = projectDocuments.ProjectId,
                                                                                      ProjectName = projectDocuments.projects.ProjectName,
                                                                                      DocumentsCategoryId = projectDocuments.DocumentsCategoryId,
                                                                                      DocumentsCategoryName = projectDocuments.DocumentsCategories.CategoryName
                                                                                  }).ToList().FirstOrDefault());

                    }


                    else if (projectDocumentTestObj.ProjectUpdate != null)
                    {
                        lstAllDocuments.Add(_context.ProjectDocuments.Include(p => p.projects).Include(p => p.ProjectUpdate).Include(p => p.DocumentsCategories)
                                                                                  .Where(p => p.ProjectId == projectId && p.ProjectUpdateId != null)
                                                                                  .Select(projectDocuments => new ProjectDocumentsDTO
                                                                                  {
                                                                                      Id = projectDocuments.Id,
                                                                                      DocumentFile = projectDocuments.DocumentFile,
                                                                          //   ProjectUpdateId = (int)projectDocuments.ProjectUpdateId,
                                                                          //     DueDate = projectDocuments.ProjectUpdate.DueDate,
                                                                          ProjectId = projectDocuments.ProjectId,
                                                                                      ProjectName = projectDocuments.projects.ProjectName,
                                                                                      DocumentsCategoryId = projectDocuments.DocumentsCategoryId,
                                                                                      DocumentsCategoryName = projectDocuments.DocumentsCategories.CategoryName
                                                                                  }).ToList().FirstOrDefault(p => p.DocumentsCategoryId == item));

                    }
                    lstAllDocuments.Remove(null);
                    //  lstAllDocuments.RemoveAll(item => item == null);
                    var test = lstAllDocuments;
                }
            }
            return lstAllDocuments;
        }

        public IEnumerable<ProjectDocumentsDTO> GetProjectDocumentByProjectId(int ProjectId)
        {
            var projectDocuments = _context.ProjectDocuments.Where(e => e.ProjectId == ProjectId).Select(projectDocuments => new ProjectDocumentsDTO
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

        public IEnumerable<ProjectDocumentsDTO> GetProjectDocumentByProjectUpdateId(int ProjectId, int ProjectUpdateId)
        {
            List<ProjectDocumentsDTO> projectDocuments = new List<ProjectDocumentsDTO>();
            if (ProjectUpdateId != 0)
            {
                projectDocuments = _context.ProjectDocuments.Where(e => e.ProjectUpdateId == ProjectUpdateId).Select(projectDocuments => new ProjectDocumentsDTO
                {
                    Id = projectDocuments.Id,
                    DocumentFile = projectDocuments.DocumentFile,
                    ProjectUpdateId = projectDocuments.ProjectUpdateId,
                    ProjectId = projectDocuments.ProjectId,
                    ProjectName = projectDocuments.projects.ProjectName,
                    DocumentsCategoryId = projectDocuments.DocumentsCategoryId,
                    DocumentsCategoryName = projectDocuments.DocumentsCategories.CategoryName

                }).ToList();
            }
            else
            {
                projectDocuments = _context.ProjectDocuments.Where(e => e.ProjectUpdateId == null && e.ProjectId==ProjectId).Select(projectDocuments => new ProjectDocumentsDTO
                {
                    Id = projectDocuments.Id,
                    DocumentFile = projectDocuments.DocumentFile,
                  ProjectUpdateId = projectDocuments.ProjectUpdateId,
                  ProjectId = projectDocuments.ProjectId,
                  ProjectName = projectDocuments.projects.ProjectName,
                  DocumentsCategoryId = projectDocuments.DocumentsCategoryId,
                  DocumentsCategoryName = projectDocuments.DocumentsCategories.CategoryName

                }).ToList();
            }
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
