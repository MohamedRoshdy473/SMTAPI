using System;
using System.Collections.Generic;

#nullable disable

namespace SMT.Data.Models.HRDBContext
{
    public partial class TrainingProfession
    {
        public TrainingProfession()
        {
            training = new HashSet<Training>();
        }

        public int Id { get; set; }
        public int ProfessionId { get; set; }
        public int CourseId { get; set; }

        public virtual Course Course { get; set; }
        public virtual Profession Profession { get; set; }
        public virtual ICollection<Training> training { get; set; }
    }
}
