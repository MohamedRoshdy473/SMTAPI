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
    public class GovernoratesService : IGovernoratesService
    {
        private readonly IUnitOfWork _unitOfWork;

        public GovernoratesService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }
        public void AddGovernorate(Governorates Governorate)
        {
            _unitOfWork.Governorates.Add(Governorate);
        }

        public void DeleteGovernorate(int GovernorateId)
        {
            _unitOfWork.Governorates.Delete(GovernorateId);
        }

        public IEnumerable<Governorates> GetAllGovernorates()
        {
            return _unitOfWork.Governorates.GetAll();
        }

        public Governorates GetGovernorate(int id)
        {
            return _unitOfWork.Governorates.Get(id);
        }

        public void UpdateGovernorate(int GovernorateId, Governorates Governorate)
        {
            _unitOfWork.Governorates.Update(GovernorateId, Governorate);
        }
    }
}
