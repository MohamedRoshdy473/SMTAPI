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
    public class EndUsersService : IEndUsersService
    {
        private readonly IUnitOfWork _unitOfWork;

        public EndUsersService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }
        public void AddEndUser(EndUsers EndUser)
        {
            _unitOfWork.EndUsers.Add(EndUser);
        }

        public void DeleteEndUser(int EndUserId)
        {
            _unitOfWork.EndUsers.Delete(EndUserId);
        }

        public IEnumerable<EndUsers> GetAllEndUsers()
        {
            return _unitOfWork.EndUsers.GetAll();
        }

        public EndUsers GetEndUser(int id)
        {
           return _unitOfWork.EndUsers.Get(id);
        }

        public void UpdateEndUser(int EndUserId, EndUsers EndUser)
        {
            _unitOfWork.EndUsers.Update(EndUserId, EndUser);
        }
    }
}
