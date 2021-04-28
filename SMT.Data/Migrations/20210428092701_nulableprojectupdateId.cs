using Microsoft.EntityFrameworkCore.Migrations;

namespace SMT.Data.Migrations
{
    public partial class nulableprojectupdateId : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_ProjectDescriptions_projectUpdates_ProjectUpdateId",
                table: "ProjectDescriptions");

            migrationBuilder.DropForeignKey(
                name: "FK_ProjectDocuments_projectUpdates_ProjectUpdateId",
                table: "ProjectDocuments");

            migrationBuilder.AlterColumn<int>(
                name: "ProjectUpdateId",
                table: "ProjectDocuments",
                type: "int",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int");

            migrationBuilder.AlterColumn<int>(
                name: "ProjectUpdateId",
                table: "ProjectDescriptions",
                type: "int",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int");

            migrationBuilder.AddForeignKey(
                name: "FK_ProjectDescriptions_projectUpdates_ProjectUpdateId",
                table: "ProjectDescriptions",
                column: "ProjectUpdateId",
                principalTable: "projectUpdates",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_ProjectDocuments_projectUpdates_ProjectUpdateId",
                table: "ProjectDocuments",
                column: "ProjectUpdateId",
                principalTable: "projectUpdates",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_ProjectDescriptions_projectUpdates_ProjectUpdateId",
                table: "ProjectDescriptions");

            migrationBuilder.DropForeignKey(
                name: "FK_ProjectDocuments_projectUpdates_ProjectUpdateId",
                table: "ProjectDocuments");

            migrationBuilder.AlterColumn<int>(
                name: "ProjectUpdateId",
                table: "ProjectDocuments",
                type: "int",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "ProjectUpdateId",
                table: "ProjectDescriptions",
                type: "int",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.AddForeignKey(
                name: "FK_ProjectDescriptions_projectUpdates_ProjectUpdateId",
                table: "ProjectDescriptions",
                column: "ProjectUpdateId",
                principalTable: "projectUpdates",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_ProjectDocuments_projectUpdates_ProjectUpdateId",
                table: "ProjectDocuments",
                column: "ProjectUpdateId",
                principalTable: "projectUpdates",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
