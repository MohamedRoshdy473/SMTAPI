using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

#nullable disable

namespace SMT.Data.Models.HRDBContext
{
    public partial class Employee
    {
        public Employee()
        {
            Attendances = new HashSet<Attendance>();
            Certificates = new HashSet<Certificate>();
            Compensations = new HashSet<Compensation>();
            EmployeeDocuments = new HashSet<EmployeeDocument>();
            Evaluations = new HashSet<Evaluation>();
            Excuses = new HashSet<Excuse>();
            LeaveRequestAlternativeEmps = new HashSet<LeaveRequest>();
            LeaveRequestEmployees = new HashSet<LeaveRequest>();
            MissionRequests = new HashSet<MissionRequest>();
            NeedsRequests = new HashSet<NeedsRequest>();
            Professions = new HashSet<Profession>();
            training = new HashSet<Training>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public string Code { get; set; }
        public int? ProfessionId { get; set; }
        public string Gender { get; set; }
        public string Address { get; set; }
        public string DateOfBirth { get; set; }
        public string MaritalStatus { get; set; }
        public string GraduatioYear { get; set; }
        public string Phone { get; set; }
        public string RelevantPhone { get; set; }
        public string Email { get; set; }
        public string Photo { get; set; }
        public string HiringDateHiringDate { get; set; }
        public int AllowedLeaveDays { get; set; }
        public string Mobile { get; set; }
        public string EmailCompany { get; set; }
        public string NationalId { get; set; }
        public int PositionId { get; set; }
        public int PositionlevelId { get; set; }
        public int? FacultyDepartmentId { get; set; }

        public virtual FacultyDepartment FacultyDepartment { get; set; }
        public virtual Position Position { get; set; }
        public virtual PositionLevel Positionlevel { get; set; }
        public virtual Profession Profession { get; set; }
        public virtual ICollection<Attendance> Attendances { get; set; }
        public virtual ICollection<Certificate> Certificates { get; set; }
        public virtual ICollection<Compensation> Compensations { get; set; }
        public virtual ICollection<EmployeeDocument> EmployeeDocuments { get; set; }
        public virtual ICollection<Evaluation> Evaluations { get; set; }
        public virtual ICollection<Excuse> Excuses { get; set; }
        [InverseProperty("AlternativeEmp")]

        public virtual ICollection<LeaveRequest> LeaveRequestAlternativeEmps { get; set; }
        public virtual ICollection<LeaveRequest> LeaveRequestEmployees { get; set; }
        public virtual ICollection<MissionRequest> MissionRequests { get; set; }
        public virtual ICollection<NeedsRequest> NeedsRequests { get; set; }
        public virtual ICollection<Profession> Professions { get; set; }
        public virtual ICollection<Training> training { get; set; }
    }
}
