using SMT.Data.Models.SMTDBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Repositories
{
    public interface IProjectStatusRepository
    {
        ProjectStatus Get(int id);
        IEnumerable<ProjectStatus> GetAll();
        void Add(ProjectStatus ProjectStatus);
        void Delete(int ProjectStatusId);
        void Update(int ProjectStatusId, ProjectStatus ProjectStatus);
    }
}
