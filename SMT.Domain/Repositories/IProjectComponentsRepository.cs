using SMT.Data.Models.SMTDBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Repositories
{
    public interface IProjectComponentsRepository
    {
        ProjectComponents Get(int id);
        IEnumerable<ProjectComponents> GetAll();
        void Add(ProjectComponents ProjectComponent);
        void Delete(int ProjectComponentId);
        void Update(int ProjectComponentId, ProjectComponents ProjectComponent);
    }
}
