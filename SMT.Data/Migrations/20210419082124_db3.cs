using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace SMT.Data.Migrations
{
    public partial class db3 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Offers_ProjectDates_ProjectDatesId",
                table: "Offers");

            migrationBuilder.DropTable(
                name: "ProjectDates");

            migrationBuilder.DropIndex(
                name: "IX_Offers_ProjectDatesId",
                table: "Offers");

            migrationBuilder.DropColumn(
                name: "ProjectDatesId",
                table: "Offers");

            migrationBuilder.AddColumn<int>(
                name: "ProjectUpdateId",
                table: "ProjectDocuments",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateTable(
                name: "projectUpdates",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    DueDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ProjectId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_projectUpdates", x => x.Id);
                    table.ForeignKey(
                        name: "FK_projectUpdates_Projects_ProjectId",
                        column: x => x.ProjectId,
                        principalTable: "Projects",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_ProjectDocuments_ProjectUpdateId",
                table: "ProjectDocuments",
                column: "ProjectUpdateId");

            migrationBuilder.CreateIndex(
                name: "IX_projectUpdates_ProjectId",
                table: "projectUpdates",
                column: "ProjectId");

            migrationBuilder.AddForeignKey(
                name: "FK_ProjectDocuments_projectUpdates_ProjectUpdateId",
                table: "ProjectDocuments",
                column: "ProjectUpdateId",
                principalTable: "projectUpdates",
                principalColumn: "Id",
                onDelete: ReferentialAction.NoAction);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_ProjectDocuments_projectUpdates_ProjectUpdateId",
                table: "ProjectDocuments");

            migrationBuilder.DropTable(
                name: "projectUpdates");

            migrationBuilder.DropIndex(
                name: "IX_ProjectDocuments_ProjectUpdateId",
                table: "ProjectDocuments");

            migrationBuilder.DropColumn(
                name: "ProjectUpdateId",
                table: "ProjectDocuments");

            migrationBuilder.AddColumn<int>(
                name: "ProjectDatesId",
                table: "Offers",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateTable(
                name: "ProjectDates",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    DueDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ProjectId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ProjectDates", x => x.Id);
                    table.ForeignKey(
                        name: "FK_ProjectDates_Projects_ProjectId",
                        column: x => x.ProjectId,
                        principalTable: "Projects",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Offers_ProjectDatesId",
                table: "Offers",
                column: "ProjectDatesId");

            migrationBuilder.CreateIndex(
                name: "IX_ProjectDates_ProjectId",
                table: "ProjectDates",
                column: "ProjectId");

            migrationBuilder.AddForeignKey(
                name: "FK_Offers_ProjectDates_ProjectDatesId",
                table: "Offers",
                column: "ProjectDatesId",
                principalTable: "ProjectDates",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
