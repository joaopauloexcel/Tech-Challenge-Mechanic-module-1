using Mechanic.Application.DTOs.Auth;
using Mechanic.Application.DTOs.Auth.Request;
using Mechanic.Application.Services;
using Microsoft.AspNetCore.Mvc;

namespace Mechanic.Presentation.Endpoints;

public static class AuthEndpoints
{
    public static void MapAuthEndpoints(this IEndpointRouteBuilder routes)
    {
        var group = routes
          .MapGroup("/api/auth")
          .WithTags("Auth");

        group.MapPost("/login", ([FromBody] LoginRequestDto dto, [FromKeyedServices] AuthService service) =>
        {
            var token = service.Login(dto);

            return token is null
                ? Results.Unauthorized()
                : Results.Ok(new { token });
        })
        .WithName("Login")
        .WithSummary("Autentica o usuário")
        .WithDescription("Realiza login com username e senha e retorna um JWT token.")
        .Produces<LoginResponseDto>(StatusCodes.Status200OK)
        .Produces(StatusCodes.Status401Unauthorized);
    }
}