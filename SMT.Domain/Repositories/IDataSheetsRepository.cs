using Microsoft.AspNetCore.Mvc;
using SMT.Data.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Repositories
{
    public interface IDataSheetsRepository
    {
        DataSheetsDTO Get(int id);
        IEnumerable<DataSheetsDTO> GetAll();
        IActionResult Add(DataSheetsDTO dataSheetsDTO);
        void Delete(int dataSheetsDTOId);
        void Update(int dataSheetsDTOId, DataSheetsDTO dataSheetsDTO);
    }
}
