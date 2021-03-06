using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Data.ViewModels
{
    public class ChangePasswordVM
    {
        [Required(ErrorMessage = "userName is required")]
        public string userName { get; set; }


        [Required(ErrorMessage = "Password is required")]
        public string Password { get; set; }
        [Required(ErrorMessage = "New Password is required")]
        public string NewPassword { get; set; }
    }
}
