using System;
using System.Collections.Generic;

#nullable disable

namespace SMT.Data.Models.HRDBContext
{
    public partial class MissionRequest
    {
        public int Id { get; set; }
        public int EmployeeId { get; set; }
        public string Type { get; set; }
        public string Description { get; set; }
        public DateTime Start { get; set; }
        public DateTime End { get; set; }
        public string Comment { get; set; }

        public virtual Employee Employee { get; set; }
    }
}
