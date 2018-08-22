﻿using FestivalDashboardWebAPI.Models;

namespace FestivalDashboardWebAPI.Dtos
{
    public class UserForListDto
    {
        public int Id { get; set; }
        public string UserName { get; set; }
        public string Email { get; set; }
        public string PhoneNumber { get; set; }
        public string Role { get; set; }
        public string PhotoUrl { get; set; }
        public PhotoForReturnDto Photo { get; set; }
    }
}
