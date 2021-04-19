using System;
using System.Collections.Generic;

#nullable disable

namespace SMT.Data.Models.HRDBContext
{
    public partial class NeedsRequest
    {
        public int Id { get; set; }
        public int EmployeeId { get; set; }
        public int CategoryId { get; set; }
        public int SubCategoryId { get; set; }
        public DateTime NeedRequestDate { get; set; }
        public string Comment { get; set; }
        public string Status { get; set; }

        public virtual NeedsCategory Category { get; set; }
        public virtual Employee Employee { get; set; }
        public virtual SubCategory SubCategory { get; set; }
    }
}
