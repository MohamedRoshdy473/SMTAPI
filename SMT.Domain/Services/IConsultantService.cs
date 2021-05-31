using SMT.Data.Models.SMTDBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Services
{
    public interface IConsultantService
    {
        Consultant GetConsultant(int id);
        IEnumerable<Consultant> GetAllConsultants();
        void AddConsultant(Consultant consultant);
        void DeleteConsultant(int consultantId);
        void UpdateConsultant(int consultantId, Consultant consultant);
    }
}
