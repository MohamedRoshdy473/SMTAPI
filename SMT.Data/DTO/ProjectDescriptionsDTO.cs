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
        public int? ProjectUpdateId { get; set; }


        public int Rank { get; set; }
        public DateTime ProjectCreationDate { get; set; }
        public int ProjectStatusId { get; set; }
        public string ProjectStatusName { get; set; }
        public int ContractorsId { get; set; }
        public string ContractorName { get; set; }
        public string ContractorContactName { get; set; }
        public int EndUsersId { get; set; }
        public string CompanyName { get; set; }
        public string EndUserContactName { get; set; }
        public int ProjectComponentsId { get; set; }
        public string ProjectComponentName { get; set; }
        public int GovernorateId { get; set; }
        public string GovernorateName { get; set; }
        public Boolean IsAccept { get; set; }
        public List<ProjectSystemsDTO> lstprojectSystems { get; set; }
    }
}
