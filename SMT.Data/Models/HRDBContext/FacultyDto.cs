using System;
using System.Collections.Generic;

#nullable disable

namespace SMT.Data.Models.HRDBContext
{
    public partial class FacultyDto
    {
        public int Id { get; set; }
        public string FacultyName { get; set; }
        public int UniversityId { get; set; }
        public string UniversityName { get; set; }
    }
}
