using SMT.Data.Models.SMTDBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Data.DTO
{
    public class OfferDocumentsDTO
    {
        public int Id { get; set; }
        public string DocumentFile { get; set; }
        public int OfferId { get; set; }
    }
}
