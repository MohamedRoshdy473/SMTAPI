using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Data.Models.SMTDBContext
{
    public class Offers
    {
        public int Id { get; set; }
        public DateTime OfferCreationDate { get; set; }
        public int OfferStatusId { get; set; }
        [ForeignKey("OfferStatusId")]
        public virtual OfferStatus OfferStatus { get; set; }
        public int ProjectCostsId { get; set; }
        [ForeignKey("ProjectCostsId")]
        public virtual ProjectCosts ProjectCosts { get; set; }
        public int ProjectsId { get; set; }
        [ForeignKey("ProjectsId")]
        public virtual Projects Projects { get; set; }
        public int? ProjectUpdateId { get; set; }
        [ForeignKey("ProjectUpdateId")]
        public virtual ProjectUpdate ProjectUpdate { get; set; }

    }
}
