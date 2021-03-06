using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.FileProviders;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Microsoft.Identity.Web;
using Microsoft.IdentityModel.Tokens;
using SMT.Core;
using SMT.Core.Repositories;
using SMT.Core.Services;
using SMT.Data.DTO;
using SMT.Data.Models.HRDBContext;
using SMT.Data.Models.SMTDBContext;
using SMT.Data.Models.SMTDBContext.SMTDBContext;
using SMT.Domain;
using SMT.Domain.Repositories;
using SMT.Domain.Services;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SalesManagmentTool
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            //services.AddAuthentication(JwtBearerDefaults.AuthenticationScheme)
            //    .AddMicrosoftIdentityWebApi(Configuration.GetSection("AzureAd"));
            services.AddDirectoryBrowser();
            services.AddHttpContextAccessor();
            services.AddControllers();
            services.AddMvc();
            services.AddCors();
            var emailConfig = Configuration.GetSection("EmailConfiguration").Get<EmailConfigurationDTO>();
            services.AddSingleton(emailConfig);
            services.AddScoped<IEmailSender, EmailSender>();
            services.AddDbContext<SMTDbContext>(options => options.UseSqlServer(Configuration.GetConnectionString("SMTConnectionStr")));
            services.AddDbContext<HRDBContext>(options => options.UseSqlServer(Configuration.GetConnectionString("HRConnection")));

            services.AddTransient<IProjectComponentsService, ProjectComponentsService>();
            services.AddTransient<IProjectComponentsRepository, ProjectComponentsRepository>();
            services.AddTransient<IContractorsService, ContractorsService>();
            services.AddTransient<IContractorsRepository, ContractorsRepository>();
            services.AddTransient<IEndUsersService, EndUsersService>();
            services.AddTransient<IEndUsersRepository, EndUsersRepository>();
            services.AddTransient<IProjectStatusService, ProjectStatusService>();
            services.AddTransient<IProjectStatusRepository, ProjectStatusRepository>();
            services.AddTransient<IProjectService, ProjectService>();
            services.AddTransient<IProjectRepository, ProjectRepository>();
            services.AddTransient<IProjectDescriptionsService, ProjectDescriptionsService>();
            services.AddTransient<IProjectDescriptionsRepository, ProjectDescriptionsRepository>();
            services.AddTransient<IGovernoratesService, GovernoratesService>();
            services.AddTransient<IGovernoratesRepository, GovernoratesRepository>();
            services.AddTransient<IDocumentsCategoriesService, DocumentsCategoriesService>();
            services.AddTransient<IDocumentsCategoriesRepository, DocumentsCategoriesRepository>();
            services.AddTransient<IOfferDocumentsRepository, OfferDocumentsRepository>();
            services.AddTransient<IOfferDocumentsService, OfferDocumentsService>();
            services.AddTransient<IProjectCostsService, ProjectCostsService>();
            services.AddTransient<IProjectCostsRepository, ProjectCostsRepository>();
            services.AddTransient<IProjectUpdateRepository, ProjectUpdateRepository>();
            services.AddTransient<IProjectUpdateService, ProjectUpdateService>();
            services.AddTransient<IProjectDocumentsService, ProjectDocumentsService>();
            services.AddTransient<IOffersService, OffersService>();
            services.AddTransient<IOffersRepsository, OffersRepsository>();
            services.AddTransient<IOfferDocumentsService, OfferDocumentsService>();
            services.AddTransient<IOfferDocumentsRepository, OfferDocumentsRepository>();
            services.AddTransient<IOfferStatusService, OfferStatusService>();
            services.AddTransient<IOfferStatusRepository, OfferStatusRepository>();
            services.AddTransient<IAssignedProjectService, AssignedProjectService>();
            services.AddTransient<IAssignedProjectRepository, AssignedProjectRepository>();
            services.AddTransient<IOfferDescriptionsService, OfferDescriptionsService>();
            services.AddTransient<IOfferDescriptionsRepository, OfferDescriptionsRepository>();
            services.AddTransient<IDataSheetsService, DataSheetsService>();
            services.AddTransient<IDataSheetsRepository, DataSheetsRepository>();
            services.AddTransient<IProjectSystemsService, ProjectSystemsService>();
            services.AddTransient<IProjectSystemsRepository, ProjectSystemsRepository>();
            services.AddTransient<IEmployeeRepository,EmployeeRepositories>();
            services.AddTransient<IEmployeeService, EmployeeService>();
            services.AddTransient<IConsultantRepository, ConsultantRepository>();
            services.AddTransient<IConsultantService, ConsultantService>();

            services.AddScoped<IUnitOfWork, UnitOfWork>();
            services.AddIdentity<ApplicationUser, IdentityRole>()
                    .AddEntityFrameworkStores<SMTDbContext>()
                    .AddDefaultTokenProviders();
            // Adding Authentication  
            services.AddAuthentication(options =>
            {
                options.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
                options.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
                options.DefaultScheme = JwtBearerDefaults.AuthenticationScheme;
            })

            // Adding Jwt Bearer  
           .AddJwtBearer(options =>
           {
               options.SaveToken = true;
               options.RequireHttpsMetadata = false;
               options.TokenValidationParameters = new TokenValidationParameters()
               {
                   ValidateIssuer = true,
                   ValidateAudience = true,
                   ValidAudience = Configuration["JWT:ValidAudience"],
                   ValidIssuer = Configuration["JWT:ValidIssuer"],
                   IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(Configuration["JWT:Secret"]))
               };
           });
            // Add framework services.
            services.AddMvc(
                config => {
                    config.Filters.Add(typeof(CustomExceptionFilter));
                }
            );
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            app.UseCors(
            options => options.AllowAnyOrigin().AllowAnyMethod().AllowAnyHeader()
          );
            app.UseStaticFiles(); // For the wwwroot folder.
            app.UseHttpsRedirection();
            app.UseFileServer(new FileServerOptions
            {
                FileProvider = new PhysicalFileProvider(
        Path.Combine(env.ContentRootPath, "wwwroot")),
                RequestPath = "/wwwroot",
                EnableDirectoryBrowsing = true
            });

            app.UseRouting();

            app.UseAuthentication();
            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });
        }
    }
}
