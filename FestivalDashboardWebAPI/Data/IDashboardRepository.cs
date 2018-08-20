using FestivalDashboardWebAPI.Models;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace FestivalDashboardWebAPI.Data
{
    public interface IDashboardRepository
    {
        void Add<T>(T entity) where T : class;

        void Delete<T>(T entity) where T : class;

        Task<bool> SaveAll();

        Task<IEnumerable<Artist>> GetArtists();

        Task<Artist> GetArtist(int id);

        Task<IEnumerable<User>> GetUsers();

        Task<User> GetUser(int id);

        Task<Photo> GetPhoto(int id);

        //Task<IEnumerable<Photo>> GetPhotos();

        Task<GetIn> GetGetIn(int id);

        Task<IEnumerable<GetIn>> GetGetIns();

        Task<SetUpWings> GetSetUpWings(int id);

        Task<IEnumerable<SetUpWings>> GetSetUpWings();

        Task<SoundCheck> GetSoundCheck(int id);

        Task<IEnumerable<SoundCheck>> GetSoundChecks();

        Task<Show> GetShow(int id);

        Task<IEnumerable<Show>> GetShows();

        Task<Venue> GetVenue(int id);

        Task<IEnumerable<Venue>> GetVenues();
    }
}
