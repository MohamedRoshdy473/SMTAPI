using System;
using System.Collections.Generic;

#nullable disable

namespace SMT.Data.Models.HRDBContext
{
    public partial class Excuse
    {
        public int Id { get; set; }
        public int EmployeeId { get; set; }
        public DateTime Date { get; set; }
        public string Time { get; set; }
        public int Hours { get; set; }
        public string Approved { get; set; }
        public string Comment { get; set; }

        public virtual Employee Employee { get; set; }
    }
}
