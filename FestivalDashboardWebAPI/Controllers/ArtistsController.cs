﻿using System.Collections.Generic;
using System.Threading.Tasks;
using AutoMapper;
using FestivalDashboardWebAPI.Data;
using FestivalDashboardWebAPI.Dtos;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using FestivalDashboardWebAPI.Models;
using System;

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
            var artistList = await (from artist in _context.Artists 
                                    join venue in _context.Venues
                                    on artist.VenueId equals venue.Id
                                    join day in _context.Days
                                    on artist.DayId equals day.Id
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
                                        Day = day.DayNum,
                                        GetIn = artist.GetIn,
                                        SetUpWings = artist.SetUpWings,
                                        SoundCheck = artist.SoundCheck,
                                        Show = artist.Show,
                                        Venue = venue.Name
                                    }).ToListAsync();
                       

            var artistsToReturn = _mapper.Map<IEnumerable<ArtistForListDto>>(artistList);
                       

            //var artists = await _repo.GetArtists();
            //var artistsToReturn = _mapper.Map<IEnumerable<ArtistForListDto>>(artists);

            return Ok(artistsToReturn);
        }


        [HttpGet("names")]
        public async Task<IActionResult> GetArtistsNames()
        {
            var artistsList = await _repo.GetArtists();


            var artistsToReturn = _mapper.Map<IEnumerable<ArtistsNamesDto>>(artistsList);


            //var artists = await _repo.GetArtists();
            //var artistsToReturn = _mapper.Map<IEnumerable<ArtistForListDto>>(artists);

            return Ok(artistsToReturn);
        }


        [HttpGet("day/{id}")]
        public async Task<IActionResult> GetArtistsByDay(int id)
        {
            var artistList = await (from venue in _context.Venues
                                    join artist in _context.Artists.Where(a => a.DayId == id)
                                   on venue.Id equals artist.VenueId
                                    orderby venue.Id
                                    select new
                                    {
                                        Id = artist.Id,
                                        Name = artist.Name,
                                        DayId = artist.DayId,
                                        GetIn = artist.GetIn,
                                        SetUpWings = artist.SetUpWings,
                                        SoundCheck = artist.SoundCheck,
                                        Show = artist.Show,
                                        VenueId = artist.VenueId,
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

            var artistsToReturn = _mapper.Map<IEnumerable<ArtistsByDayDto>>(artistList);


            //var artists = await _repo.GetArtists();
            //var artistsToReturn = _mapper.Map<IEnumerable<ArtistForListDto>>(artists);

            return Ok(artistsToReturn);
        }

        [HttpGet("day/{dayId}/venue/{venueid}")]
        public async Task<IActionResult> GetArtistsByDayByVenue(int dayId, int venueId)
        {
            var artistList = await (from venue in _context.Venues.Where(v => v.Id == venueId)
                                    join artist in _context.Artists.Where(a => a.DayId == dayId)
                                    on venue.Id equals artist.VenueId
                                    orderby venue.Id
                                    select new
                                    {
                                        Id = artist.Id,
                                        Name = artist.Name,
                                        DayId = artist.DayId,
                                        GetIn = artist.GetIn,
                                        SetUpWings = artist.SetUpWings,
                                        SoundCheck = artist.SoundCheck,
                                        Show = artist.Show,
                                        VenueId = artist.VenueId,
                                        Venue = venue.Name
                                    }).ToListAsync();            

            var artistsToReturn = _mapper.Map<IEnumerable<ArtistsByDayDto>>(artistList);
            
            return Ok(artistsToReturn);
        }

        // GET api/artists/5
        [HttpGet("{id}", Name = "GetArtist")]
        public async Task<IActionResult> GetArtist(int id)
        {
            var artist = await _repo.GetArtist(id);
            var venue = await _context.Venues.FirstOrDefaultAsync(v => v.Id == artist.VenueId);
            var day = await _context.Days.FirstOrDefaultAsync(d => d.Id == artist.DayId);
            var checklist = await _context.Checklists.FirstOrDefaultAsync(cl => cl.ArtistId == id);

            var fullArtist = new
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
                Day = day.DayNum,
                GetIn = artist.GetIn,
                SetUpWings = artist.SetUpWings,
                SoundCheck = artist.SoundCheck,
                Show = artist.Show,
                VenueId = artist.VenueId,
                Venue = venue.Name,
                CheckList = checklist
            };
            var artistToReturn = _mapper.Map<ArtistForDetailDto>(fullArtist);

            return Ok(artistToReturn);
        }

        [HttpPost("register")]
        public async Task<IActionResult> RegisterArtist(ArtistForRegisterDto artistForRegisterDto)
        {
            artistForRegisterDto.Name = artistForRegisterDto.Name.ToLower();
            artistForRegisterDto.ContactName = artistForRegisterDto.ContactName.ToLower();

            if (await _repo.ArtistExists(artistForRegisterDto.Name))
                return BadRequest("Artist is already registered");

            var artistToCreate = _mapper.Map<Artist>(artistForRegisterDto);

            await _repo.RegisterArtist(artistToCreate);

            var artistToReturn = _mapper.Map<ArtistForDetailDto>(artistToCreate);

            var checklist = new Checklist()
            {
                ArtistId = artistToReturn.Id,
                UserId = 0,
                InvitsChecked = false,
                InvitsComment = "",
                RecordingChecked = false,
                RecordingComment = "",
                SacemChecked = false,
                SacemComment = ""
            };

            await _repo.CreateChecklist(checklist);

            return CreatedAtRoute("GetArtist",
                new { controller = "Artists", id = artistToCreate.Id }, artistToReturn);

            //return Ok("Artist was successfully registered");
        }

        [HttpDelete("delete/{id}")]
        public async Task<IActionResult> DeleteArtist(int id)
        {
            var artistToDelete = await _repo.DeleteArtist(id);

            return Ok(artistToDelete);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateArtist(int id, ArtistForUpdateDto artistForUpdateDto)
        {
            //if (id != int.Parse(User.FindFirst(ClaimTypes.NameIdentifier).Value))
            //    return Unauthorized();

            artistForUpdateDto.Name = artistForUpdateDto.Name.ToLower();
            artistForUpdateDto.ContactName = artistForUpdateDto.ContactName.ToLower();

            var artistFromRepo = await _repo.GetArtist(id);

            _mapper.Map(artistForUpdateDto, artistFromRepo);

            if (await _repo.SaveAll())
                return NoContent();

            throw new Exception($"Updating user {id} failed on save");
        }

        [HttpPut("checklist/{id}")]
        public async Task<IActionResult> UpdateArtistChecklist(int id, ChecklistForUpdateDto checklistForUpdateDto)
        {
            var checklisFromRepo = await _repo.GetArtistChecklist(id);

            // checklistForUpdateDto.InvitsChecked = checklistForUpdateDto.InvitsChecked == true ? 1 : 0;

            _mapper.Map(checklistForUpdateDto, checklisFromRepo);

            if (await _repo.SaveAll())
                return NoContent();

            throw new Exception($"Updating checklist {id} failed on save");
        }

        [HttpGet("checklists")]
        public async Task<IActionResult> GetChecklists()
        {
            var checklists = await (from checklist in _context.Checklists
                                                      join artist in _context.Artists
                                                      on checklist.ArtistId equals artist.Id
                                                      orderby artist.DayId
                                                      select new
                                                      {
                                                          Id = checklist.Id,
                                                          ArtistId = checklist.ArtistId,
                                                          Artist = artist.Name,
                                                          DayId = artist.DayId,
                                                          UserId = checklist.UserId,
                                                          InvitsChecked = checklist.InvitsChecked,
                                                          InvitsComment = checklist.InvitsComment,
                                                          RecordingChecked = checklist.RecordingChecked,
                                                          RecordingComment = checklist.RecordingComment,
                                                          SacemChecked = checklist.SacemChecked,
                                                          SacemComment = checklist.SacemComment
                                                      }).ToListAsync();

            var checklistsToReturn = _mapper.Map<IEnumerable<ChecklistsForListDto>>(checklists);

            return Ok(checklistsToReturn);
        }
    }
}



//join day day in _context.Days
//                        on day.Id equals artist.DayId



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