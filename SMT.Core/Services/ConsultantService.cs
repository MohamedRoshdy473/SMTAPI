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
    public class ConsultantService : IConsultantService
    {
        private readonly IUnitOfWork _unitOfWork;

        public ConsultantService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }
        public void AddConsultant(Consultant consultant)
        {
            _unitOfWork.Consultant.Add(consultant);
        }

        public void DeleteConsultant(int consultantId)
        {
            _unitOfWork.Consultant.Delete(consultantId);
        }

        public IEnumerable<Consultant> GetAllConsultants()
        {
            return _unitOfWork.Consultant.GetAll();
        }

        public Consultant GetConsultant(int id)
        {
            return _unitOfWork.Consultant.Get(id);
        }

        public void UpdateConsultant(int consultantId, Consultant consultant)
        {
            _unitOfWork.Consultant.Update(consultantId, consultant);
        }
    }
}
