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
        public DateTime Deadline { get; set; }
        public Boolean IsAccept { get; set; }
        public string UserId { get; set; }
        public string UserName { get; set; }
    }
}
