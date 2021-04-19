using SMT.Data.Models.SMTDBContext;
using SMT.Domain;
using SMT.Domain.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Core.Services
{
    public class ContractorsService : IContractorsService
    {
        private readonly IUnitOfWork _unitOfWork;

        public ContractorsService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }
        public void AddContractor(Contractors Contractor)
        {
            _unitOfWork.Contractors.Add(Contractor);
        }

        public void DeleteContractor(int ContractorId)
        {
            _unitOfWork.Contractors.Delete(ContractorId);
        }

        public IEnumerable<Contractors> GetAllContractors()
        {
            return _unitOfWork.Contractors.GetAll();
        }

        public Contractors GetContractor(int id)
        {
            return _unitOfWork.Contractors.Get(id);
        }

        public void UpdateContractor(int ContractorId, Contractors Contractor)
        {
            _unitOfWork.Contractors.Update(ContractorId, Contractor);
        }
    }
}
