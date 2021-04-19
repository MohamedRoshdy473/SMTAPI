using SMT.Data.Models.SMTDBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Services
{
    public interface IContractorsService
    {
        Contractors GetContractor(int id);
        IEnumerable<Contractors> GetAllContractors();
        void AddContractor(Contractors Contractor);
        void DeleteContractor(int ContractorId);
        void UpdateContractor(int ContractorId, Contractors Contractor);
    }
}
