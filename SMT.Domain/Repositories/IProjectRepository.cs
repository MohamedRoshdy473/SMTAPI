using SMT.Data.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Repositories
{
    public interface IProjectRepository
    {
        ProjectsDTO Get(int id);
        IEnumerable<ProjectsDTO> GetAll();
        int Add(ProjectsDTO projectsDTO);
        void Delete(int projectsDTOId);
        void Update(int projectsDTOId, ProjectsDTO projectsDTO);
    }
}
