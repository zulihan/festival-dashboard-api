using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using FestivalDashboardWebAPI.Data;
using FestivalDashboardWebAPI.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace FestivalDashboardWebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ArtistsController : ControllerBase
    {
        private readonly DataContext _context;

        public ArtistsController(DataContext context)
        {
            _context = context;
        }

        // GET api/artists
        [HttpGet]
        public async Task<IActionResult> GetArtists()
        {
            var artists = await _context.Artists.ToListAsync();

            return Ok(artists);
        }

        // GET api/artists/5
        [HttpGet("{id}")]
        public IActionResult GetArtist(int id)
        {
            var artist = _context.Artists.FirstOrDefault(x => x.Id == id);

            return Ok(artist);
        }

    }
}