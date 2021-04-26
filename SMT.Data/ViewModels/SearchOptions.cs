using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Data.ViewModels
{
    public class SearchOptions
    {
        public int Year { get; set; }
        public string ReportNumber { get; set; }
        public String GridType { get; set; }
        //public PaginationVm Pagination { get; set; }
        public String Search { get; set; }
        //public Filter Filter { get; set; }
    }
}
