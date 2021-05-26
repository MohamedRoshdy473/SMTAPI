using System;
using System.Collections.Generic;

#nullable disable

namespace SMT.Data.Models.HRDBContext
{
    public partial class EmployeeDocumentsDto
    {
        public int Id { get; set; }
        public string DocumentName { get; set; }
        public string FileName { get; set; }
        public int EmployeeId { get; set; }
        public string EmployeeName { get; set; }
    }
}
