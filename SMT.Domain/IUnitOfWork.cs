using SMT.Domain.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain
{
    public interface IUnitOfWork : IDisposable
    {
        int CommitAsync();
        IProjectComponentsRepository ProjectComponents { get; }
        IProjectStatusRepository ProjectStatus { get; }
        IContractorsRepository Contractors { get; }
        IEndUsersRepository EndUsers { get; }
        IProjectRepository Project { get; }
        IProjectDescriptionsRepository ProjectDescriptions { get; }
        IGovernoratesRepository Governorates { get; }
        IDocumentsCategoriesRepository DocumentsCategories {get;}
        IProjectUpdateRepository ProjectUpdate {get;}
        IProjectDocumentsRepository ProjectDocuments { get; }
        IOfferStatusRepository OfferStatus { get; }
        IOfferDocumentsRepository OfferDocuments { get; }
        IProjectCostsRepository ProjectCosts { get; }
        IOffersRepsository Offers { get; }
        IOfferDescriptionsRepository OfferDescriptions { get; }
        IDataSheetsRepository DataSheets { get; }
        IProjectSystemsRepository ProjectSystems { get; }
        IEmployeeRepository Employee { get; }


    }
}
