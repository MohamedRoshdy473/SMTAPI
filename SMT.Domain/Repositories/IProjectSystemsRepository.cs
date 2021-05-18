using SMT.Data.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Repositories
{
    public interface IProjectSystemsRepository
    {
        ProjectSystemsDTO Get(int id);
        IEnumerable<ProjectSystemsDTO> GetAll();
        void Add(List<ProjectSystemsDTO> projectSystemsDTO);
        void Delete(int projectSystemsDTOId);
        void Update(int projectSystemsDTOId, ProjectSystemsDTO projectSystemsDTO);
    }
}
