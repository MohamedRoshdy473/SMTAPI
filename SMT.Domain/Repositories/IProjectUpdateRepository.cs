using SMT.Data.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Repositories
{
    public interface IProjectUpdateRepository
    {
        ProjectUpdateDTO Get(int id);
        IEnumerable<ProjectUpdateDTO> GetAll();
        int Add(ProjectUpdateDTO ProjectUpdate);
        void Delete(int ProjectUpdateId);
        void Update(int ProjectUpdateId, ProjectUpdateDTO ProjectUpdate);
    }
}
