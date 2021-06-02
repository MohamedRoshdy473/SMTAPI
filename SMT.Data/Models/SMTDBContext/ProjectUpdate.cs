using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Data.Models.SMTDBContext
{
    public class ProjectUpdate
    {
        public int Id { get; set; }
        public DateTime DueDate { get; set; }
        public Boolean IsAccept { get; set; }
        public DateTime Deadline { get; set; }
        public int ProjectId { get; set; }
        [ForeignKey("ProjectId")]
        public virtual Projects projects { get; set; }

    }
}
