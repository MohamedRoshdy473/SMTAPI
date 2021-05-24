using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Data.Models.SMTDBContext
{
    public class OfferDocuments
    {
        public int Id {get; set; }
        public string DocumentFile { get; set; }
        public int OfferId { get; set; }
        [ForeignKey("OfferId")]
        public virtual Offers Offers { get; set; }
    }
}
