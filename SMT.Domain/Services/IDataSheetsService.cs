using Microsoft.AspNetCore.Mvc;
using SMT.Data.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain.Services
{
    public interface IDataSheetsService
    {
        DataSheetsDTO GetDataSheet(int id);
        IEnumerable<DataSheetsDTO> GetAllDataSheets();
        IActionResult AddDataSheet(DataSheetsDTO dataSheetsDTO);
        void DeleteDataSheet(int dataSheetsDTOId);
        void UpdateDataSheet(int dataSheetsDTOId, DataSheetsDTO dataSheetsDTO);
    }
}
