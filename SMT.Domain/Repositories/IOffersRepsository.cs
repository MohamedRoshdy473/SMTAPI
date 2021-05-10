using SMT.Data.DTO;
using SMT.Data.Models.SMTDBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Repositories
{
    public interface IOffersRepsository
    {
        OffersDTO Get(int id);
        IEnumerable<OffersDTO> GetAll();
        int Add(OffersDTO offersDTO);
        void Delete(int offersDTOId);
        void Update(int offersDTOId, OffersDTO offersDTO);
    }
}
