using System.Collections.Generic;
using System.Threading.Tasks;
using AutoMapper;
using FestivalDashboardWebAPI.Data;
using FestivalDashboardWebAPI.Dtos;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Linq;
using Microsoft.EntityFrameworkCore;

namespace FestivalDashboardWebAPI.Controllers
{
    // [Authorize]
    [Route("api/[controller]")]
    [Microsoft.AspNetCore.Mvc.ApiController]
    public class ArtistsController : ControllerBase
    {
        private readonly IDashboardRepository _repo;
        private readonly IMapper _mapper;
        private readonly DataContext _context;

        public ArtistsController(IDashboardRepository repo, IMapper mapper, DataContext context)
        {
            _repo = repo;
            _mapper = mapper;
            _context = context;
        }

        // GET api/artists
        [HttpGet]
        public async Task<IActionResult> GetArtists()
        {
            var artistList = await (from venue in _context.Venues
                                    join artist in _context.Artists
                                   on venue.Id equals artist.VenueId
                                    select new
                                    {
                                        Id = artist.Id,
                                        Name = artist.Name,
                                        PhotoUrl = artist.PhotoUrl,
                                        ContactEmail = artist.ContactEmail,
                                        ContactName = artist.ContactName,
                                        ContactPhone = artist.ContactPhone,
                                        OnRoad = artist.OnRoad,
                                        OnStage = artist.OnStage,
                                        DayId = artist.DayId,
                                        GetIn = artist.GetIn,
                                        SetUpWings = artist.SetUpWings,
                                        SoundCheck = artist.SoundCheck,
                                        Show = artist.Show,
                                        Venue = venue.Name
                                    }).ToListAsync();



            //var artistList = await (from artist in _context.Artists
            //                        select new
            //                        {
            //                            Id = artist.Id,
            //                            Name = artist.Name,
            //                            PhotoUrl = artist.PhotoUrl,
            //                            ContactEmail = artist.ContactEmail,
            //                            ContactName = artist.ContactName,
            //                            ContactPhone = artist.ContactPhone,
            //                            OnRoad = artist.OnRoad,
            //                            OnStage = artist.OnStage,
            //                            DayId = artist.DayId,
            //                            GetIn = artist.GetIn,
            //                            SetUpWings = artist.SetUpWings,
            //                            SoundCheck = artist.SoundCheck,
            //                            Show = artist.Show,
            //                            Venue = (from venueId in artist.VenueId
            //                                     join venue in _context.Venues
            //                                      on venueId
            //                                      equals venue.Id
            //                                     select venue.Name)
            //                        }).ToListAsync();

            var artistsToReturn = _mapper.Map<IEnumerable<ArtistForListDto>>(artistList);
                       

            //var artists = await _repo.GetArtists();
            //var artistsToReturn = _mapper.Map<IEnumerable<ArtistForListDto>>(artists);

            return Ok(artistsToReturn);
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