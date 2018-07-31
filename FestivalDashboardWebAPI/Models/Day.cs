using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FestivalDashboardWebAPI.Models
{
    public class Day
    {
        public int Id { get; set; }
        public int ArtistId { get; set; }
        public int DayNum { get; set; }
    }
}
