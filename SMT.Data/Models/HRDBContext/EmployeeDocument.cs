using System;
using System.Collections.Generic;

#nullable disable

namespace SMT.Data.Models.HRDBContext
{
    public partial class EmployeeDocument
    {
        public int Id { get; set; }
        public string DocumentName { get; set; }
        public int EmployeeId { get; set; }
        public string FileName { get; set; }

        public virtual Employee Employee { get; set; }
    }
}
