using Mechanic.Application.DTOs.Auth;
using Mechanic.Application.Services;

namespace Mechanic.Presentation.Endpoints;

public static class AuthEndpoints
{
    public static void MapAuthEndpoints(this IEndpointRouteBuilder routes)
    {
        routes.MapPost("/api/auth/login", (LoginDto dto, AuthService service) =>
        {
            var token = service.Login(dto.Username, dto.Password);

            return token is null
                ? Results.Unauthorized()
                : Results.Ok(new { token });
        })
        .WithName("Login")
        .WithSummary("Autentica o usuário")
        .WithDescription("Realiza login com username e senha e retorna um JWT token.")
        .Produces<object>(StatusCodes.Status200OK)
        .Produces(StatusCodes.Status401Unauthorized);
    }
}