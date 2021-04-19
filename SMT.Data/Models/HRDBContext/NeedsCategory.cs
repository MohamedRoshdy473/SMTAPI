using System;
using System.Collections.Generic;

#nullable disable

namespace SMT.Data.Models.HRDBContext
{
    public partial class NeedsCategory
    {
        public NeedsCategory()
        {
            NeedsRequests = new HashSet<NeedsRequest>();
            SubCategories = new HashSet<SubCategory>();
        }

        public int Id { get; set; }
        public string Name { get; set; }

        public virtual ICollection<NeedsRequest> NeedsRequests { get; set; }
        public virtual ICollection<SubCategory> SubCategories { get; set; }
    }
}
