using System;
using System.Collections.Generic;

#nullable disable

namespace SMT.Data.Models.HRDBContext
{
    public partial class LeaveFile
    {
        public int Id { get; set; }
        public string FileName { get; set; }
        public int LeaveRequestId { get; set; }

        public virtual LeaveRequest LeaveRequest { get; set; }
    }
}
