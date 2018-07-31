using Microsoft.EntityFrameworkCore.Migrations;

namespace FestivalDashboardWebAPI.Migrations
{
    public partial class ChangedTimeTables_tables : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "DayId",
                table: "SoundChecks",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "DayId",
                table: "Shows",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "DayId",
                table: "SetUpWings",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "DayId",
                table: "GetIns",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "DayId",
                table: "SoundChecks");

            migrationBuilder.DropColumn(
                name: "DayId",
                table: "Shows");

            migrationBuilder.DropColumn(
                name: "DayId",
                table: "SetUpWings");

            migrationBuilder.DropColumn(
                name: "DayId",
                table: "GetIns");
        }
    }
}
