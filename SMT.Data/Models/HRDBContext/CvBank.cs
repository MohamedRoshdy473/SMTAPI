using System;
using System.Collections.Generic;

#nullable disable

namespace SMT.Data.Models.HRDBContext
{
    public partial class CvBank
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int ProfessionId { get; set; }
        public string Cv { get; set; }
        public bool Accepted { get; set; }

        public virtual Profession Profession { get; set; }
    }
}
