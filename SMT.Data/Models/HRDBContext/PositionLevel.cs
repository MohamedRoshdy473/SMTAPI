using System;
using System.Collections.Generic;

#nullable disable

namespace SMT.Data.Models.HRDBContext
{
    public partial class PositionLevel
    {
        public PositionLevel()
        {
            Employees = new HashSet<Employee>();
        }

        public int Id { get; set; }
        public string LevelName { get; set; }

        public virtual ICollection<Employee> Employees { get; set; }
    }
}
