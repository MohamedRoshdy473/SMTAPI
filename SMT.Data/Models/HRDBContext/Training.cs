using System;
using System.Collections.Generic;

#nullable disable

namespace SMT.Data.Models.HRDBContext
{
    public partial class Training
    {
        public int Id { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public string Certified { get; set; }
        public string TrainingPlace { get; set; }
        public int EmployeeId { get; set; }
        public int InstructorId { get; set; }
        public int TrainingProfessionId { get; set; }

        public virtual Employee Employee { get; set; }
        public virtual Instructor Instructor { get; set; }
        public virtual TrainingProfession TrainingProfession { get; set; }
    }
}
