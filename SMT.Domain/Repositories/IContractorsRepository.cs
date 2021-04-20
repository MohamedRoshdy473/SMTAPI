using SMT.Data.Models.SMTDBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Repositories
{
    public interface IContractorsRepository
    {
        Contractors Get(int id);
        IEnumerable<Contractors> GetAll();
        void Add(Contractors Contractor);
        void Delete(int ContractorId);
        void Update(int ContractorId, Contractors Contractor);
    }
}
