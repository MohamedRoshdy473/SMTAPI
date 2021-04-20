using Microsoft.EntityFrameworkCore.Migrations;

namespace SMT.Data.Migrations
{
    public partial class addProjectUpdateId : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "ProjectUpdateId",
                table: "ProjectDescriptions",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateIndex(
                name: "IX_ProjectDescriptions_ProjectUpdateId",
                table: "ProjectDescriptions",
                column: "ProjectUpdateId");

            migrationBuilder.AddForeignKey(
                name: "FK_ProjectDescriptions_projectUpdates_ProjectUpdateId",
                table: "ProjectDescriptions",
                column: "ProjectUpdateId",
                principalTable: "projectUpdates",
                principalColumn: "Id",
                onDelete: ReferentialAction.NoAction);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_ProjectDescriptions_projectUpdates_ProjectUpdateId",
                table: "ProjectDescriptions");

            migrationBuilder.DropIndex(
                name: "IX_ProjectDescriptions_ProjectUpdateId",
                table: "ProjectDescriptions");

            migrationBuilder.DropColumn(
                name: "ProjectUpdateId",
                table: "ProjectDescriptions");
        }
    }
}
