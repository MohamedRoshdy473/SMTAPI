using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMT.Data.Models.SMTDBContext
{
    public class SMTDbContext:IdentityDbContext
    {
        public SMTDbContext(DbContextOptions<SMTDbContext> options)
            : base(options)
        {

        }
        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
        }
        public DbSet<AssignedProject> AssignedProject { get; set; }
        public DbSet<DocumentsCategories> DocumentsCategories { get; set; }
        public DbSet<OfferDescriptions> OfferDescriptions { get; set; }
        public DbSet<OfferDocuments> OfferDocuments { get; set; }
        public DbSet<Offers> Offers { get; set; }
        public DbSet<OfferStatus> OfferStatus { get; set; }
        public DbSet<ProjectComponents> ProjectComponents { get; set; }
        public DbSet<ProjectCosts> ProjectCosts { get; set; }
        public DbSet<ProjectUpdate> projectUpdates { get; set; }
        public DbSet<ProjectDocuments> ProjectDocuments { get; set; }
        public DbSet<ProjectStatus> ProjectStatus { get; set; }
        public DbSet<Projects> Projects { get; set; }
        public DbSet<ProjectDescriptions> ProjectDescriptions { get; set; }
        public DbSet<EndUsers> EndUsers { get; set; }
        public DbSet<Contractors> Contractors { get; set; }
        public DbSet<Governorates> Governorates { get; set; }
        public DbSet<DataSheets> DataSheets { get; set; }
        public DbSet<ProjectSystems> ProjectSystems { get; set; }

    }
}
