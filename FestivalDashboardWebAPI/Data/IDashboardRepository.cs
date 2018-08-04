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

    }
}
