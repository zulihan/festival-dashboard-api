using FestivalDashboardWebAPI.Models;
using Microsoft.AspNetCore.Identity;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Linq;

namespace FestivalDashboardWebAPI.Data
{
    public class Seed
    {
        private readonly DataContext _context;
        private readonly UserManager<User> _userManager;

        public Seed(DataContext context, UserManager<User> userManager)
        {
            _context = context;
            _userManager = userManager;
        }

        public void SeedArtists()
        {
            var artistData = System.IO.File.ReadAllText("Data/ArtistsSeedData.json");
            var artists = JsonConvert.DeserializeObject<List<Artist>>(artistData);
            foreach (var artist in artists)
            {
                artist.Name = artist.Name.ToLower();
                artist.ContactName = artist.ContactName.ToLower();

                _context.Artists.Add(artist);
            }

            _context.SaveChanges();
        }

        public void SeedChecklists()
        {
            var checklistData = System.IO.File.ReadAllText("Data/ChecklistSeedData.json");
            var checklists = JsonConvert.DeserializeObject<List<Checklist>>(checklistData);
            foreach (var checklist in checklists)
            {
                _context.Checklists.Add(checklist);
            }

            _context.SaveChanges();
        }

        public void SeedDays()
        {
            var daysData = System.IO.File.ReadAllText("Data/DaysSeedData.json");
            var days = JsonConvert.DeserializeObject<List<Day>>(daysData);
            foreach (var day in days)
            {
                _context.Days.Add(day);
            }

            _context.SaveChanges();
        }

        public void SeedVenues()
        {
            var venuesData = System.IO.File.ReadAllText("Data/VenuesSeedData.json");
            var venues = JsonConvert.DeserializeObject<List<Venue>>(venuesData);
            foreach (var venue in venues)
            {
                _context.Venues.Add(venue);
            }

            _context.SaveChanges();
        }

        public void SeedUser()
        {
            if (!_userManager.Users.Any())
            {
                var userData = System.IO.File.ReadAllText("Data/UserSeedData.json");
                var users = JsonConvert.DeserializeObject<List<User>>(userData);

                foreach (var user in users)
                {
                    _userManager.CreateAsync(user, "p45$w0rD").Wait();
                }                
            }
            
        }

        private void CreatePasswordHash(string password, out byte[] passwordHash, out byte[] passwordSalt)
        {
            using (var hmac = new System.Security.Cryptography.HMACSHA512())
            {
                passwordSalt = hmac.Key;
                passwordHash = hmac.ComputeHash(System.Text.Encoding.UTF8.GetBytes(password));
            }

        }

    }
}
