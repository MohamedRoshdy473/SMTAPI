using System;
using System.Collections.Generic;

#nullable disable

namespace SMT.Data.Models.HRDBContext
{
    public partial class FacultyDepartmentDto
    {
        public int Id { get; set; }
        public string FacultyDepartmentName { get; set; }
        public int FacultyId { get; set; }
        public string FacultyName { get; set; }
        public int UniversityId { get; set; }
        public string UniversityName { get; set; }
    }
}
