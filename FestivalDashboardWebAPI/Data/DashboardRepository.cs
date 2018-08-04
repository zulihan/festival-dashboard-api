using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using FestivalDashboardWebAPI.Models;
using Microsoft.EntityFrameworkCore;

namespace FestivalDashboardWebAPI.Data
{
    public class DashboardRepository : IDashboardRepository
    {
        private readonly DataContext _context;

        public DashboardRepository(DataContext context)
        {
            _context = context;
        }

        public void Add<T>(T entity) where T : class
        {
            _context.Add(entity);
        }

        public void Delete<T>(T entity) where T : class
        {
            _context.Remove(entity);
        }

        public async Task<Artist> GetArtist(int id)
        {
            var artist = await _context.Artists.FirstOrDefaultAsync(a => a.Id == id);
            return artist;
        }

        public async Task<IEnumerable<Artist>> GetArtists()
        {
            var artists = await _context.Artists.ToListAsync();

            return artists;
        }

        public async Task<User> GetUser(int id)
        {
            var user = await _context.Users.FirstOrDefaultAsync(u => u.Id == id);
            return user;
        }

        public async Task<IEnumerable<User>> GetUsers()
        {
            var users = await _context.Users.ToListAsync();

            return users;
        }

        public async Task<bool> SaveAll()
        {
            return await _context.SaveChangesAsync() > 0;
        }
    }
}
