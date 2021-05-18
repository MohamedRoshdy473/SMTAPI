using SMT.Data.Models.SMTDBContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Data.DTO
{
    public class ProjectSystemsDTO
    {
        public int Id { get; set; }
        public int ProjectComponentsId { get; set; }
        public string ProjectComponentName { get; set; }
        public List<ProjectComponents> LstprojectComponents { get; set; }
        public int ProjectId { get; set; }
        public string ProjectName { get; set; }


    }
}
