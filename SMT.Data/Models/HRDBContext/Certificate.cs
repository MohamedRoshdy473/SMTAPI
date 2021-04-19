using System;
using System.Collections.Generic;

#nullable disable

namespace SMT.Data.Models.HRDBContext
{
    public partial class Certificate
    {
        public int Id { get; set; }
        public string Certificate1 { get; set; }
        public DateTime CertificateDate { get; set; }
        public string CertificatePlace { get; set; }
        public int EmployeeId { get; set; }

        public virtual Employee Employee { get; set; }
    }
}
