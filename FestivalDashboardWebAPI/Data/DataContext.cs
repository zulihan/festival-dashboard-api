using FestivalDashboardWebAPI.Models;
using Microsoft.EntityFrameworkCore;

namespace FestivalDashboardWebAPI.Data
{
    public class DataContext : DbContext
    {
        public DataContext(DbContextOptions<DataContext> options) : base (options) {}

        public DbSet<Artist> Artists { get; set; }
        public DbSet<Venue> Venues { get; set; }
        public DbSet<Day> Days { get; set; }
        public DbSet<GetIn> GetIns { get; set; }
        public DbSet<SetUpWings> SetUpWings { get; set; }
        public DbSet<SoundCheck> SoundChecks { get; set; }
        public DbSet<Show> Shows { get; set; }
        public DbSet<User> Users { get; set; }
    }
}
