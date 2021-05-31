using SMT.Data.Models.SMTDBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Repositories
{
    public interface IConsultantRepository
    {
        Consultant Get(int id);
        IEnumerable<Consultant> GetAll();
        void Add(Consultant consultant);
        void Delete(int consultantId);
        void Update(int consultantId, Consultant consultant);
    }
}
