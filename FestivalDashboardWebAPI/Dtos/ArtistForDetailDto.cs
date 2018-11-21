using FestivalDashboardWebAPI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FestivalDashboardWebAPI.Dtos
{
    public class ArtistForDetailDto
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string PhotoUrl { get; set; }
        public string ContactName { get; set; }
        public string ContactPhone { get; set; }
        public string ContactEmail { get; set; }
        public int OnRoad { get; set; }
        public int OnStage { get; set; }
        public int DayId { get; set; }
        public string Day { get; set; }
        public GetInForDetailDto GetIn { get; set; }
        public SetUpWingsForDetailDto SetUpWings { get; set; }
        public SoundCheckForDetailDto SoundCheck { get; set; }
        public Show Show { get; set; }
        public int VenueId { get; set; }
        public string Venue { get; set; }
        public Checklist Checklist { get; set; }
    }
}
