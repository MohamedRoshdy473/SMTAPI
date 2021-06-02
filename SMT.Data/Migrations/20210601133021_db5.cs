using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace SMT.Data.Migrations
{
    public partial class db5 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<DateTime>(
    name: "Deadline",
    table: "projectUpdates",
    type: "datetime2",
    nullable: false,
    defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<bool>(
                name: "IsAccept",
                table: "projectUpdates",
                type: "bit",
                nullable: false,
                defaultValue: false);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {


            migrationBuilder.DropColumn(
    name: "Deadline",
    table: "projectUpdates");

            migrationBuilder.DropColumn(
                name: "IsAccept",
                table: "projectUpdates");
        }
    }
}
