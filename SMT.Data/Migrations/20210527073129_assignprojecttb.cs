using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace SMT.Data.Migrations
{
    public partial class assignprojecttb : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {



            migrationBuilder.CreateTable(
                name: "AssignedProject",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    IsAssigned = table.Column<bool>(type: "bit", nullable: false),
                    Description = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    AssignedProjectDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ProjectUpdateId = table.Column<int>(type: "int", nullable: false),
                    EmployeeId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AssignedProject", x => x.Id);
                    table.ForeignKey(
                        name: "FK_AssignedProject_projectUpdates_ProjectUpdateId",
                        column: x => x.ProjectUpdateId,
                        principalTable: "projectUpdates",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_AssignedProject_EmployeeId",
                table: "AssignedProject",
                column: "EmployeeId");

            migrationBuilder.CreateIndex(
                name: "IX_AssignedProject_ProjectUpdateId",
                table: "AssignedProject",
                column: "ProjectUpdateId");

           
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Profession_Employee_ManagerId",
                table: "Profession");

            migrationBuilder.DropTable(
                name: "AssignedProject");

            migrationBuilder.DropTable(
                name: "Attendance");

            migrationBuilder.DropTable(
                name: "Certificate");

            migrationBuilder.DropTable(
                name: "Compensation");

            migrationBuilder.DropTable(
                name: "CvBank");

            migrationBuilder.DropTable(
                name: "EmployeeDocument");

            migrationBuilder.DropTable(
                name: "Evaluation");

            migrationBuilder.DropTable(
                name: "Excuse");

            migrationBuilder.DropTable(
                name: "LeaveFile");

            migrationBuilder.DropTable(
                name: "MissionRequest");

            migrationBuilder.DropTable(
                name: "NeedsRequest");

            migrationBuilder.DropTable(
                name: "Training");

            migrationBuilder.DropTable(
                name: "EvaluationProfession");

            migrationBuilder.DropTable(
                name: "LeaveRequest");

            migrationBuilder.DropTable(
                name: "SubCategory");

            migrationBuilder.DropTable(
                name: "Instructor");

            migrationBuilder.DropTable(
                name: "TrainingProfession");

            migrationBuilder.DropTable(
                name: "EvaluationType");

            migrationBuilder.DropTable(
                name: "LeavesType");

            migrationBuilder.DropTable(
                name: "NeedsCategory");

            migrationBuilder.DropTable(
                name: "Course");

            migrationBuilder.DropTable(
                name: "TrainingType");

            migrationBuilder.DropTable(
                name: "Employee");

            migrationBuilder.DropTable(
                name: "FacultyDepartment");

            migrationBuilder.DropTable(
                name: "Position");

            migrationBuilder.DropTable(
                name: "PositionLevel");

            migrationBuilder.DropTable(
                name: "Profession");

            migrationBuilder.DropTable(
                name: "Faculty");

            migrationBuilder.DropTable(
                name: "University");
        }
    }
}
