using System;
using System.Collections.Generic;

#nullable disable

namespace SMT.Data.Models.HRDBContext
{
    public partial class SchoolDepartment
    {
        public SchoolDepartment()
        {
            Employees = new HashSet<Employee>();
        }

        public int Id { get; set; }
        public string SchoolDepartmentName { get; set; }
        public int SchoolId { get; set; }

        public virtual School School { get; set; }
        public virtual ICollection<Employee> Employees { get; set; }
    }
}
