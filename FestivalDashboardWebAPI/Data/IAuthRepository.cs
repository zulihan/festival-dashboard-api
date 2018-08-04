﻿using FestivalDashboardWebAPI.Models;
using System.Threading.Tasks;

namespace FestivalDashboardWebAPI.Data
{
    public interface IAuthRepository
    {
        Task<User> Register(User user, string password);
        Task<User> Login(string name, string password);
        Task<bool> UserExists(string name);
    }
}
