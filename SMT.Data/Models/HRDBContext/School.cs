using System;
using System.Collections.Generic;

#nullable disable

namespace SMT.Data.Models.HRDBContext
{
    public partial class School
    {
        public School()
        {
            SchoolDepartments = new HashSet<SchoolDepartment>();
        }

        public int Id { get; set; }
        public string SchoolName { get; set; }

        public virtual ICollection<SchoolDepartment> SchoolDepartments { get; set; }
    }
}
