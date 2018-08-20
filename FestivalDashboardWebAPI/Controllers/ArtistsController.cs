using System.Threading.Tasks;
using FestivalDashboardWebAPI.Data;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace FestivalDashboardWebAPI.Controllers
{
    [Authorize]
    [Route("api/[controller]")]
    [Microsoft.AspNetCore.Mvc.ApiController]
    public class ArtistsController : ControllerBase
    {
        private readonly IDashboardRepository _repo;

        public ArtistsController(IDashboardRepository repo)
        {
            _repo = repo;
        }

        // GET api/artists
        [HttpGet]
        public async Task<IActionResult> GetArtists()
        {
            var artists = await _repo.GetArtists();

            return Ok(artists);
        }

        // GET api/artists/5
        [HttpGet("{id}")]
        public async Task<IActionResult> GetArtist(int id)
        {
            var artist = await _repo.GetArtist(id);

            return Ok(artist);
        }

    }
}