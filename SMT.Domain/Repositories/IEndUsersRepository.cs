using SMT.Data.Models.SMTDBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Repositories
{
   public interface IEndUsersRepository
    {
        EndUsers Get(int id);
        IEnumerable<EndUsers> GetAll();
        void Add(EndUsers EndUser);
        void Delete(int EndUserId);
        void Update(int EndUserId, EndUsers EndUser);
    }
}
