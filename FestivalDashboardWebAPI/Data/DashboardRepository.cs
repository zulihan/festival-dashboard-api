
using System.Collections;
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

        public async Task<bool> ArtistExists(string name)
        {
            if (await _context.Artists.AnyAsync(x => x.Name == name))
                return true;

            return false;
        }

        public async Task<Artist> RegisterArtist(Artist artist)
        {
            await _context.Artists.AddAsync(artist);
            await _context.SaveChangesAsync();

            return artist;
        }

        public async Task<Artist> GetArtist(int id)
        {

            var artist = await _context.Artists
                    .Include(a => a.Show)
                    .Include(a => a.GetIn)
                    .Include(a => a.SetUpWings)
                    .Include(a => a.SoundCheck)
                    .FirstOrDefaultAsync(a => a.Id == id);            

            //var fullArtist = await (from v in _context.Venues
            //                        join a in artist
            //                        on v.Id equals artist.VenueId
            //                        select new
            //                        {
            //                            Id = a.Id,
            //                            Name = a.Name,
            //                            PhotoUrl = a.PhotoUrl,
            //                            ContactEmail = a.ContactEmail,
            //                            ContactName = a.ContactName,
            //                            ContactPhone = a.ContactPhone,
            //                            OnRoad = a.OnRoad,
            //                            OnStage = a.OnStage,
            //                            DayId = a.DayId,
            //                            GetIn = a.GetIn,
            //                            SetUpWings = a.SetUpWings,
            //                            SoundCheck = a.SoundCheck,
            //                            Show = a.Show,
            //                            Venue = venue.Name
            //                        });

            return artist;
        }

        public async Task<Artist> DeleteArtist(int id)
        {
            var artistToDelete = await _context.Artists.FirstOrDefaultAsync(a => a.Id == id);
            _context.Artists.Remove(artistToDelete);
            await _context.SaveChangesAsync();

            return artistToDelete;
        }

        public async Task<IEnumerable<Artist>> GetArtists()
        {
            var artists = await _context.Artists.ToListAsync();

            return artists;

            //var artistList = await (from artist in _context.Artists
            //                         select new                                     {
            //                             artist.Id,
            //                             artist.Name,
            //                             artist.PhotoUrl,
            //                             artist.ContactEmail,
            //                             artist.ContactName,
            //                             artist.ContactPhone,
            //                             artist.OnRoad,
            //                             artist.OnStage,
            //                             artist.DayId,
            //                             artist.GetIn,
            //                             artist.SetUpWings,
            //                             artist.SoundCheck,
            //                             artist.Show,
            //                             artist.VenueId,
            //                             Venue = (from venueId in artist.VenueId
            //                                      join venue in _context.Venues
            //                                       on venueId
            //                                       equals venue.Id
            //                                      select venue.Name).ToString()
            //                         }).ToListAsync();
            // return artistList;
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

        //public async Task<List<GetIn>> GetGetIns(int dayId)
        //{
        //    var getIns = await _context.GetIns.ToListAsync();

        //    var getInsForDayId = await (from g in _context.GetIns
        //                                where g.DayId == dayId
        //                                select new
        //                                {
        //                                    Id = g.Id,
        //                                    Start = g.Start,
        //                                    End = g.End,
        //                                    ArtistID = g.ArtistId
        //                                }).ToListAsync();
                        
        //    return getInsForDayId;
        //}

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

        public async Task<IEnumerable<User>> GetRunners()
        {
            var runners = await _context.Users
                .Where(u => u.Role == "runner")
                .Include(u => u.Photo)
                .ToListAsync();
            return runners;
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

        public async Task<Checklist> CreateChecklist(Checklist checklist)
        {
            await _context.Checklists.AddAsync(checklist);
            await _context.SaveChangesAsync();

            return checklist;
        }

        public async Task<Checklist> GetArtistChecklist(int id)
        {
            var checklist = await _context.Checklists.FirstOrDefaultAsync(cl => cl.Id == id);

            return checklist;
        }

        //public async Task<List<Checklist>> GetChecklists()
        //{
        //    IQueryable<Checklist> checklists = await (from checklist in _context.Chekclists
        //                            join artist in _context.Artists
        //                            on checklist.ArtistId equals artist.Id
        //                            orderby artist.DayId
        //                            select new
        //                            {
        //                                Id = checklist.Id,
        //                                ArtistId = checklist.ArtistId,
        //                                Artist = artist.Name,
        //                                DayId = artist.DayId,
        //                                UserId = checklist.UserId,
        //                                InvitsChecked = checklist.InvitsChecked,
        //                                InvitsCommnet = checklist.InvitsComment,
        //                                RecordingChecked = checklist.RecordingChecked,
        //                                RecordingComment = checklist.RecordingComment,
        //                                SacemChecked = checklist.SacemChecked,
        //                                SacemComment = checklist.SacemComment
        //                            }.ToListAsync());
        //    return checklists;
        //}



        public async Task<bool> SaveAll()
        {
            return await _context.SaveChangesAsync() > 0;
        }
    }           
}
