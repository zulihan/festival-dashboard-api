﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FestivalDashboardWebAPI.Dtos
{
    public class UserForUpdateDto
    {
        public string Name { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Role { get; set; }
    }
}
