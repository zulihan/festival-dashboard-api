using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FestivalDashboardWebAPI.Dtos
{
    public class ChecklistsForListDto
    {
        public int Id { get; set; }
        public int ArtistId { get; set; }
        public string Artist { get; set; }
        public int DayId { get; set; }
        public int UserId { get; set; }
        public Boolean InvitsChecked { get; set; }
        public string InvitsComment { get; set; }
        public Boolean SacemChecked { get; set; }
        public string SacemComment { get; set; }
        public Boolean RecordingChecked { get; set; }
        public string RecordingComment { get; set; }
    }
}
