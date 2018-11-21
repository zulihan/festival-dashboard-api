using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FestivalDashboardWebAPI.Dtos
{
    public class RunnersForTaskDto
    {
        public int Id { get; set; }
        public string UserName { get; set; }
        public string PhoneNumber { get; set; }
        public string PhotoUrl { get; set; }
        // public PhotoForReturnDto Photo { get; set; }
    }
}
