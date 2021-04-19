using System;
using System.Collections.Generic;

#nullable disable

namespace SMT.Data.Models.HRDBContext
{
    public partial class FacultyDepartment
    {
        public FacultyDepartment()
        {
            Employees = new HashSet<Employee>();
        }

        public int Id { get; set; }
        public string FacultyDepartmentName { get; set; }
        public int FacultyId { get; set; }

        public virtual Faculty Faculty { get; set; }
        public virtual ICollection<Employee> Employees { get; set; }
    }
}
