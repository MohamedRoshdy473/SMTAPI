using SMT.Data.Models.SMTDBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Services
{
    public interface IGovernoratesService
    {
        Governorates GetGovernorate(int id);
        IEnumerable<Governorates> GetAllGovernorates();
        void AddGovernorate(Governorates Governorate);
        void DeleteGovernorate(int GovernorateId);
        void UpdateGovernorate(int GovernorateId, Governorates Governorate);
    }
}
