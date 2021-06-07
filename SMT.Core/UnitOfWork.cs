using SMT.Core.Repositories;
using SMT.Data.Models.HRDBContext;
using SMT.Data.Models.SMTDBContext;
using SMT.Domain;
using SMT.Domain.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Core
{
    public class UnitOfWork : IUnitOfWork
    {
        private bool disposed = false;
        private readonly SMTDbContext _context;
        private readonly HRDBContext _HRcontext;
        private ProjectComponentsRepository _projectComponentsRepository;
        private ProjectStatusRepository _projectStatusRepository;
        private ContractorsRepository _contractors;
        private EndUsersRepository _endUsers;
        private ProjectRepository _projectRepository;
        private ProjectDescriptionsRepository _projectDescriptionsRepository;
        private GovernoratesRepository _governoratesRepository;
        private DocumentsCategoriesRepository _documentsCategoriesRepository;
        private ProjectUpdateRepository _projectUpdateRepository;
        private ProjectDocumentsRepository _projectDocumentsRepository;
        private OfferStatusRepository _offerStatusRepository;
        private OfferDocumentsRepository _offerDocumentsRepository;
        private ProjectCostsRepository _projectCostRepository;
        private OffersRepsository _offerRepository;
        private OfferDescriptionsRepository _offerDescriptions;
        private DataSheetsRepository _dataSheetsRepository;
        private ProjectSystemsRepository _projectSystemsRepository;
        private EmployeeRepositories _employeeRepository;
        private AssignedProjectRepository _assignedProjectRepository;
        private ConsultantRepository _consultantRepository;

        //public UnitOfWork(SMTDbContext context)
        //{
        //    _context = context;
        //}
        public UnitOfWork(SMTDbContext context,HRDBContext HRcontext)
        {
            _HRcontext = HRcontext;
            _context = context;
        }
        public IProjectComponentsRepository projectComponentsRepository => new ProjectComponentsRepository(_context);
        public IProjectStatusRepository ProjectStatusRepository => new ProjectStatusRepository(_context);
        public IContractorsRepository ContractorsRepository => new ContractorsRepository(_context);
        public IEndUsersRepository EndUsersRepository => new EndUsersRepository(_context);
        public IProjectRepository ProjectRepository => new ProjectRepository(_context);
        public IProjectDescriptionsRepository ProjectDescriptionsRepository => new ProjectDescriptionsRepository(_context);
        public IGovernoratesRepository GovernoratesRepository => new GovernoratesRepository(_context);
        public IDocumentsCategoriesRepository DocumentsCategoriesRepository => new DocumentsCategoriesRepository(_context);
        public IProjectUpdateRepository ProjectUpdateRepository => new ProjectUpdateRepository(_context);
        public IProjectDocumentsRepository ProjectDocumentsRepository => new ProjectDocumentsRepository(_context);
        public IOfferStatusRepository OfferStatusRepository => new OfferStatusRepository(_context);
        public IOfferDocumentsRepository OfferDocumentsRepository => new OfferDocumentsRepository(_context);
        public IProjectCostsRepository ProjectCostsRepository => new ProjectCostsRepository(_context);
        public IOffersRepsository OffersRepsository => new OffersRepsository(_context);
        public IOfferDescriptionsRepository OfferDescriptionsRepository => new OfferDescriptionsRepository(_context);
        public IDataSheetsRepository DataSheetsRepository => new DataSheetsRepository(_context);
        public IProjectSystemsRepository ProjectSystemsRepository => new ProjectSystemsRepository(_context);
        public IEmployeeRepository EmployeeRepository => new EmployeeRepositories(_HRcontext);
        public IAssignedProjectRepository AssignedProjectRepository => new AssignedProjectRepository(_context,_HRcontext);
        public IConsultantRepository ConsultantRepository => new ConsultantRepository(_context);
        public int CommitAsync()
        {
            return _context.SaveChanges();
        }
        protected virtual void Dispose(bool disposing)
        {
            if (!this.disposed)
            {
                if (disposing)
                {
                    _context.Dispose();
                }
            }
            this.disposed = true;
        }
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        public IProjectComponentsRepository ProjectComponents => _projectComponentsRepository = _projectComponentsRepository ?? new ProjectComponentsRepository(_context);
        public IProjectStatusRepository ProjectStatus => _projectStatusRepository = _projectStatusRepository ?? new ProjectStatusRepository(_context);
        public IContractorsRepository Contractors => _contractors = _contractors ?? new ContractorsRepository(_context);
        public IEndUsersRepository EndUsers => _endUsers = _endUsers ?? new EndUsersRepository(_context);
        public IProjectRepository Project => _projectRepository = _projectRepository ?? new ProjectRepository(_context);
        public IProjectDescriptionsRepository ProjectDescriptions => _projectDescriptionsRepository = _projectDescriptionsRepository ?? new ProjectDescriptionsRepository(_context);
        public IGovernoratesRepository Governorates => _governoratesRepository = _governoratesRepository ?? new GovernoratesRepository(_context);
        public IDocumentsCategoriesRepository DocumentsCategories => _documentsCategoriesRepository = _documentsCategoriesRepository ?? new DocumentsCategoriesRepository(_context);
        public IProjectUpdateRepository ProjectUpdate => _projectUpdateRepository = _projectUpdateRepository ?? new ProjectUpdateRepository(_context);
        public IProjectDocumentsRepository ProjectDocuments => _projectDocumentsRepository = _projectDocumentsRepository ?? new ProjectDocumentsRepository(_context);
        public IOfferStatusRepository OfferStatus => _offerStatusRepository = _offerStatusRepository ?? new OfferStatusRepository(_context);
        public IOfferDocumentsRepository OfferDocuments => _offerDocumentsRepository = _offerDocumentsRepository ?? new OfferDocumentsRepository(_context);
        public IProjectCostsRepository ProjectCosts => _projectCostRepository = _projectCostRepository ?? new ProjectCostsRepository(_context);
        public IOffersRepsository Offers => _offerRepository = _offerRepository ?? new OffersRepsository(_context);
        public IOfferDescriptionsRepository OfferDescriptions => _offerDescriptions = _offerDescriptions ?? new OfferDescriptionsRepository(_context);
        public IDataSheetsRepository DataSheets => _dataSheetsRepository = _dataSheetsRepository ?? new DataSheetsRepository(_context);
        public IProjectSystemsRepository ProjectSystems => _projectSystemsRepository = _projectSystemsRepository ?? new ProjectSystemsRepository(_context);
        public IEmployeeRepository Employee => _employeeRepository = _employeeRepository ?? new EmployeeRepositories(_HRcontext);
        public IAssignedProjectRepository AssignedProject => _assignedProjectRepository = _assignedProjectRepository ?? new AssignedProjectRepository(_context,_HRcontext);

        public IConsultantRepository Consultant => _consultantRepository = _consultantRepository ?? new ConsultantRepository(_context);
    }
}