using SMT.Data.Models.SMTDBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Repositories
{
    public interface IGovernoratesRepository
    {
        Governorates Get(int id);
        IEnumerable<Governorates> GetAll();
        void Add(Governorates Governorate);
        void Delete(int GovernorateId);
        void Update(int GovernorateId, Governorates Governorate);
    }
}
