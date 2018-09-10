using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using FestivalDashboardWebAPI.Data;
using FestivalDashboardWebAPI.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace FestivalDashboardWebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TimeTablesController : ControllerBase
    {
        private readonly IDashboardRepository _repo;
        private readonly DataContext _context;

        public TimeTablesController(IDashboardRepository repo, DataContext context)
        {
            _repo = repo;
            _context = context;
        }

        [HttpGet("timetable/{dayId}")]
        public async Task<IActionResult> GetTimeTableByDay(int dayId)
        {
            var getIns = await GetGetInsByDay(dayId);
            var setUpWings = await GetSetUpsByDay(dayId);
            var soundChecks = await GetSoundChecksByDay(dayId);
            var shows = await GetShowsByDay(dayId);

            var timeTableForDayIdByVenue = new
            {
                getIns,
                setUpWings,
                soundChecks,
                shows
            };

            return Ok(timeTableForDayIdByVenue);
        }


        [HttpGet("getins/{dayId}")]
        public async Task<IActionResult> GetGetInsByDay(int dayId)
        {
            var getIns = await _repo.GetGetIns();
            var artists = await _repo.GetArtists();
            var venues = await _repo.GetVenues();

            var getInsForDayId =  (from g in getIns
                                    where g.DayId == dayId
                                    join artist in artists                                    
                                    on g.ArtistId equals artist.Id
                                    select new
                                    {
                                        Id = g.Id,
                                        Start = g.Start,
                                        End = g.End,
                                        ArtistId = g.ArtistId,
                                        Artist = artist.Name,
                                        VenueId = g.VenueId
                                    }).ToList();

            var getInsForDayIdByVenue = (from g in getInsForDayId
                                         join venue in venues
                                         on g.VenueId equals venue.Id
                                         orderby g.VenueId
                                         select new
                                         {
                                             Id = g.Id,
                                             Start = g.Start,
                                             End = g.End,
                                             ArtistId = g.ArtistId,
                                             Artist = g.Artist,
                                             VenueId = g.VenueId,
                                             Venue = venue.Name
                                         }).ToList();


            //var getInsByArtist = (from g in getIns
            //                            join a in artists
            //                            on g.ArtistId equals a.Id
            //                            select new
            //                            {
            //                                Id = g.Id,
            //                                Start = g.Start,
            //                                End = g.End,
            //                                Artist = a.Name
            //                            }).ToList();


            return Ok(getInsForDayIdByVenue);
        }


        [HttpGet("setup/{dayId}")]
        public async Task<IActionResult> GetSetUpsByDay(int dayId)
        {
            var setUpWings = await _repo.GetSetUpWings();
            var artists = await _repo.GetArtists();
            var venues = await _repo.GetVenues();

            var setUpWingsForDayId = (from suw in setUpWings
                                  where suw.DayId == dayId
                                  join artist in artists
                                  on suw.ArtistId equals artist.Id
                                  select new
                                  {
                                      Id = suw.Id,
                                      Start = suw.Start,
                                      End = suw.End,
                                      ArtistId = suw.ArtistId,
                                      Artist = artist.Name,
                                      VenueId = suw.VenueId
                                  }).ToList();

            var setUpWingsForDayIdByVenue = (from suw in setUpWingsForDayId
                                         join venue in venues
                                         on suw.VenueId equals venue.Id
                                         orderby suw.VenueId
                                         select new
                                         {
                                             Id = suw.Id,
                                             Start = suw.Start,
                                             End = suw.End,
                                             ArtistId = suw.ArtistId,
                                             Artist = suw.Artist,
                                             Venue = venue.Name,
                                             VenueId = suw.VenueId
                                         }).ToList();            


            return Ok(setUpWingsForDayIdByVenue);
        }

        [HttpGet("soundcheck/{dayId}")]
        public async Task<IActionResult> GetSoundChecksByDay(int dayId)
        {
            var soundChecks = await _repo.GetSoundChecks();
            var artists = await _repo.GetArtists();
            var venues = await _repo.GetVenues();

            var soundChecksForDayId = (from sc in soundChecks
                                       where sc.DayId == dayId
                                      join artist in artists
                                      on sc.ArtistId equals artist.Id
                                      select new
                                      {
                                          Id = sc.Id,
                                          Start = sc.Start,
                                          End = sc.End,
                                          ArtistId = sc.ArtistId,
                                          Artist = artist.Name,
                                          VenueId = sc.VenueId
                                      }).ToList();

            var soundChecksForDayIdByVenue = (from sc in soundChecksForDayId
                                              join venue in venues
                                             on sc.VenueId equals venue.Id
                                             orderby sc.VenueId
                                             select new
                                             {
                                                 Id = sc.Id,
                                                 Start = sc.Start,
                                                 End = sc.End,
                                                 ArtistId = sc.ArtistId,
                                                 Artist = sc.Artist,
                                                 Venue = venue.Name,
                                                 VenueId = sc.VenueId
                                             }).ToList();


            return Ok(soundChecksForDayIdByVenue);
        }

        [HttpGet("show/{dayId}")]
        public async Task<IActionResult> GetShowsByDay(int dayId)
        {
            var shows = await _repo.GetShows();
            var artists = await _repo.GetArtists();
            var venues = await _repo.GetVenues();

            var showsForDayId = (from s in shows
                                       where s.DayId == dayId
                                       join artist in artists
                                       on s.ArtistId equals artist.Id
                                       select new
                                       {
                                           Id = s.Id,
                                           Start = s.Start,
                                           End = s.End,
                                           ArtistId = s.ArtistId,
                                           Artist = artist.Name,
                                           VenueId = s.VenueId
                                       }).ToList();

            var showsForDayIdByVenue = (from s in showsForDayId
                                              join venue in venues
                                             on s.VenueId equals venue.Id
                                              orderby s.VenueId
                                              select new
                                              {
                                                  Id = s.Id,
                                                  Start = s.Start,
                                                  End = s.End,
                                                  ArtistId = s.ArtistId,
                                                  Artist = s.Artist,
                                                  Venue = venue.Name,
                                                  VenueId = s.VenueId
                                              }).ToList();


            return Ok(showsForDayIdByVenue);
        }

    }
}