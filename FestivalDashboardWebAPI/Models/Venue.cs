using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FestivalDashboardWebAPI.Models
{
    public class Venue
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int ArtistId { get; set; }

    }
}
