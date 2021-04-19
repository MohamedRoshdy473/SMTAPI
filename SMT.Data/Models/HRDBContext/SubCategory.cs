using System;
using System.Collections.Generic;

#nullable disable

namespace SMT.Data.Models.HRDBContext
{
    public partial class SubCategory
    {
        public SubCategory()
        {
            NeedsRequests = new HashSet<NeedsRequest>();
        }

        public int Id { get; set; }
        public string SubCategoryName { get; set; }
        public int CategoryId { get; set; }

        public virtual NeedsCategory Category { get; set; }
        public virtual ICollection<NeedsRequest> NeedsRequests { get; set; }
    }
}
