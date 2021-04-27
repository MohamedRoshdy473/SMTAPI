using SMT.Data.Models.SMTDBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Data.DTO
{
    public class ProjectDocumentsDTO
    {
        public int Id { get; set; }
        public string DocumentFile { get; set; }
        public int ProjectId { get; set; }
        public string ProjectName { get; set; }
        public int ProjectUpdateId { get; set; }
        public DateTime DueDate { get; set; }
        public int DocumentsCategoryId { get; set; }
        public string DocumentsCategoryName { get; set; }
    }
}
