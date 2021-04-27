using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Data.DTO
{
    public class ProjectDescriptionsDTO
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public DateTime DescriptionDate { get; set; }
        public string UserId { get; set; }
        public string UserName { get; set; }
        public int ProjectId { get; set; }
        public string projectName { get; set; }
        public int ProjectUpdateId { get; set; }
    }
}
