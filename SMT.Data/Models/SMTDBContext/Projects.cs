using SMT.Data.Models.HRDBContext;
using SMT.Data.Models.SMTDBContext.SMTDBContext;
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
        public int? ConsultantId { get; set; }
        [ForeignKey("ConsultantId")]
        public virtual Consultant Consultant { get; set; }
        public int GovernoratesId { get; set; }
        [ForeignKey("GovernoratesId")]
        public virtual Governorates Governorates { get; set; }
        public Boolean IsAccept { get; set; }
        public string UserId { get; set; }
        [ForeignKey("UserId")]
        public virtual ApplicationUser User { get; set; }
        public DateTime Deadline { get; set; }
    }
}
