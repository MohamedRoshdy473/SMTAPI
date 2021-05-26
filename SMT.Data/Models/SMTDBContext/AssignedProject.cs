using SMT.Data.Models.HRDBContext;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Data.Models.SMTDBContext
{
    public class AssignedProject
    {
        public int Id { get; set; }
        public Boolean IsAssigned { get; set; }
        public int ProjectUpdateId { get; set; }
        [ForeignKey("ProjectUpdateId")]
        public virtual ProjectUpdate ProjectUpdate { get; set; }
        public int EmployeeId { get; set; }
        [ForeignKey("EmployeeId")]
        public virtual Employee Employee { get; set; }
    }
}
