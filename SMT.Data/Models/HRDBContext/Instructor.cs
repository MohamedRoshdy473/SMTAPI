using System;
using System.Collections.Generic;

#nullable disable

namespace SMT.Data.Models.HRDBContext
{
    public partial class Instructor
    {
        public Instructor()
        {
            training = new HashSet<Training>();
        }

        public int Id { get; set; }
        public string InstructorName { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
        public string Gender { get; set; }
        public DateTime HiringDate { get; set; }

        public virtual ICollection<Training> training { get; set; }
    }
}
