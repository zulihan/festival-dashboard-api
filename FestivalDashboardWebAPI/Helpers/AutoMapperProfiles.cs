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

            CreateMap<Artist, ArtistForDetailDto>();

            CreateMap<Artist, ArtistForListDto>();

            CreateMap<Artist, ArtistsByDayDto>();

            CreateMap<ArtistForDetailDto, Artist>();

            CreateMap<ArtistForRegisterDto, Artist>();

            CreateMap<PhotoForCreationDto, Photo>();

            CreateMap<ArtistForUpdateDto, Artist>();

            CreateMap<Photo, PhotoForReturnDto>();

        }
    }
}
