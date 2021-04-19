using System;
using System.Collections.Generic;

#nullable disable

namespace SMT.Data.Models.HRDBContext
{
    public partial class EvaluationProfession
    {
        public EvaluationProfession()
        {
            Evaluations = new HashSet<Evaluation>();
        }

        public int Id { get; set; }
        public int ProfessionId { get; set; }
        public int EvaluationTypeId { get; set; }

        public virtual EvaluationType EvaluationType { get; set; }
        public virtual Profession Profession { get; set; }
        public virtual ICollection<Evaluation> Evaluations { get; set; }
    }
}
