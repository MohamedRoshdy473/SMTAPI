using SMT.Data.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Repositories
{
    public interface IProjectDescriptionsRepository
    {
        ProjectDescriptionsDTO Get(int id);
        IEnumerable<ProjectDescriptionsDTO> GetAll();
        IEnumerable<ProjectDescriptionsDTO> GetDescriptionsByProjectId(int ProjectId);
        IEnumerable<ProjectDescriptionsDTO> GetDescriptionsByProjectUpdateId(int ProjectUpdateId);
        void Add(ProjectDescriptionsDTO projectDescriptionsDTO);
        void Delete(int projectDescriptionsDTOId);
        void Update(int projectDescriptionsDTOId, ProjectDescriptionsDTO projectDescriptionsDTO);
    }
}
