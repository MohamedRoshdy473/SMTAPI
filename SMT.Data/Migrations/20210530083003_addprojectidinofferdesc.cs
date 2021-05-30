using Microsoft.EntityFrameworkCore.Migrations;

namespace SMT.Data.Migrations
{
    public partial class addprojectidinofferdesc : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "ProjectId",
                table: "OfferDescriptions",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateIndex(
                name: "IX_OfferDescriptions_ProjectId",
                table: "OfferDescriptions",
                column: "ProjectId");

            migrationBuilder.AddForeignKey(
                name: "FK_OfferDescriptions_Projects_ProjectId",
                table: "OfferDescriptions",
                column: "ProjectId",
                principalTable: "Projects",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_OfferDescriptions_Projects_ProjectId",
                table: "OfferDescriptions");

            migrationBuilder.DropIndex(
                name: "IX_OfferDescriptions_ProjectId",
                table: "OfferDescriptions");

            migrationBuilder.DropColumn(
                name: "ProjectId",
                table: "OfferDescriptions");
        }
    }
}
