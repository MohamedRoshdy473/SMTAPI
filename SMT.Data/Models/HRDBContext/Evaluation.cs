using System;
using System.Collections.Generic;

#nullable disable

namespace SMT.Data.Models.HRDBContext
{
    public partial class Evaluation
    {
        public int Id { get; set; }
        public int EmployeeId { get; set; }
        public int EvaluationProfessionId { get; set; }
        public decimal EvaluationDegreee { get; set; }
        public DateTime EvaluationDate { get; set; }
        public string Note { get; set; }

        public virtual Employee Employee { get; set; }
        public virtual EvaluationProfession EvaluationProfession { get; set; }
    }
}
