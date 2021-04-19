using System;
using System.Collections.Generic;

#nullable disable

namespace SMT.Data.Models.HRDBContext
{
    public partial class EvaluationType
    {
        public EvaluationType()
        {
            EvaluationProfessions = new HashSet<EvaluationProfession>();
        }

        public int Id { get; set; }
        public string Name { get; set; }

        public virtual ICollection<EvaluationProfession> EvaluationProfessions { get; set; }
    }
}
