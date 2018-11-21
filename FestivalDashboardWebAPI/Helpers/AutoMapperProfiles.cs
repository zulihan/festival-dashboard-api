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

            CreateMap<User, RunnersForTaskDto>()
                .ForMember(dest => dest.PhotoUrl, opt => {
                    opt.MapFrom(src => src.Photo.Url);
                });

            CreateMap<Artist, ArtistForDetailDto>();

            CreateMap<Artist, ArtistForListDto>();

            CreateMap<Artist, ArtistsNamesDto>();

            CreateMap<Artist, ArtistsByDayDto>();

            CreateMap<ArtistForDetailDto, Artist>();

            CreateMap<ArtistForRegisterDto, Artist>();

            CreateMap<PhotoForCreationDto, Photo>();

            CreateMap<ArtistForUpdateDto, Artist>();

            CreateMap<Photo, PhotoForReturnDto>();

            CreateMap<Checklist, ChecklistSingleDto>();

            CreateMap<Checklist, ChecklistsForListDto>();

            CreateMap<ChecklistForUpdateDto, Checklist>();

        }
    }
}
