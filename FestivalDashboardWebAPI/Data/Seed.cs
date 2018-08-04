using FestivalDashboardWebAPI.Models;
using Newtonsoft.Json;
using System.Collections.Generic;

namespace FestivalDashboardWebAPI.Data
{
    public class Seed
    {
        private readonly DataContext _context;

        public Seed(DataContext context)
        {
            _context = context;
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

        public void SeedUser()
        {
            var userData = System.IO.File.ReadAllText("Data/UserSeedData.json");
            var users = JsonConvert.DeserializeObject<List<User>>(userData);

            foreach (var user in users)
            {
                byte[] passwordHash, passwordSalt;
                CreatePasswordHash("123456", out passwordHash, out passwordSalt);

                user.PasswordHash = passwordHash;
                user.PasswordSalt = passwordSalt;
                user.Name = user.Name.ToLower();       
                _context.Users.Add(user);
            }

            _context.SaveChanges();
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
