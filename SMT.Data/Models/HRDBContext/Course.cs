using System;
using System.Collections.Generic;

#nullable disable

namespace SMT.Data.Models.HRDBContext
{
    public partial class Course
    {
        public Course()
        {
            TrainingProfessions = new HashSet<TrainingProfession>();
        }

        public int Id { get; set; }
        public string CourseName { get; set; }
        public int TrainingTypeId { get; set; }

        public virtual TrainingType TrainingType { get; set; }
        public virtual ICollection<TrainingProfession> TrainingProfessions { get; set; }
    }
}
