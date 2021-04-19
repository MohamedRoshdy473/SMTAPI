using System;
using System.Collections.Generic;

#nullable disable

namespace SMT.Data.Models.HRDBContext
{
    public partial class University
    {
        public University()
        {
            Faculties = new HashSet<Faculty>();
        }

        public int Id { get; set; }
        public string UniversityName { get; set; }

        public virtual ICollection<Faculty> Faculties { get; set; }
    }
}
