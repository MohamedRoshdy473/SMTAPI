using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Data.DTO
{
    public class AssignedProjectDTO
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public DateTime AssignedProjectDate { get; set; }
        public Boolean IsAssigned { get; set; }
        public int ProjectId { get; set; }
        public int ProjectUpdateId { get; set; }
        public string ProjectName { get; set; }
        public int EmployeeId { get; set; }
        public string EmployeeName { get; set; }
    }
}
