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
using System.Transactions;
using System.Web.Http;

namespace SMT.Core.Repositories
{
    public class ProjectRepository : IProjectRepository
    {
        protected readonly SMTDbContext _context;
        public ProjectRepository(SMTDbContext context)
        {
            _context = context;
        }

        public void AcceptProject(int ProjectId)
        {
            try
            {
                var projectsDTO = _context.Projects.Where(p => p.Id == ProjectId).FirstOrDefault();
                if (projectsDTO != null)
                {
                    projectsDTO.IsAccept = true;
                    projectsDTO.AcceptedDate = DateTime.Now;
                    //projectsDTO.ProjectStatus InProgress
                    projectsDTO.ProjectStatusId = 7;
                    _context.Entry(projectsDTO).State = EntityState.Modified;
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

        public int Add(ProjectsDTO projectsDTO)
        {
            try
            {

                if (projectsDTO != null)
                {
                    Projects project = new Projects();
                    project.Id = projectsDTO.Id;
                    project.ProjectName = projectsDTO.ProjectName;
                    project.ProjectCreationDate = projectsDTO.ProjectCreationDate.ToLocalTime();//DateTime.Now; 
                    project.Rank = projectsDTO.Rank;
                    project.ProjectStatusId = projectsDTO.ProjectStatusId;
                    project.EndUsersId = projectsDTO.EndUsersId;
                    project.ContractorsId = projectsDTO.ContractorsId;
                    project.GovernoratesId = projectsDTO.GovernorateId;
                    project.ConsultantId = projectsDTO.ConsultantId;
                    project.UserId = projectsDTO.UserId;
                    project.Deadline = projectsDTO.Deadline;
                    project.AcceptedDate = null;
                    project.IsAccept = false;
                    _context.Add(project);
                    _context.SaveChanges();
                    projectsDTO.Id = project.Id;
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
            return projectsDTO.Id;
        }

        public void Delete(int projectsDTOId)
        {
            var Project = _context.Projects.Find(projectsDTOId);

            if (Project != null)
            {
                _context.Projects.Remove(Project);
                _context.SaveChanges();
            }
            else
            {
                throw new NotExistException("Not Exist Exception");

            }
        }

        public ProjectsDTO Get(int id)
        {
            var projectSystem = _context.ProjectSystems.Include(s => s.ProjectComponents).Where(p => p.ProjectId == id).ToList();
            List<ProjectSystemsDTO> lstprojectSystems = new List<ProjectSystemsDTO>();
            foreach (var item in projectSystem)
            {
                ProjectSystemsDTO projectSystemsDTO = new ProjectSystemsDTO
                {
                    Id = item.Id,
                    ProjectComponentsId = item.Id,
                    ProjectComponentName = item.ProjectComponents.ProjectComponentName,
                };
                lstprojectSystems.Add(projectSystemsDTO);
            }
            var project = _context.Projects.Where(p => p.Id == id).Include(p => p.EndUsers).Include(p => p.Contractors)
                                                                  .Include(p => p.EndUsers).Include(p => p.ProjectStatus)
                                                                  .Include(p => p.Governorates).Include(p => p.Consultant)
                                                                  .Include(p => p.User).FirstOrDefault();
            if (project == null)
            {
                throw new NotExistException("Not Exist Exception");
            }
            else
            {
                var projectDTO = new ProjectsDTO
                {
                    Id = project.Id,
                    ProjectName = project.ProjectName,
                    ProjectCreationDate = project.ProjectCreationDate,
                    Rank = project.Rank,
                    //ProjectComponentsId = project.ProjectComponentsId,
                    //ProjectComponentName = project.ProjectComponents.ProjectComponentName,
                    ProjectStatusId = project.ProjectStatusId,
                    ProjectStatusName = project.ProjectStatus.ProjectStatusName,
                    EndUsersId = project.EndUsersId,
                    EndUserContactName = project.EndUsers.ContactName,
                    CompanyName = project.EndUsers.CompanyName,
                    ContractorsId = project.ContractorsId,
                    ContractorContactName = project.Contractors.ContactName,
                    ContractorName = project.Contractors.ContractorName,
                    GovernorateId = project.GovernoratesId,
                    GovernorateName = project.Governorates.GovernorateName,
                    lstprojectSystems = lstprojectSystems,
                    ConsultantId = project.ConsultantId,
                    ConsultantName = project.Consultant.ConsultantName,
                    IsAccept = project.IsAccept,
                    Deadline = project.Deadline,
                    UserId = project.UserId,
                    UserName = project.User.UserName,
                    AcceptedDate = project.AcceptedDate
                };
                return projectDTO;
            }
        }

        public IEnumerable<ProjectsDTO> GetAll()
        {
            var projectDTO = _context.Projects.Include(p => p.Consultant).Include(p => p.Contractors).Include(p => p.EndUsers).Include(p => p.ProjectStatus).Include(p => p.Governorates).Include(p => p.User).Select(project => new ProjectsDTO
            {
                Id = project.Id,
                IsAccept = project.IsAccept,
                ProjectName = project.ProjectName,
                ProjectCreationDate = project.ProjectCreationDate,
                Rank = project.Rank,
                ProjectStatusId = project.ProjectStatusId,
                ProjectStatusName = project.ProjectStatus.ProjectStatusName,
                EndUsersId = project.EndUsersId,
                EndUserContactName = project.EndUsers.ContactName,
                CompanyName = project.EndUsers.CompanyName,
                ContractorsId = project.ContractorsId,
                ContractorContactName = project.Contractors.ContactName,
                ContractorName = project.Contractors.ContractorName,
                GovernorateId = project.GovernoratesId,
                GovernorateName = project.Governorates.GovernorateName,
                ConsultantId = project.ConsultantId,
                ConsultantName = project.Consultant.ConsultantName,
                Deadline = project.Deadline,
                UserId = project.UserId,
                UserName = project.User.UserName,
                AcceptedDate = Convert.ToDateTime(project.AcceptedDate)
            }).OrderByDescending(p => p.Id).ToList();
            return projectDTO;
        }

        public IEnumerable<ProjectsDTO> GetAllAcceptedProjects()
        {
            var projectDTO = _context.Projects.Where(p => p.IsAccept == true).Include(p => p.Consultant).Include(p => p.Contractors).Include(p => p.EndUsers).Include(p => p.ProjectStatus).Include(p => p.Governorates).Select(project => new ProjectsDTO
            {
                Id = project.Id,
                IsAccept = project.IsAccept,
                ProjectName = project.ProjectName,
                ProjectCreationDate = project.ProjectCreationDate,
                Rank = project.Rank,
                ProjectStatusId = project.ProjectStatusId,
                ProjectStatusName = project.ProjectStatus.ProjectStatusName,
                EndUsersId = project.EndUsersId,
                EndUserContactName = project.EndUsers.ContactName,
                CompanyName = project.EndUsers.CompanyName,
                ContractorsId = project.ContractorsId,
                ContractorContactName = project.Contractors.ContactName,
                ContractorName = project.Contractors.ContractorName,
                GovernorateId = project.GovernoratesId,
                GovernorateName = project.Governorates.GovernorateName,
                Deadline = project.Deadline,
                UserId = project.UserId,
                UserName = project.User.UserName,
                AcceptedDate = Convert.ToDateTime(project.AcceptedDate)
            }).OrderByDescending(p => p.Id).ToList();
            return projectDTO;
        }


        public void Update(int projectsDTOId, ProjectsDTO projectsDTO)
        {
            if (projectsDTOId != projectsDTO.Id)
            {
                throw new NotExistException("Not Exist Exception");
            }
            Projects project = new Projects();
            project.Id = projectsDTO.Id;
            project.ProjectName = projectsDTO.ProjectName;
            project.ProjectCreationDate = projectsDTO.ProjectCreationDate.ToLocalTime();
            project.Rank = projectsDTO.Rank;
            project.ProjectStatusId = projectsDTO.ProjectStatusId;
            project.EndUsersId = projectsDTO.EndUsersId;
            project.ContractorsId = projectsDTO.ContractorsId;
            project.GovernoratesId = projectsDTO.GovernorateId;
            project.ConsultantId = projectsDTO.ConsultantId;
            project.UserId = projectsDTO.UserId;
            project.Deadline = projectsDTO.Deadline.ToLocalTime();
            project.AcceptedDate = projectsDTO.AcceptedDate;
            project.IsAccept = projectsDTO.IsAccept;
            _context.Entry(project).State = EntityState.Modified;
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