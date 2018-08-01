using Microsoft.EntityFrameworkCore.Migrations;

namespace FestivalDashboardWebAPI.Migrations
{
    public partial class ChangedArtistModel : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "OnRoad",
                table: "Artists",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "OnStage",
                table: "Artists",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "OnRoad",
                table: "Artists");

            migrationBuilder.DropColumn(
                name: "OnStage",
                table: "Artists");
        }
    }
}
