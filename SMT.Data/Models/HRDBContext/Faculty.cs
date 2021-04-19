using System;
using System.Collections.Generic;

#nullable disable

namespace SMT.Data.Models.HRDBContext
{
    public partial class Faculty
    {
        public Faculty()
        {
            FacultyDepartments = new HashSet<FacultyDepartment>();
        }

        public int Id { get; set; }
        public string FacultyName { get; set; }
        public int UniversityId { get; set; }

        public virtual University University { get; set; }
        public virtual ICollection<FacultyDepartment> FacultyDepartments { get; set; }
    }
}
