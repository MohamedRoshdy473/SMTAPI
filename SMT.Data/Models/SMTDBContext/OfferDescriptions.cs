using SMT.Data.Models.SMTDBContext.SMTDBContext;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Data.Models.SMTDBContext
{
    public class OfferDescriptions
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public DateTime DescriptionDate { get; set; }
        public string UserId { get; set; }
        [ForeignKey("UserId")]
        public virtual ApplicationUser User { get; set; }
        public int OffersId { get; set; }
        [ForeignKey("OffersId")]
        public virtual Offers Offers { get; set; }
        public int? ProjectUpdateId { get; set; }
        [ForeignKey("ProjectUpdateId")]
        public virtual ProjectUpdate ProjectUpdate { get; set; }
        public int ProjectId { get; set; }
        [ForeignKey("ProjectId")]
        public virtual Projects projects { get; set; }
    }
}
