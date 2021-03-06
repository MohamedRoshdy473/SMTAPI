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
                    if (projectDescriptionsDTO.ProjectUpdateId == 0)
                    {
                        projectDescriptionsDTO.ProjectUpdateId = null;
                    }
                    ProjectDescriptions projectDescriptions = new ProjectDescriptions();
                    //projectDescriptions.Id = projectDescriptionsDTO.Id;
                    projectDescriptions.Description = projectDescriptionsDTO.Description;
                    projectDescriptions.DescriptionDate = DateTime.Now;//projectDescriptionsDTO.DescriptionDate;
                    projectDescriptions.ProjectId = projectDescriptionsDTO.ProjectId;
                    projectDescriptions.ProjectUpdateId = projectDescriptionsDTO.ProjectUpdateId;
                    projectDescriptions.UserId = projectDescriptionsDTO.UserId;
                    _context.Add(projectDescriptions);
                    _context.SaveChanges();
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

        public void Delete(int projectDescriptionsDTOId)
        {
            var projectDescriptions = _context.ProjectDescriptions.Find(projectDescriptionsDTOId);

            if (projectDescriptions != null)
            {
                _context.ProjectDescriptions.Remove(projectDescriptions);
                _context.SaveChanges();
            }
            else
            {
                throw new NotExistException("Not Exist Exception");
            }
        }

        public ProjectDescriptionsDTO Get(int id)
        {
            var ProDescription = _context.ProjectDescriptions.Where(d => d.Id == id)
                                      .Include(d => d.projects).Include(d => d.ProjectUpdate).Include(d => d.User).FirstOrDefault();


            if (ProDescription == null)
            {
                throw new NotExistException("Not Exist Exception");
            }
            else
            {
                var projectDescriptionsDTO = new ProjectDescriptionsDTO
                {
                    Id = ProDescription.Id,
                    Description = ProDescription.Description,
                    DescriptionDate = ProDescription.DescriptionDate,
                    ProjectId = ProDescription.ProjectId,
                    projectName = ProDescription.projects.ProjectName,
                    ProjectUpdateId = (int)ProDescription.ProjectUpdateId,
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
                ProjectId = ProDescription.ProjectId,
                projectName = ProDescription.projects.ProjectName,
                ProjectUpdateId = (int)ProDescription.ProjectUpdateId,
                UserId = ProDescription.UserId,
                UserName = ProDescription.User.UserName

            }).ToList();
            return projectDescriptionsDTO;
        }

        public IEnumerable<ProjectDescriptionsDTO> GetAllProjectByUserId(string UserId)
        {
            var projects = _context.ProjectDescriptions.Where(d => d.UserId == UserId && d.ProjectUpdateId==null)
                .Include(p => p.projects.Contractors).Include(p => p.projects.EndUsers).Include(p => p.projects.ProjectStatus)
                .Select(projDesc => new ProjectDescriptionsDTO
            {
                Id = projDesc.Id,
                Description = projDesc.Description,
                ProjectId = projDesc.ProjectId,
                DescriptionDate = projDesc.DescriptionDate,
                projectName = projDesc.projects.ProjectName,
                UserId = projDesc.UserId,
                ProjectUpdateId = projDesc.ProjectUpdateId,
                UserName = projDesc.User.UserName,

                IsAccept = projDesc.projects.IsAccept,
                ProjectCreationDate = projDesc.projects.ProjectCreationDate,
                Rank = projDesc.projects.Rank,
                ProjectStatusId = projDesc.projects.ProjectStatusId,
                ProjectStatusName = projDesc.projects.ProjectStatus.ProjectStatusName,
                EndUsersId = projDesc.projects.EndUsersId,
                EndUserContactName = projDesc.projects.EndUsers.ContactName,
                CompanyName = projDesc.projects.EndUsers.CompanyName,
                ContractorsId = projDesc.projects.ContractorsId,
                ContractorContactName = projDesc.projects.Contractors.ContactName,
                ContractorName = projDesc.projects.Contractors.ContractorName,
                GovernorateId = projDesc.projects.GovernoratesId,
                GovernorateName = projDesc.projects.Governorates.GovernorateName
            }).ToList();

            return projects;
        }

        public IEnumerable<ProjectDescriptionsDTO> GetDescriptionsByProjectId(int id)
        {
            var projDescriptions = _context.ProjectDescriptions.Where(d => d.ProjectId == id).Select(projDesc => new ProjectDescriptionsDTO
            {
                Id = projDesc.Id,
                Description = projDesc.Description,
                ProjectId = projDesc.ProjectId,
                DescriptionDate = projDesc.DescriptionDate,
                projectName = projDesc.projects.ProjectName,
                UserId = projDesc.UserId,
                ProjectUpdateId = projDesc.ProjectUpdateId,
                UserName = projDesc.User.UserName
            }).OrderByDescending(o=>o.Id).ToList();

            return projDescriptions;
        }

        public IEnumerable<ProjectDescriptionsDTO> GetDescriptionsByProjectUpdateId(int ProjectUpdateId)
        {
            var projDescriptions = _context.ProjectDescriptions.Where(d => d.ProjectUpdateId == ProjectUpdateId).Select(projDesc => new ProjectDescriptionsDTO
            {
                Id = projDesc.Id,
                Description = projDesc.Description,
                ProjectId = projDesc.ProjectId,
                DescriptionDate = projDesc.DescriptionDate,
                projectName = projDesc.projects.ProjectName,
                UserId = projDesc.UserId,
                ProjectUpdateId = projDesc.ProjectUpdateId,
                
                UserName = projDesc.User.UserName
            }).ToList();

            return projDescriptions;
        }

        public void Update(int projectDescriptionsDTOId, ProjectDescriptionsDTO projectDescriptionsDTO)
        {
            if (projectDescriptionsDTOId != projectDescriptionsDTO.Id)
            {
                throw new NotExistException("Not Exist Exception");
            }
            ProjectDescriptions projectDescriptions = new ProjectDescriptions();
            projectDescriptions.Id = projectDescriptionsDTO.Id;
            projectDescriptions.Description = projectDescriptionsDTO.Description;
            projectDescriptions.DescriptionDate = projectDescriptionsDTO.DescriptionDate.ToLocalTime();
            projectDescriptions.ProjectId = projectDescriptionsDTO.ProjectId;
            projectDescriptions.ProjectUpdateId = projectDescriptionsDTO.ProjectUpdateId;
            projectDescriptions.UserId = projectDescriptionsDTO.UserId;
            _context.Entry(projectDescriptions).State = EntityState.Modified;
            try
            {
                _context.SaveChanges();
            }
            catch (Exception)
            {
                throw new NotCompletedException("Not Completed Exception");
            }
        }
    }
}
