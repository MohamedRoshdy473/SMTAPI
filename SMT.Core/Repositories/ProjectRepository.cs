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
        private string msg;
        public ProjectRepository(SMTDbContext context)
        {
            _context = context;
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
                    project.ProjectCreationDate = projectsDTO.ProjectCreationDate;
                    project.Rank = projectsDTO.Rank;
                    project.ProjectComponentsId = projectsDTO.ProjectComponentsId;
                    project.ProjectStatusId = projectsDTO.ProjectStatusId;
                    project.EndUsersId = projectsDTO.EndUsersId;
                    project.ContractorsId = projectsDTO.ContractorsId;
                    _context.Add(project);
                    _context.SaveChanges();
                }
                else
                {
                    var response = new HttpResponseMessage(HttpStatusCode.NotFound)
                    {
                        Content = new StringContent("Project  doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
                        StatusCode = HttpStatusCode.NotFound
                    };
                    throw new HttpResponseException(response);
                }       
            }
            catch (Exception ex)
            {
                msg = ex.Message;
            }
            return projectsDTO.Id;
        }

public void Delete(int projectsDTOId)
{
    var Project = _context.Projects.Find(projectsDTOId);
    try
    {
        if (Project != null)
        {
            _context.Projects.Remove(Project);
            _context.SaveChanges();
        }
        else
        {
            var response = new HttpResponseMessage(HttpStatusCode.NotFound)
            {
                Content = new StringContent("Project doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
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

public ProjectsDTO Get(int id)
{
    var project = _context.Projects.Where(p => p.Id == id).Include(p => p.EndUsers).Include(p => p.Contractors)
                                                          .Include(p => p.EndUsers).Include(p => p.ProjectStatus)
                                                          .Include(p => p.ProjectComponents).FirstOrDefault();

    if (project == null)
    {
        var response = new HttpResponseMessage(HttpStatusCode.NotFound)
        {
            Content = new StringContent("Project doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
            StatusCode = HttpStatusCode.NotFound
        };
        throw new HttpResponseException(response);
    }
    else
    {
        var projectDTO = new ProjectsDTO
        {
            Id = project.Id,
            ProjectName = project.ProjectName,
            ProjectCreationDate = project.ProjectCreationDate,
            Rank = project.Rank,
            ProjectComponentsId = project.ProjectComponentsId,
            ProjectComponentName = project.ProjectComponents.ProjectComponentName,
            ProjectStatusId = project.ProjectStatusId,
            ProjectStatusName = project.ProjectStatus.ProjectStatusName,
            EndUsersId = project.EndUsersId,
            EndUserContactName = project.EndUsers.ContactName,
            CompanyName = project.EndUsers.CompanyName,
            ContractorsId = project.ContractorsId,
            ContractorContactName = project.Contractors.ContactName,
            ContractorName = project.Contractors.ContractorName
        };
        return projectDTO;

    }
}

public IEnumerable<ProjectsDTO> GetAll()
{
    var projectDTO = _context.Projects.Select(project => new ProjectsDTO
    {
        Id = project.Id,
        ProjectName = project.ProjectName,
        ProjectCreationDate = project.ProjectCreationDate,
        Rank = project.Rank,
        ProjectComponentsId = project.ProjectComponentsId,
        ProjectComponentName = project.ProjectComponents.ProjectComponentName,
        ProjectStatusId = project.ProjectStatusId,
        ProjectStatusName = project.ProjectStatus.ProjectStatusName,
        EndUsersId = project.EndUsersId,
        EndUserContactName = project.EndUsers.ContactName,
        CompanyName = project.EndUsers.CompanyName,
        ContractorsId = project.ContractorsId,
        ContractorContactName = project.Contractors.ContactName,
        ContractorName = project.Contractors.ContractorName
    }).ToList();
    return projectDTO;
}

public void Update(int projectsDTOId, ProjectsDTO projectsDTO)
{
    try
    {
        if (projectsDTO != null)
        {

            Projects project = new Projects();
            project.Id = projectsDTO.Id;
            project.ProjectName = projectsDTO.ProjectName;
            project.ProjectCreationDate = projectsDTO.ProjectCreationDate;
            project.Rank = projectsDTO.Rank;
            project.ProjectComponentsId = projectsDTO.ProjectComponentsId;
            project.ProjectStatusId = projectsDTO.ProjectStatusId;
            project.EndUsersId = projectsDTO.EndUsersId;
            project.ContractorsId = projectsDTO.ContractorsId;
            _context.Entry(project).State = EntityState.Modified;
            _context.SaveChanges();
        }
        else
        {
            var response = new HttpResponseMessage(HttpStatusCode.NotFound)
            {
                Content = new StringContent("Project doesn't exist", System.Text.Encoding.UTF8, "text/plain"),
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
