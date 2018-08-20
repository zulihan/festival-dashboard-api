﻿using System.Collections.Generic;
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

        public async Task<GetIn> GetGetIn(int id)
        {
            var getin = await _context.GetIns.FirstOrDefaultAsync(g => g.Id == id);
            return getin;
        }

        public async Task<IEnumerable<GetIn>> GetGetIns()
        {
            var getins = await _context.GetIns.ToListAsync();

            return getins;
        }

        public async Task<SetUpWings> GetSetUpWings(int id)
        {
            var setupwings = await _context.SetUpWings.FirstOrDefaultAsync(s => s.Id == id);
            return setupwings;
        }

        public async Task<IEnumerable<SetUpWings>> GetSetUpWings()
        {
            var setupwings = await _context.SetUpWings.ToListAsync();

            return setupwings;
        }

        public async Task<Show> GetShow(int id)
        {
            var show = await _context.Shows.FirstOrDefaultAsync(s => s.Id == id);
            return show;
        }

        public async Task<IEnumerable<Show>> GetShows()
        {
            var shows = await _context.Shows.ToListAsync();
            return shows;
        }

        public async Task<SoundCheck> GetSoundCheck(int id)
        {
            var soundcheck = await _context.SoundChecks.FirstOrDefaultAsync(s => s.Id == id);
            return soundcheck;
        }

        public async Task<IEnumerable<SoundCheck>> GetSoundChecks()
        {
            var soundchecks = await _context.SoundChecks.ToListAsync();
            return soundchecks;
        }

        public async Task<Venue> GetVenue(int id)
        {
            var venue = await _context.Venues.FirstOrDefaultAsync(v => v.Id == id);
            return venue;
        }

        public async Task<IEnumerable<Venue>> GetVenues()
        {
            var venues = await _context.Venues.ToListAsync();
            return venues;
        }

        public async Task<User> GetUser(int id)
        {
            var user = await _context.Users.Include(p => p.Photo).FirstOrDefaultAsync(u => u.Id == id);
            return user;
        }

        public async Task<IEnumerable<User>> GetUsers()
        {
            var users = await _context.Users.Include(p => p.Photo).ToListAsync();
            return users;
        }

        public async Task<Photo> GetPhoto(int id)
        {
            var photo = await _context.Photos.FirstOrDefaultAsync(p => p.Id == id);
            return photo;
        }

        //public async Task<IEnumerable<Photo>> GetPhotos()
        //{
        //    var photos = await _context.Photos.ToListAsync();

        //    return photos;
        //}

        public async Task<bool> SaveAll()
        {
            return await _context.SaveChangesAsync() > 0;
        }
    }           
}
