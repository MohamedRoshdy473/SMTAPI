using Microsoft.AspNetCore.Mvc;
using SMT.Data.DTO;
using SMT.Domain;
using SMT.Domain.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Core.Services
{
    public class DataSheetsService : IDataSheetsService
    {
        private readonly IUnitOfWork _unitOfWork;

        public DataSheetsService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }
        public IActionResult AddDataSheet(DataSheetsDTO dataSheetsDTO)
        {
           return _unitOfWork.DataSheets.Add(dataSheetsDTO);          
        }

        public void DeleteDataSheet(int dataSheetsDTOId)
        {
            _unitOfWork.DataSheets.Delete(dataSheetsDTOId);
        }

        public IEnumerable<DataSheetsDTO> GetAllDataSheets()
        {
            return _unitOfWork.DataSheets.GetAll();
        }

        public DataSheetsDTO GetDataSheet(int id)
        {
            return _unitOfWork.DataSheets.Get(id);
        }

        public void UpdateDataSheet(int dataSheetsDTOId, DataSheetsDTO dataSheetsDTO)
        {
            _unitOfWork.DataSheets.Update(dataSheetsDTOId, dataSheetsDTO);
        }
    }
}
