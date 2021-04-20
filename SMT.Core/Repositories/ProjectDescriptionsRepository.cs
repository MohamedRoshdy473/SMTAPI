using Microsoft.EntityFrameworkCore;
using SMT.Data.DTO;
using SMT.Data.Models.SMTDBContext;
using SMT.Domain.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Web.Http;

namespace SMT.Core.Repositories
{
    public class ProjectDescriptionsRepository : IProjectDescriptionsRepository
    {
        private readonly SMTDbContext _context;
        private string msg;

        public ProjectDescriptionsRepository(SMTDbContext context)
        {
            _context = context;
        }
        public void Add(ProjectDescriptionsDTO projectDescriptionsDTO)
        {
            try
            {
                if (projectDescriptionsDTO != null)
                {
                    ProjectDescriptions projectDescriptions = new ProjectDescriptions();
                    projectDescriptions.Id = projectDescriptionsDTO.Id;
                    projectDescriptions.Description = projectDescriptionsDTO.Description;
                    projectDescriptions.DescriptionDate = projectDescriptionsDTO.DescriptionDate;
                    projectDescriptions.ProjectId = projectDescriptionsDTO.ProjectId;
                    projectDescriptions.ProjectUpdateId = projectDescriptionsDTO.ProjectUpdateId;
                    projectDescriptions.UserId = projectDescriptionsDTO.UserId;
                    _context.Add(projectDescriptions);
                    _context.SaveChanges();
                }
                else
                {
                    var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                    {
                        Content = new StringContent("Project Descriptions doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
                        StatusCode = HttpStatusCode.NotFound
                    };
                    throw new HttpResponseException(response);
                }
            }
            catch (Exception ex)
            {
                msg = ex.Message;
            }
        }

        public void Delete(int projectDescriptionsDTOId)
        {
            var projectDescriptions = _context.ProjectDescriptions.Find(projectDescriptionsDTOId);
            try
            {
                if (projectDescriptions != null)
                {
                    _context.ProjectDescriptions.Remove(projectDescriptions);
                    _context.SaveChanges();
                }
                else
                {
                    var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                    {
                        Content = new StringContent("Project Descriptions doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
                        StatusCode = HttpStatusCode.NotFound
                    };
                    throw new HttpResponseException(response);
                }
            }
            catch (Exception ex)
            {
                msg = ex.Message;
            }
        }

        public ProjectDescriptionsDTO Get(int id)
        {
            var ProDescription = _context.ProjectDescriptions.Where(d => d.Id == id)
                                      .Include(d => d.projects).Include(d => d.ProjectUpdate).Include(d => d.User).FirstOrDefault();


            if (ProDescription == null)
            {
                var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                {
                    Content = new StringContent("Project Descriptions doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
                    StatusCode = HttpStatusCode.NotFound
                };
                throw new HttpResponseException(response);
            }
            else
            {
                var projectDescriptionsDTO =new ProjectDescriptionsDTO
                {
                    Id = ProDescription.Id,
                    Description = ProDescription.Description,
                    DescriptionDate = ProDescription.DescriptionDate,
                    DueDate = ProDescription.ProjectUpdate.DueDate,
                    ProjectId = ProDescription.ProjectId,
                    projectName = ProDescription.projects.ProjectName,
                    ProjectUpdateId = ProDescription.ProjectUpdateId,
                    UserId = ProDescription.UserId,
                    UserName = ProDescription.User.UserName

                };
                return projectDescriptionsDTO;
            }
        }

        public IEnumerable<ProjectDescriptionsDTO> GetAll()
        {
            var projectDescriptionsDTO = _context.ProjectDescriptions.Select(ProDescription => new ProjectDescriptionsDTO
            {
                Id = ProDescription.Id,
                Description = ProDescription.Description,
                DescriptionDate = ProDescription.DescriptionDate,
                DueDate = ProDescription.ProjectUpdate.DueDate,
                ProjectId = ProDescription.ProjectId,
                projectName = ProDescription.projects.ProjectName,
                ProjectUpdateId = ProDescription.ProjectUpdateId,
                UserId = ProDescription.UserId,
                UserName = ProDescription.User.UserName

            }).ToList() ;
            return projectDescriptionsDTO;
        }

        public void Update(int projectDescriptionsDTOId, ProjectDescriptionsDTO projectDescriptionsDTO)
        {
            try
            {
                if (projectDescriptionsDTO != null)
                {
                    ProjectDescriptions projectDescriptions = new ProjectDescriptions();
                    projectDescriptions.Id = projectDescriptionsDTO.Id;
                    projectDescriptions.Description = projectDescriptionsDTO.Description;
                    projectDescriptions.DescriptionDate = projectDescriptionsDTO.DescriptionDate;
                    projectDescriptions.ProjectId = projectDescriptionsDTO.ProjectId;
                    projectDescriptions.ProjectUpdateId = projectDescriptionsDTO.ProjectUpdateId;
                    projectDescriptions.UserId = projectDescriptionsDTO.UserId;
                    _context.Entry(projectDescriptions).State = EntityState.Modified;
                    _context.SaveChanges();
                }
                else
                {
                    var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                    {
                        Content = new StringContent("Project Descriptions doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
                        StatusCode = HttpStatusCode.NotFound
                    };
                    throw new HttpResponseException(response);
                }
            }
            catch (Exception ex)
            {
                msg = ex.Message;
            }
        }
    }
}
