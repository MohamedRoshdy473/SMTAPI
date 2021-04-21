using Microsoft.EntityFrameworkCore.Migrations;

namespace SMT.Data.Migrations
{
    public partial class addgovernorates2 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "GovernoratesId",
                table: "Projects",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AlterColumn<string>(
                name: "GovernorateName",
                table: "Governorates",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int");

            migrationBuilder.CreateIndex(
                name: "IX_Projects_GovernoratesId",
                table: "Projects",
                column: "GovernoratesId");

            migrationBuilder.AddForeignKey(
                name: "FK_Projects_Governorates_GovernoratesId",
                table: "Projects",
                column: "GovernoratesId",
                principalTable: "Governorates",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Projects_Governorates_GovernoratesId",
                table: "Projects");

            migrationBuilder.DropIndex(
                name: "IX_Projects_GovernoratesId",
                table: "Projects");

            migrationBuilder.DropColumn(
                name: "GovernoratesId",
                table: "Projects");

            migrationBuilder.AlterColumn<int>(
                name: "GovernorateName",
                table: "Governorates",
                type: "int",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);
        }
    }
}
