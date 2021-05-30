using Microsoft.EntityFrameworkCore.Migrations;

namespace SMT.Data.Migrations
{
    public partial class addprojectupdateinofferandassign : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_AssignedProject_projectUpdates_ProjectUpdateId",
                table: "AssignedProject");

            migrationBuilder.AddColumn<int>(
                name: "ProjectUpdateId",
                table: "Offers",
                type: "int",
                nullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "ProjectUpdateId",
                table: "AssignedProject",
                type: "int",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int");

            migrationBuilder.AddColumn<int>(
                name: "ProjectId",
                table: "AssignedProject",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateIndex(
                name: "IX_Offers_ProjectUpdateId",
                table: "Offers",
                column: "ProjectUpdateId");

            migrationBuilder.CreateIndex(
                name: "IX_AssignedProject_ProjectId",
                table: "AssignedProject",
                column: "ProjectId");

            migrationBuilder.AddForeignKey(
                name: "FK_AssignedProject_Projects_ProjectId",
                table: "AssignedProject",
                column: "ProjectId",
                principalTable: "Projects",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_AssignedProject_projectUpdates_ProjectUpdateId",
                table: "AssignedProject",
                column: "ProjectUpdateId",
                principalTable: "projectUpdates",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Offers_projectUpdates_ProjectUpdateId",
                table: "Offers",
                column: "ProjectUpdateId",
                principalTable: "projectUpdates",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_AssignedProject_Projects_ProjectId",
                table: "AssignedProject");

            migrationBuilder.DropForeignKey(
                name: "FK_AssignedProject_projectUpdates_ProjectUpdateId",
                table: "AssignedProject");

            migrationBuilder.DropForeignKey(
                name: "FK_Offers_projectUpdates_ProjectUpdateId",
                table: "Offers");

            migrationBuilder.DropIndex(
                name: "IX_Offers_ProjectUpdateId",
                table: "Offers");

            migrationBuilder.DropIndex(
                name: "IX_AssignedProject_ProjectId",
                table: "AssignedProject");

            migrationBuilder.DropColumn(
                name: "ProjectUpdateId",
                table: "Offers");

            migrationBuilder.DropColumn(
                name: "ProjectId",
                table: "AssignedProject");

            migrationBuilder.AlterColumn<int>(
                name: "ProjectUpdateId",
                table: "AssignedProject",
                type: "int",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.AddForeignKey(
                name: "FK_AssignedProject_projectUpdates_ProjectUpdateId",
                table: "AssignedProject",
                column: "ProjectUpdateId",
                principalTable: "projectUpdates",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
