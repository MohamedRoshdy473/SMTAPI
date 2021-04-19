using System;
using System.Collections.Generic;

#nullable disable

namespace SMT.Data.Models.HRDBContext
{
    public partial class LeaveRequest
    {
        public LeaveRequest()
        {
            LeaveFiles = new HashSet<LeaveFile>();
        }

        public int Id { get; set; }
        public int EmployeeId { get; set; }
        public int LeaveTypeId { get; set; }
        public DateTime Start { get; set; }
        public DateTime Date { get; set; }
        public int Days { get; set; }
        public int AlternativeEmpId { get; set; }
        public string Comment { get; set; }
        public string AlternativeAddress { get; set; }
        public string Status { get; set; }

        public virtual Employee AlternativeEmp { get; set; }
        public virtual Employee Employee { get; set; }
        public virtual LeavesType LeaveType { get; set; }
        public virtual ICollection<LeaveFile> LeaveFiles { get; set; }
    }
}
