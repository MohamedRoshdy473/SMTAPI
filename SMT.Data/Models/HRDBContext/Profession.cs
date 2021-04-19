using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

#nullable disable

namespace SMT.Data.Models.HRDBContext
{
    public partial class Profession
    {
        public Profession()
        {
            CvBanks = new HashSet<CvBank>();
            Employees = new HashSet<Employee>();
            EvaluationProfessions = new HashSet<EvaluationProfession>();
            TrainingProfessions = new HashSet<TrainingProfession>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public int? ManagerId { get; set; }

        public virtual Employee Manager { get; set; }
        public virtual ICollection<CvBank> CvBanks { get; set; }
        [InverseProperty("Profession")]
        public virtual ICollection<Employee> Employees { get; set; }
        public virtual ICollection<EvaluationProfession> EvaluationProfessions { get; set; }
        public virtual ICollection<TrainingProfession> TrainingProfessions { get; set; }
    }
}
