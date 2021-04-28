using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Data.Models.SMTDBContext
{
   public class ProjectDocuments
    {
        public int Id { get; set; }
        public string DocumentFile { get; set; }
        public int ProjectId { get; set; }  
        [ForeignKey("ProjectId")]
        public virtual Projects projects { get; set; }
        public int? ProjectUpdateId { get; set; }   
        [ForeignKey("ProjectUpdateId")]
        public virtual ProjectUpdate ProjectUpdate { get; set; }
        public int DocumentsCategoryId { get; set; }
        [ForeignKey("DocumentsCategoryId")]
        public virtual DocumentsCategories DocumentsCategories { get; set; }
    }
}
