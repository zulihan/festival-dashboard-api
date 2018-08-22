using AutoMapper;
using FestivalDashboardWebAPI.Dtos;
using FestivalDashboardWebAPI.Models;


namespace FestivalDashboardWebAPI.Helpers
{
    public class AutoMapperProfiles : Profile
    {
        public AutoMapperProfiles()
        {
            CreateMap<User, UserForListDto>()
                .ForMember(dest => dest.PhotoUrl, opt => {
                    opt.MapFrom(src => src.Photo.Url);
                });
            CreateMap<User, UserForDetailDto>()
                .ForMember(dest => dest.PhotoUrl, opt => {
                    opt.MapFrom(src => src.Photo.Url);
                });
            CreateMap<UserForUpdateDto, User>();

            CreateMap<UserForRegisterDto, User>();

            CreateMap<Artist, ArtistForListDto>();

            CreateMap<Artist, ArtistForListDto>();

            CreateMap<ArtistForDetailDto, Artist > ();

            CreateMap<PhotoForCreationDto, Photo>();

            CreateMap<Photo, PhotoForReturnDto>();

        }
    }
}
