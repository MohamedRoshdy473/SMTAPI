using System;
using System.Collections.Generic;

#nullable disable

namespace SMT.Data.Models.HRDBContext
{
    public partial class TrainingType
    {
        public TrainingType()
        {
            Courses = new HashSet<Course>();
        }

        public int Id { get; set; }
        public string TrainingTypeName { get; set; }

        public virtual ICollection<Course> Courses { get; set; }
    }
}
