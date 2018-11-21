using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FestivalDashboardWebAPI.Models
{
    public class Checklist
    {
        public int Id { get; set; }
        public int ArtistId { get; set; }
        public int UserId { get; set; }
        public Boolean InvitsChecked { get; set; }
        public string InvitsComment { get; set; }
        public Boolean SacemChecked { get; set; }
        public string SacemComment { get; set; }
        public Boolean RecordingChecked { get; set; }
        public string RecordingComment { get; set; }
    }
}
