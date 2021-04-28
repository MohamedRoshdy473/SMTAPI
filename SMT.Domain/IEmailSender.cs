using SMT.Data.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Domain
{
    public interface IEmailSender
    {
        void SendEmail(MessageDTO message);
        void SendEmailString(string message);
    }
}
