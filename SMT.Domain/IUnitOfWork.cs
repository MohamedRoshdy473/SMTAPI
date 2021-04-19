using SMT.Domain.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain
{
    public interface IUnitOfWork:IDisposable
    {
        int CommitAsync();
        IProjectComponentsRepository ProjectComponents { get; }
        IProjectStatusRepository ProjectStatus { get; }
        IContractorsRepository Contractors { get; }
        IEndUsersRepository EndUsers { get; }
    }
}
