﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Data.DTO
{
    public class ProjectsDTO
    {
        public int Id { get; set; }
        public string ProjectName { get; set; }
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
    }
}