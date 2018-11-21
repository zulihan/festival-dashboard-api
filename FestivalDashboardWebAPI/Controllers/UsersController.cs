using AutoMapper;
using FestivalDashboardWebAPI.Data;
using FestivalDashboardWebAPI.Dtos;
using FestivalDashboardWebAPI.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Threading.Tasks;

namespace FestivalDashboardWebAPI.Controllers
{
    // [Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class UsersController : ControllerBase
    {
        private readonly IDashboardRepository _repo;
        private readonly IMapper _mapper;
        private readonly UserManager<User> _userManager;

        public UsersController(IDashboardRepository repo,
            IMapper mapper,
            UserManager<User> userManager)
        {
            _repo = repo;
            _mapper = mapper;
            _userManager = userManager;
        }

        [HttpGet]
        public async Task<IActionResult> GetUsers()
        {
            var users = await _repo.GetUsers();
            var usersToReturn = _mapper.Map<IEnumerable<UserForListDto>>(users);

            return Ok(usersToReturn);
        }

        [HttpGet("runners")]
        public async Task<IActionResult> GetRunners()
        {
            var runners = await _repo.GetRunners();
            var runnersToReturn = _mapper.Map<IEnumerable<RunnersForTaskDto>>(runners);

            return Ok(runnersToReturn);
        }

        [HttpGet("{id}", Name = "GetUser")]
        public async Task<IActionResult> GetUser(int id)
        {
            var user = await _repo.GetUser(id);
            var userToReturn = _mapper.Map<UserForDetailDto>(user);

            return Ok(userToReturn);
        }

        [HttpPut("update/{id}")]
        public async Task<IActionResult> UpdateUser(int id, [FromBody] UserForUpdateDto userForUpdateDto)
        {
            //if (id != int.Parse(User.FindFirst(ClaimTypes.NameIdentifier).Value))
            //    return Unauthorized();

            var userFromRepo = await _repo.GetUser(id);
            // var userFromRepo = _userManager.FindByIdAsync(id.ToString());

            userFromRepo.UserName = userForUpdateDto.UserName;
            userFromRepo.Email = userForUpdateDto.Email;
            userFromRepo.PhoneNumber = userForUpdateDto.PhoneNumber;
            userFromRepo.Role = userForUpdateDto.Role;

            var result = await _userManager.UpdateAsync(userFromRepo);

            var userToReturn = _mapper.Map<UserForDetailDto>(userFromRepo);

            if (result.Succeeded)
            {
                return CreatedAtRoute("GetUser",
                    new { controller = "Users", id = userFromRepo.Id }, userToReturn);
            }

            return BadRequest(result.Errors);

            //if (await _repo.SaveAll())
            //    return NoContent();

            //throw new Exception($"Updating user {id} failed on save");
        }

    }
}
