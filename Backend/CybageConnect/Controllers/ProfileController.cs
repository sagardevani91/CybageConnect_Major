using CybageConnect.Service.DTOs;
using CybageConnect.Service.Services;
using CybageConnect.Service.Services.IServices;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Http.HttpResults;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Routing.Constraints;
using Microsoft.IdentityModel.Tokens;

namespace CybageConnect.Controllers
{
    [Authorize()]
    [Route("api/[controller]")]
    [ApiController]
    public class ProfileController : ControllerBase
    {
        private readonly IProfileService _profileService;
        private readonly IAuthService _authService;
        public ProfileController(IProfileService profileService, IAuthService authService)
        {
            _profileService = profileService;
            _authService = authService;
        }

        [HttpGet]
        [Route("{id}")]
        [ProducesResponseType(StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<IActionResult> Get(int id)
        {
            try
            {
                var user = await _profileService.GetUserProfile(id);
                if(user != null) 
                {
                    return Ok(user);
                }
                else
                {
                    return NotFound("User not found");
                }
            }
            catch (Exception ex)
            {
                return StatusCode(500, "Internal Server Error");
            }
            
        }

        [HttpPut]
        [Route("{id}")]
        [ProducesResponseType(StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<IActionResult> Update(int id,UserDTO user)
        {
            try
            {
                ValidateDTO validationResult =  await _authService.ValidateFields(user.Username, user.Email, user.Phone, user.Id);
                // Call the registration service method
                if (validationResult.UsernameError.IsNullOrEmpty() && validationResult.EmailError.IsNullOrEmpty() && validationResult.PhoneError.IsNullOrEmpty())
                {
                    bool result = _profileService.UpdateUserProfile(id, user);

                    if (result)
                    {
                        return Ok(new { message = "Updated" });
                    }
                    else
                    {
                        return BadRequest(new { message = "Profile not Updated" });
                    }
                }
                else
                {
                    return BadRequest(validationResult);
                }
            }
            catch (Exception ex)
            {
                return StatusCode(500, "Internal Server Error");
            }
        }
    }
}
