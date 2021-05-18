using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Data.Models.SMTDBContext
{
    public class ProjectSystems
    {
        public int Id { get; set; }
        public int ProjectComponentsId { get; set; }
        [ForeignKey("ProjectComponentsId")]
        public virtual ProjectComponents ProjectComponents { get; set; }
        public int ProjectId { get; set; }
        [ForeignKey("ProjectId")]
        public virtual Projects projects { get; set; }
    }
}
