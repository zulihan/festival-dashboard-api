using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using FestivalDashboardWebAPI.Data;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace FestivalDashboardWebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class VenuesController : ControllerBase
    {
        private readonly IDashboardRepository _repo;

        public VenuesController(IDashboardRepository repo)
        {
            _repo = repo;
        }

        [HttpGet]
        public async Task<IActionResult> GetVenues()
        {
            var venues = await _repo.GetVenues();            

            return Ok(venues);
        }
    }
}