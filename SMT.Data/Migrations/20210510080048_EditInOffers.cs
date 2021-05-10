using Microsoft.EntityFrameworkCore.Migrations;

namespace SMT.Data.Migrations
{
    public partial class EditInOffers : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "DataSheet",
                table: "Offers");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "DataSheet",
                table: "Offers",
                type: "nvarchar(max)",
                nullable: true);
        }
    }
}
