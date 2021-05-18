using Microsoft.EntityFrameworkCore.Migrations;

namespace SMT.Data.Migrations
{
    public partial class addProjectsystems : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Projects_ProjectComponents_ProjectComponentsId",
                table: "Projects");

            migrationBuilder.DropIndex(
                name: "IX_Projects_ProjectComponentsId",
                table: "Projects");

            migrationBuilder.DropColumn(
                name: "ProjectComponentsId",
                table: "Projects");

            migrationBuilder.CreateTable(
                name: "ProjectSystems",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    ProjectComponentsId = table.Column<int>(type: "int", nullable: false),
                    ProjectId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ProjectSystems", x => x.Id);
                    table.ForeignKey(
                        name: "FK_ProjectSystems_ProjectComponents_ProjectComponentsId",
                        column: x => x.ProjectComponentsId,
                        principalTable: "ProjectComponents",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_ProjectSystems_Projects_ProjectId",
                        column: x => x.ProjectId,
                        principalTable: "Projects",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_ProjectSystems_ProjectComponentsId",
                table: "ProjectSystems",
                column: "ProjectComponentsId");

            migrationBuilder.CreateIndex(
                name: "IX_ProjectSystems_ProjectId",
                table: "ProjectSystems",
                column: "ProjectId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "ProjectSystems");

            migrationBuilder.AddColumn<int>(
                name: "ProjectComponentsId",
                table: "Projects",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateIndex(
                name: "IX_Projects_ProjectComponentsId",
                table: "Projects",
                column: "ProjectComponentsId");

            migrationBuilder.AddForeignKey(
                name: "FK_Projects_ProjectComponents_ProjectComponentsId",
                table: "Projects",
                column: "ProjectComponentsId",
                principalTable: "ProjectComponents",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
