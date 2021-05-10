using SMT.Data.Models.SMTDBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Data.DTO
{
    public class OffersDTO
    {
        public int Id { get; set; }
        public DateTime OfferCreationDate { get; set; }
        public int OfferStatusId { get; set; }
        public  string OfferStatusName { get; set; }
        public int ProjectCostsId { get; set; }
        public int Cost { get; set; }
        public int ProjectsId { get; set; }
        public string ProjectName  { get; set; }
    }
}
