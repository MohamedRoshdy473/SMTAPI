using Microsoft.EntityFrameworkCore.Migrations;

namespace SMT.Data.Migrations
{
    public partial class addupadteidinofferdesc : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "ProjectUpdateId",
                table: "OfferDescriptions",
                type: "int",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_OfferDescriptions_ProjectUpdateId",
                table: "OfferDescriptions",
                column: "ProjectUpdateId");

            migrationBuilder.AddForeignKey(
                name: "FK_OfferDescriptions_projectUpdates_ProjectUpdateId",
                table: "OfferDescriptions",
                column: "ProjectUpdateId",
                principalTable: "projectUpdates",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_OfferDescriptions_projectUpdates_ProjectUpdateId",
                table: "OfferDescriptions");

            migrationBuilder.DropIndex(
                name: "IX_OfferDescriptions_ProjectUpdateId",
                table: "OfferDescriptions");

            migrationBuilder.DropColumn(
                name: "ProjectUpdateId",
                table: "OfferDescriptions");
        }
    }
}
