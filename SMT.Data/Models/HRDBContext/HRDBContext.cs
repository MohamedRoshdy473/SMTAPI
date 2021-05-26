using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

#nullable disable

namespace SMT.Data.Models.HRDBContext
{
    public partial class HRDBContext : DbContext
    {
        public HRDBContext()
        {
        }

        public HRDBContext(DbContextOptions<HRDBContext> options)
            : base(options)
        {
        }

        public virtual DbSet<AspNetRole> AspNetRoles { get; set; }
        public virtual DbSet<AspNetRoleClaim> AspNetRoleClaims { get; set; }
        public virtual DbSet<AspNetUser> AspNetUsers { get; set; }
        public virtual DbSet<AspNetUserClaim> AspNetUserClaims { get; set; }
        public virtual DbSet<AspNetUserLogin> AspNetUserLogins { get; set; }
        public virtual DbSet<AspNetUserRole> AspNetUserRoles { get; set; }
        public virtual DbSet<AspNetUserToken> AspNetUserTokens { get; set; }
        public virtual DbSet<Attendance> Attendances { get; set; }
        public virtual DbSet<Certificate> Certificates { get; set; }
        public virtual DbSet<Compensation> Compensations { get; set; }
        public virtual DbSet<Course> Courses { get; set; }
        public virtual DbSet<CvBank> CvBanks { get; set; }
        public virtual DbSet<Employee> Employees { get; set; }
        public virtual DbSet<EmployeeDocument> EmployeeDocuments { get; set; }
        public virtual DbSet<EmployeeDocumentsDto> EmployeeDocumentsDtos { get; set; }
        public virtual DbSet<Evaluation> Evaluations { get; set; }
        public virtual DbSet<EvaluationProfession> EvaluationProfessions { get; set; }
        public virtual DbSet<EvaluationType> EvaluationTypes { get; set; }
        public virtual DbSet<Event> Events { get; set; }
        public virtual DbSet<Excuse> Excuses { get; set; }
        public virtual DbSet<Faculty> Faculties { get; set; }
        public virtual DbSet<FacultyDepartment> FacultyDepartments { get; set; }
        public virtual DbSet<FacultyDepartmentDto> FacultyDepartmentDtos { get; set; }
        public virtual DbSet<FacultyDto> FacultyDtos { get; set; }
        public virtual DbSet<Instructor> Instructors { get; set; }
        public virtual DbSet<LeaveFile> LeaveFiles { get; set; }
        public virtual DbSet<LeaveRequest> LeaveRequests { get; set; }
        public virtual DbSet<LeavesType> LeavesTypes { get; set; }
        public virtual DbSet<MissionRequest> MissionRequests { get; set; }
        public virtual DbSet<NeedsCategory> NeedsCategories { get; set; }
        public virtual DbSet<NeedsRequest> NeedsRequests { get; set; }
        public virtual DbSet<Position> Positions { get; set; }
        public virtual DbSet<PositionLevel> PositionLevels { get; set; }
        public virtual DbSet<Profession> Professions { get; set; }
        public virtual DbSet<SubCategory> SubCategories { get; set; }
        public virtual DbSet<Training> Trainings { get; set; }
        public virtual DbSet<TrainingProfession> TrainingProfessions { get; set; }
        public virtual DbSet<TrainingType> TrainingTypes { get; set; }
        public virtual DbSet<University> Universities { get; set; }

//        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
//        {
//            if (!optionsBuilder.IsConfigured)
//            {
//#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
//                optionsBuilder.UseSqlServer("Server=.;Database=HRDB;Trusted_Connection=True;");
//            }
//        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("Relational:Collation", "SQL_Latin1_General_CP1_CI_AS");

            modelBuilder.Entity<AspNetRole>(entity =>
            {
                entity.HasIndex(e => e.NormalizedName, "RoleNameIndex")
                    .IsUnique()
                    .HasFilter("([NormalizedName] IS NOT NULL)");

                entity.Property(e => e.Name).HasMaxLength(256);

                entity.Property(e => e.NormalizedName).HasMaxLength(256);
            });

            modelBuilder.Entity<AspNetRoleClaim>(entity =>
            {
                entity.HasIndex(e => e.RoleId, "IX_AspNetRoleClaims_RoleId");

                entity.Property(e => e.RoleId).IsRequired();

                entity.HasOne(d => d.Role)
                    .WithMany(p => p.AspNetRoleClaims)
                    .HasForeignKey(d => d.RoleId);
            });

            modelBuilder.Entity<AspNetUser>(entity =>
            {
                entity.HasIndex(e => e.NormalizedEmail, "EmailIndex");

                entity.HasIndex(e => e.NormalizedUserName, "UserNameIndex")
                    .IsUnique()
                    .HasFilter("([NormalizedUserName] IS NOT NULL)");

                entity.Property(e => e.Email).HasMaxLength(256);

                entity.Property(e => e.NormalizedEmail).HasMaxLength(256);

                entity.Property(e => e.NormalizedUserName).HasMaxLength(256);

                entity.Property(e => e.UserName).HasMaxLength(256);
            });

            modelBuilder.Entity<AspNetUserClaim>(entity =>
            {
                entity.HasIndex(e => e.UserId, "IX_AspNetUserClaims_UserId");

                entity.Property(e => e.UserId).IsRequired();

                entity.HasOne(d => d.User)
                    .WithMany(p => p.AspNetUserClaims)
                    .HasForeignKey(d => d.UserId);
            });

            modelBuilder.Entity<AspNetUserLogin>(entity =>
            {
                entity.HasKey(e => new { e.LoginProvider, e.ProviderKey });

                entity.HasIndex(e => e.UserId, "IX_AspNetUserLogins_UserId");

                entity.Property(e => e.UserId).IsRequired();

                entity.HasOne(d => d.User)
                    .WithMany(p => p.AspNetUserLogins)
                    .HasForeignKey(d => d.UserId);
            });

            modelBuilder.Entity<AspNetUserRole>(entity =>
            {
                entity.HasKey(e => new { e.UserId, e.RoleId });

                entity.HasIndex(e => e.RoleId, "IX_AspNetUserRoles_RoleId");

                entity.HasOne(d => d.Role)
                    .WithMany(p => p.AspNetUserRoles)
                    .HasForeignKey(d => d.RoleId);

                entity.HasOne(d => d.User)
                    .WithMany(p => p.AspNetUserRoles)
                    .HasForeignKey(d => d.UserId);
            });

            modelBuilder.Entity<AspNetUserToken>(entity =>
            {
                entity.HasKey(e => new { e.UserId, e.LoginProvider, e.Name });

                entity.HasOne(d => d.User)
                    .WithMany(p => p.AspNetUserTokens)
                    .HasForeignKey(d => d.UserId);
            });

            modelBuilder.Entity<Attendance>(entity =>
            {
                entity.ToTable("Attendance");

                entity.HasIndex(e => e.EmployeeId, "IX_Attendance_EmployeeID");

                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.EmployeeId).HasColumnName("EmployeeID");

                entity.HasOne(d => d.Employee)
                    .WithMany(p => p.Attendances)
                    .HasForeignKey(d => d.EmployeeId);
            });

            modelBuilder.Entity<Certificate>(entity =>
            {
                entity.HasIndex(e => e.EmployeeId, "IX_Certificates_EmployeeID");

                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.Certificate1).HasColumnName("Certificate");

                entity.Property(e => e.EmployeeId).HasColumnName("EmployeeID");

                entity.HasOne(d => d.Employee)
                    .WithMany(p => p.Certificates)
                    .HasForeignKey(d => d.EmployeeId);
            });

            modelBuilder.Entity<Compensation>(entity =>
            {
                entity.HasIndex(e => e.EmployeeId, "IX_Compensations_EmployeeID");

                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.EmployeeId).HasColumnName("EmployeeID");

                entity.HasOne(d => d.Employee)
                    .WithMany(p => p.Compensations)
                    .HasForeignKey(d => d.EmployeeId);
            });

            modelBuilder.Entity<Course>(entity =>
            {
                entity.ToTable("courses");

                entity.HasIndex(e => e.TrainingTypeId, "IX_courses_TrainingTypeID");

                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.TrainingTypeId).HasColumnName("TrainingTypeID");

                entity.HasOne(d => d.TrainingType)
                    .WithMany(p => p.Courses)
                    .HasForeignKey(d => d.TrainingTypeId);
            });

            modelBuilder.Entity<CvBank>(entity =>
            {
                entity.ToTable("CV_Bank");

                entity.HasIndex(e => e.ProfessionId, "IX_CV_Bank_ProfessionID");

                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.Cv).HasColumnName("CV");

                entity.Property(e => e.ProfessionId).HasColumnName("ProfessionID");

                entity.HasOne(d => d.Profession)
                    .WithMany(p => p.CvBanks)
                    .HasForeignKey(d => d.ProfessionId);
            });

            modelBuilder.Entity<Employee>(entity =>
            {
                entity.HasIndex(e => e.FacultyDepartmentId, "IX_Employees_FacultyDepartmentId");

                entity.HasIndex(e => e.PositionId, "IX_Employees_PositionId");

                entity.HasIndex(e => e.PositionlevelId, "IX_Employees_PositionlevelId");

                entity.HasIndex(e => e.ProfessionId, "IX_Employees_ProfessionID");

                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.Gender).HasColumnName("gender");

                entity.Property(e => e.Photo).HasColumnName("photo");

                entity.Property(e => e.ProfessionId).HasColumnName("ProfessionID");

                entity.HasOne(d => d.FacultyDepartment)
                    .WithMany(p => p.Employees)
                    .HasForeignKey(d => d.FacultyDepartmentId);

                entity.HasOne(d => d.Position)
                    .WithMany(p => p.Employees)
                    .HasForeignKey(d => d.PositionId);

                entity.HasOne(d => d.Positionlevel)
                    .WithMany(p => p.Employees)
                    .HasForeignKey(d => d.PositionlevelId);

                entity.HasOne(d => d.Profession)
                    .WithMany(p => p.Employees)
                    .HasForeignKey(d => d.ProfessionId)
                    .OnDelete(DeleteBehavior.Cascade);
            });

            modelBuilder.Entity<EmployeeDocument>(entity =>
            {
                entity.HasIndex(e => e.EmployeeId, "IX_EmployeeDocuments_EmployeeID");

                entity.Property(e => e.EmployeeId).HasColumnName("EmployeeID");

                entity.HasOne(d => d.Employee)
                    .WithMany(p => p.EmployeeDocuments)
                    .HasForeignKey(d => d.EmployeeId);
            });

            modelBuilder.Entity<EmployeeDocumentsDto>(entity =>
            {
                entity.ToTable("EmployeeDocumentsDTO");

                entity.Property(e => e.EmployeeId).HasColumnName("EmployeeID");
            });

            modelBuilder.Entity<Evaluation>(entity =>
            {
                entity.ToTable("Evaluation");

                entity.HasIndex(e => e.EmployeeId, "IX_Evaluation_EmployeeID");

                entity.HasIndex(e => e.EvaluationProfessionId, "IX_Evaluation_EvaluationProfessionID");

                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.EmployeeId).HasColumnName("EmployeeID");

                entity.Property(e => e.EvaluationDate).HasDefaultValueSql("('0001-01-01T00:00:00.0000000')");

                entity.Property(e => e.EvaluationDegreee).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.EvaluationProfessionId).HasColumnName("EvaluationProfessionID");

                entity.HasOne(d => d.Employee)
                    .WithMany(p => p.Evaluations)
                    .HasForeignKey(d => d.EmployeeId);

                entity.HasOne(d => d.EvaluationProfession)
                    .WithMany(p => p.Evaluations)
                    .HasForeignKey(d => d.EvaluationProfessionId)
                    .OnDelete(DeleteBehavior.ClientSetNull);
            });

            modelBuilder.Entity<EvaluationProfession>(entity =>
            {
                entity.HasIndex(e => e.EvaluationTypeId, "IX_EvaluationProfessions_EvaluationTypeID");

                entity.HasIndex(e => e.ProfessionId, "IX_EvaluationProfessions_ProfessionID");

                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.EvaluationTypeId).HasColumnName("EvaluationTypeID");

                entity.Property(e => e.ProfessionId).HasColumnName("ProfessionID");

                entity.HasOne(d => d.EvaluationType)
                    .WithMany(p => p.EvaluationProfessions)
                    .HasForeignKey(d => d.EvaluationTypeId);

                entity.HasOne(d => d.Profession)
                    .WithMany(p => p.EvaluationProfessions)
                    .HasForeignKey(d => d.ProfessionId);
            });

            modelBuilder.Entity<EvaluationType>(entity =>
            {
                entity.Property(e => e.Id).HasColumnName("ID");
            });

            modelBuilder.Entity<Event>(entity =>
            {
                entity.Property(e => e.Id).HasColumnName("ID");
            });

            modelBuilder.Entity<Excuse>(entity =>
            {
                entity.HasIndex(e => e.EmployeeId, "IX_Excuses_EmployeeID");

                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.EmployeeId).HasColumnName("EmployeeID");

                entity.HasOne(d => d.Employee)
                    .WithMany(p => p.Excuses)
                    .HasForeignKey(d => d.EmployeeId);
            });

            modelBuilder.Entity<Faculty>(entity =>
            {
                entity.HasIndex(e => e.UniversityId, "IX_Faculties_UniversityID");

                entity.Property(e => e.UniversityId).HasColumnName("UniversityID");

                entity.HasOne(d => d.University)
                    .WithMany(p => p.Faculties)
                    .HasForeignKey(d => d.UniversityId);
            });

            modelBuilder.Entity<FacultyDepartment>(entity =>
            {
                entity.HasIndex(e => e.FacultyId, "IX_FacultyDepartments_FacultyId");

                entity.HasOne(d => d.Faculty)
                    .WithMany(p => p.FacultyDepartments)
                    .HasForeignKey(d => d.FacultyId);
            });

            modelBuilder.Entity<FacultyDepartmentDto>(entity =>
            {
                entity.ToTable("FacultyDepartmentDTO");
            });

            modelBuilder.Entity<FacultyDto>(entity =>
            {
                entity.ToTable("FacultyDTO");

                entity.Property(e => e.UniversityId).HasColumnName("UniversityID");
            });

            modelBuilder.Entity<Instructor>(entity =>
            {
                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.Gender).HasColumnName("gender");
            });

            modelBuilder.Entity<LeaveFile>(entity =>
            {
                entity.HasIndex(e => e.LeaveRequestId, "IX_LeaveFiles_LeaveRequestID");

                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.LeaveRequestId).HasColumnName("LeaveRequestID");

                entity.HasOne(d => d.LeaveRequest)
                    .WithMany(p => p.LeaveFiles)
                    .HasForeignKey(d => d.LeaveRequestId);
            });

            modelBuilder.Entity<LeaveRequest>(entity =>
            {
                entity.HasIndex(e => e.AlternativeEmpId, "IX_LeaveRequests_AlternativeEmpID");

                entity.HasIndex(e => e.EmployeeId, "IX_LeaveRequests_EmployeeID");

                entity.HasIndex(e => e.LeaveTypeId, "IX_LeaveRequests_LeaveTypeID");

                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.AlternativeEmpId).HasColumnName("AlternativeEmpID");

                entity.Property(e => e.EmployeeId).HasColumnName("EmployeeID");

                entity.Property(e => e.LeaveTypeId).HasColumnName("LeaveTypeID");

                entity.HasOne(d => d.AlternativeEmp)
                    .WithMany(p => p.LeaveRequestAlternativeEmps)
                    .HasForeignKey(d => d.AlternativeEmpId);

                entity.HasOne(d => d.Employee)
                    .WithMany(p => p.LeaveRequestEmployees)
                    .HasForeignKey(d => d.EmployeeId)
                    .OnDelete(DeleteBehavior.ClientSetNull);

                entity.HasOne(d => d.LeaveType)
                    .WithMany(p => p.LeaveRequests)
                    .HasForeignKey(d => d.LeaveTypeId);
            });

            modelBuilder.Entity<LeavesType>(entity =>
            {
                entity.Property(e => e.Id).HasColumnName("ID");
            });

            modelBuilder.Entity<MissionRequest>(entity =>
            {
                entity.HasIndex(e => e.EmployeeId, "IX_MissionRequests_EmployeeID");

                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.EmployeeId).HasColumnName("EmployeeID");

                entity.HasOne(d => d.Employee)
                    .WithMany(p => p.MissionRequests)
                    .HasForeignKey(d => d.EmployeeId);
            });

            modelBuilder.Entity<NeedsCategory>(entity =>
            {
                entity.ToTable("NeedsCategory");

                entity.Property(e => e.Id).HasColumnName("ID");
            });

            modelBuilder.Entity<NeedsRequest>(entity =>
            {
                entity.HasIndex(e => e.CategoryId, "IX_NeedsRequests_CategoryID");

                entity.HasIndex(e => e.EmployeeId, "IX_NeedsRequests_EmployeeID");

                entity.HasIndex(e => e.SubCategoryId, "IX_NeedsRequests_SubCategoryID");

                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.CategoryId).HasColumnName("CategoryID");

                entity.Property(e => e.EmployeeId).HasColumnName("EmployeeID");

                entity.Property(e => e.NeedRequestDate).HasDefaultValueSql("('0001-01-01T00:00:00.0000000')");

                entity.Property(e => e.SubCategoryId).HasColumnName("SubCategoryID");

                entity.HasOne(d => d.Category)
                    .WithMany(p => p.NeedsRequests)
                    .HasForeignKey(d => d.CategoryId);

                entity.HasOne(d => d.Employee)
                    .WithMany(p => p.NeedsRequests)
                    .HasForeignKey(d => d.EmployeeId);

                entity.HasOne(d => d.SubCategory)
                    .WithMany(p => p.NeedsRequests)
                    .HasForeignKey(d => d.SubCategoryId)
                    .OnDelete(DeleteBehavior.ClientSetNull);
            });

            modelBuilder.Entity<Profession>(entity =>
            {
                entity.HasIndex(e => e.ManagerId, "IX_Professions_ManagerID");

                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.ManagerId).HasColumnName("ManagerID");

                entity.HasOne(d => d.Manager)
                    .WithMany(p => p.Professions)
                    .HasForeignKey(d => d.ManagerId);
            });

            modelBuilder.Entity<SubCategory>(entity =>
            {
                entity.HasIndex(e => e.CategoryId, "IX_SubCategories_CategoryID");

                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.CategoryId).HasColumnName("CategoryID");

                entity.HasOne(d => d.Category)
                    .WithMany(p => p.SubCategories)
                    .HasForeignKey(d => d.CategoryId);
            });

            modelBuilder.Entity<Training>(entity =>
            {
                entity.HasIndex(e => e.EmployeeId, "IX_Trainings_EmployeeID");

                entity.HasIndex(e => e.InstructorId, "IX_Trainings_InstructorID");

                entity.HasIndex(e => e.TrainingProfessionId, "IX_Trainings_TrainingProfessionID");

                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.EmployeeId).HasColumnName("EmployeeID");

                entity.Property(e => e.InstructorId).HasColumnName("InstructorID");

                entity.Property(e => e.TrainingProfessionId).HasColumnName("TrainingProfessionID");

                entity.HasOne(d => d.Employee)
                    .WithMany(p => p.training)
                    .HasForeignKey(d => d.EmployeeId);

                entity.HasOne(d => d.Instructor)
                    .WithMany(p => p.training)
                    .HasForeignKey(d => d.InstructorId);

                entity.HasOne(d => d.TrainingProfession)
                    .WithMany(p => p.training)
                    .HasForeignKey(d => d.TrainingProfessionId);
            });

            modelBuilder.Entity<TrainingProfession>(entity =>
            {
                entity.HasIndex(e => e.CourseId, "IX_TrainingProfessions_CourseID");

                entity.HasIndex(e => e.ProfessionId, "IX_TrainingProfessions_ProfessionID");

                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.CourseId).HasColumnName("CourseID");

                entity.Property(e => e.ProfessionId).HasColumnName("ProfessionID");

                entity.HasOne(d => d.Course)
                    .WithMany(p => p.TrainingProfessions)
                    .HasForeignKey(d => d.CourseId);

                entity.HasOne(d => d.Profession)
                    .WithMany(p => p.TrainingProfessions)
                    .HasForeignKey(d => d.ProfessionId)
                    .OnDelete(DeleteBehavior.ClientSetNull);
            });

            modelBuilder.Entity<TrainingType>(entity =>
            {
                entity.Property(e => e.Id).HasColumnName("ID");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
