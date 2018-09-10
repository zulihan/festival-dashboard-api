using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FestivalDashboardWebAPI.Models
{
    public class SetUpWings
    {
        public int Id { get; set; }
        public Artist Artist { get; set; }
        public int ArtistId { get; set; }
        public int DayId { get; set; }
        public int VenueId { get; set; }
        public DateTime? Start { get; set; }
        public DateTime? End { get; set; }
    }
}
