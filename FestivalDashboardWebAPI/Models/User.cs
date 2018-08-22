using Microsoft.AspNetCore.Identity;
using System.Collections.Generic;

namespace FestivalDashboardWebAPI.Models
{
    public class User : IdentityUser<int>
    {
        // public string Name { get; set; }
        // public string PhoneNumber { get; set; }
        public string Role { get; set; }
        // public string PhotoUrl { get; set; }
        public Photo Photo { get; set; }
        public ICollection<UserRole> UserRoles { get; set; }

    }
}
