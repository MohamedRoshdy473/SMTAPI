using Microsoft.EntityFrameworkCore.Migrations;

namespace SMT.Data.Migrations
{
    public partial class EditInOfferDocuments : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Offers_OfferDocuments_OfferDocumentsId",
                table: "Offers");

            migrationBuilder.DropIndex(
                name: "IX_Offers_OfferDocumentsId",
                table: "Offers");

            migrationBuilder.DropColumn(
                name: "OfferDocumentsId",
                table: "Offers");

            migrationBuilder.AddColumn<int>(
                name: "OfferId",
                table: "OfferDocuments",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateIndex(
                name: "IX_OfferDocuments_OfferId",
                table: "OfferDocuments",
                column: "OfferId");

            migrationBuilder.AddForeignKey(
                name: "FK_OfferDocuments_Offers_OfferId",
                table: "OfferDocuments",
                column: "OfferId",
                principalTable: "Offers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_OfferDocuments_Offers_OfferId",
                table: "OfferDocuments");

            migrationBuilder.DropIndex(
                name: "IX_OfferDocuments_OfferId",
                table: "OfferDocuments");

            migrationBuilder.DropColumn(
                name: "OfferId",
                table: "OfferDocuments");

            migrationBuilder.AddColumn<int>(
                name: "OfferDocumentsId",
                table: "Offers",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateIndex(
                name: "IX_Offers_OfferDocumentsId",
                table: "Offers",
                column: "OfferDocumentsId");

            migrationBuilder.AddForeignKey(
                name: "FK_Offers_OfferDocuments_OfferDocumentsId",
                table: "Offers",
                column: "OfferDocumentsId",
                principalTable: "OfferDocuments",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
