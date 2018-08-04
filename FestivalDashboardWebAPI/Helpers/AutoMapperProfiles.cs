using AutoMapper;
using FestivalDashboardWebAPI.Dtos;
using FestivalDashboardWebAPI.Models;


namespace FestivalDashboardWebAPI.Helpers
{
    public class AutoMapperProfiles : Profile
    {
        public AutoMapperProfiles()
        {
            CreateMap<User, UserForListDto>();
            CreateMap<UserForUpdateDto, User>();                    

        }
    }
}
