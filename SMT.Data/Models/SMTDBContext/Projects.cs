using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Data.Models.SMTDBContext
{
    public class Projects
    {
        public int Id { get; set; }
        public string ProjectName { get; set; }
        public int Rank { get; set; }
        public DateTime ProjectCreationDate { get; set; }
        public int ProjectStatusId { get; set; }
        [ForeignKey("ProjectStatusId")]
        public virtual ProjectStatus ProjectStatus { get; set; }
        public int ContractorsId { get; set; }
        [ForeignKey("ContractorsId")]
        public virtual Contractors Contractors { get; set; }
        public int EndUsersId { get; set; }
        [ForeignKey("EndUsersId")]
        public virtual EndUsers EndUsers { get; set; }
        public int ProjectComponentsId { get; set; }
        [ForeignKey("ProjectComponentsId")]
        public virtual ProjectComponents ProjectComponents { get; set; }
    }
}
