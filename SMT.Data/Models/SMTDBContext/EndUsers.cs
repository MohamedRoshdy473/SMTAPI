﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Data.Models.SMTDBContext
{
    public class EndUsers
    {
        public int ID { get; set; }
        public string CompanyName { get; set; }
        public string ContactName { get; set; }
        public string Phone { get; set; }
        public string RelevantPhone { get; set; }
        public string Email { get; set; }
    }
}
