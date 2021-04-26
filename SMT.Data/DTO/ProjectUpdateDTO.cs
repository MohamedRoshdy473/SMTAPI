using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Data.DTO
{
    public class ProjectUpdateDTO
    {
        public int Id { get; set; }
        public DateTime DueDate { get; set; }
        public int ProjectId { get; set; }
        public string ProjectName  { get; set; }
    }
}
