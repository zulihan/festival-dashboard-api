using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FestivalDashboardWebAPI.Models
{
    public class Artist
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string PhotoUrl { get; set; }        
        public string ContactName { get; set; }
        public string ContactPhone { get; set; }
        public string ContactEmail { get; set; }
        public int OnRoad { get; set; }
        public int OnStage { get; set; }
        public GetIn GetIn { get; set; }
        public SetUpWings SetUpWings { get; set; }
        public SoundCheck SoundCheck { get; set; }
        public Show Show { get; set; }
        public Venue Venue { get; set; }
    }
}
