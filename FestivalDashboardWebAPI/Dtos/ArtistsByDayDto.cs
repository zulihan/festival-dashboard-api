﻿using FestivalDashboardWebAPI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FestivalDashboardWebAPI.Dtos
{
    public class ArtistsByDayDto
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int DayId { get; set; }
        public Show Show { get; set; }
        public GetIn GetIn { get; set; }
        public SetUpWings SetUpWings { get; set; }
        public SoundCheck SoundCheck { get; set; }
        public int VenueId { get; set; }
        public string Venue { get; set; }
    }
}
