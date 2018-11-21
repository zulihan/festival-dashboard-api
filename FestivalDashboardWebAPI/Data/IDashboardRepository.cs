using FestivalDashboardWebAPI.Models;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace FestivalDashboardWebAPI.Data
{
    public interface IDashboardRepository
    {
        void Add<T>(T entity) where T : class;

        void Delete<T>(T entity) where T : class;

        Task<bool> SaveAll();

        Task<bool> ArtistExists(string name);

        Task<Artist> RegisterArtist(Artist artist);

        Task<IEnumerable<Artist>> GetArtists();

        Task<Artist> GetArtist(int id);

        Task<Artist> DeleteArtist(int id);

        Task<IEnumerable<User>> GetUsers();

        Task<User> GetUser(int id);

        Task<IEnumerable<User>> GetRunners();

        Task<Photo> GetPhoto(int id);

        //Task<IEnumerable<Photo>> GetPhotos();

        Task<GetIn> GetGetIn(int id);

        Task<IEnumerable<GetIn>> GetGetIns();

        // Task<IEnumerable<GetIn>> GetGetIns(int id);

        Task<SetUpWings> GetSetUpWings(int id);

        Task<IEnumerable<SetUpWings>> GetSetUpWings();

        Task<SoundCheck> GetSoundCheck(int id);

        Task<IEnumerable<SoundCheck>> GetSoundChecks();

        Task<Show> GetShow(int id);

        Task<IEnumerable<Show>> GetShows();

        Task<Venue> GetVenue(int id);

        Task<IEnumerable<Venue>> GetVenues();

        Task<Checklist> CreateChecklist(Checklist checklist);

        Task<Checklist> GetArtistChecklist(int id);

        // Task<List<Checklist>> GetChecklists();
    }
}
