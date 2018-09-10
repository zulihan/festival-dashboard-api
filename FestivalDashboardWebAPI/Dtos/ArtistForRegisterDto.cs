using FestivalDashboardWebAPI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FestivalDashboardWebAPI.Dtos
{
    public class ArtistForRegisterDto
    {
        public string Name { get; set; }
        public string PhotoUrl { get; set; }
        public string ContactName { get; set; }
        public string ContactPhone { get; set; }
        public string ContactEmail { get; set; }
        public int OnRoad { get; set; }
        public int OnStage { get; set; }
        public int DayId { get; set; }
        public GetIn GetIn { get; set; }
        public SetUpWings SetUpWings { get; set; }
        public SoundCheck SoundCheck { get; set; }
        public Show Show { get; set; }
        public int VenueId { get; set; }
    }
}
