using Microsoft.EntityFrameworkCore.Migrations;

namespace SMT.Data.Migrations
{
    public partial class addconslutantandtiltename : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "ConsultantId",
                table: "Projects",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "TitleName",
                table: "EndUsers",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "TitleName",
                table: "Contractors",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "Consultant",
                columns: table => new
                {
                    ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    ConsultantName = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ContactName = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    TitleName = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Phone = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    RelevantPhone = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Email = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Consultant", x => x.ID);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Projects_ConsultantId",
                table: "Projects",
                column: "ConsultantId");

            migrationBuilder.AddForeignKey(
                name: "FK_Projects_Consultant_ConsultantId",
                table: "Projects",
                column: "ConsultantId",
                principalTable: "Consultant",
                principalColumn: "ID",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Projects_Consultant_ConsultantId",
                table: "Projects");

            migrationBuilder.DropTable(
                name: "Consultant");

            migrationBuilder.DropIndex(
                name: "IX_Projects_ConsultantId",
                table: "Projects");

            migrationBuilder.DropColumn(
                name: "ConsultantId",
                table: "Projects");

            migrationBuilder.DropColumn(
                name: "TitleName",
                table: "EndUsers");

            migrationBuilder.DropColumn(
                name: "TitleName",
                table: "Contractors");
        }
    }
}
