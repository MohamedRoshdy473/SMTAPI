using System;
using System.Collections.Generic;

#nullable disable

namespace SMT.Data.Models.HRDBContext
{
    public partial class Attendance
    {
        public int Id { get; set; }
        public int EmployeeId { get; set; }
        public DateTime Arrival { get; set; }
        public DateTime Departure { get; set; }

        public virtual Employee Employee { get; set; }
    }
}
