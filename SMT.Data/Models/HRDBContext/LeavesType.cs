using System;
using System.Collections.Generic;

#nullable disable

namespace SMT.Data.Models.HRDBContext
{
    public partial class LeavesType
    {
        public LeavesType()
        {
            LeaveRequests = new HashSet<LeaveRequest>();
        }

        public int Id { get; set; }
        public string Name { get; set; }

        public virtual ICollection<LeaveRequest> LeaveRequests { get; set; }
    }
}
