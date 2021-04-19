using SMT.Data.Models.SMTDBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Services
{
   public interface IEndUsersService
    {
        EndUsers GetEndUser(int id);
        IEnumerable<EndUsers> GetAllEndUsers();
        void AddEndUser(EndUsers EndUser);
        void DeleteEndUser(int EndUserId);
        void UpdateEndUser(int EndUserId, EndUsers EndUser);
    }
}
