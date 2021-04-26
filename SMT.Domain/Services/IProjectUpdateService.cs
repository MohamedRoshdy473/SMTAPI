using SMT.Data.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Services
{
    public interface IProjectUpdateService
    {
        ProjectUpdateDTO GetProjectUpdate(int id);
        IEnumerable<ProjectUpdateDTO> GetAllProjectUpdates();
        int AddProjectUpdate(ProjectUpdateDTO ProjectUpdate);
        void DeleteProjectUpdate(int ProjectUpdateId);
        void EditProjectUpdate(int ProjectUpdateId, ProjectUpdateDTO ProjectUpdate);
    }
}
