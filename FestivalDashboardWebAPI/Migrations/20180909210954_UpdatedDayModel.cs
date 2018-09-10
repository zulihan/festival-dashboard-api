using Microsoft.EntityFrameworkCore.Migrations;

namespace FestivalDashboardWebAPI.Migrations
{
    public partial class UpdatedDayModel : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "DayNum",
                table: "Days",
                nullable: true,
                oldClrType: typeof(int));
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<int>(
                name: "DayNum",
                table: "Days",
                nullable: false,
                oldClrType: typeof(string),
                oldNullable: true);
        }
    }
}
