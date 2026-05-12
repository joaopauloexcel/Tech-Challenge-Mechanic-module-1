using Mechanic.Application.DTOs.Auth.Request;
using Mechanic.Application.Services;
using Microsoft.Extensions.Configuration;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using Xunit;

public class AuthServiceTests
{
    private AuthService CreateService()
    {
        var inMemorySettings = new Dictionary<string, string>
        {
            {"Jwt:Key", "super_secret_key_123456_super_secret_key_123456"},
            {"Jwt:Issuer", "TestIssuer"},
            {"Jwt:Audience", "TestAudience"}
        };

        IConfiguration config = new ConfigurationBuilder()
            .AddInMemoryCollection(inMemorySettings!)
            .Build();

        return new AuthService(config);
    }

    [Fact]
    public void Login_DeveRetornarNull_QuandoCredenciaisInvalidas()
    {
        var service = CreateService();
        var dto = new LoginRequestDto{ Username = "admin", Password = "wrongpassword" };

        var result = service.Login(dto);

        Assert.Null(result);
    }

    [Fact]
    public void Login_DeveRetornarToken_QuandoCredenciaisValidas()
    {
        var service = CreateService();
        var dto = new LoginRequestDto { Username = "admin", Password = "123456" };
        var result = service.Login(dto);

        Assert.NotNull(result);
    }

    [Fact]
    public void Login_DeveConterClaimsCorretas_NoToken()
    {
        var service = CreateService();
        var dto = new LoginRequestDto { Username = "admin", Password = "123456" };
        var tokenString = service.Login(dto);

        var handler = new JwtSecurityTokenHandler();
        var token = handler.ReadJwtToken(tokenString!.Token);

        var nameClaim = token.Claims.FirstOrDefault(c => c.Type == ClaimTypes.Name);
        var roleClaim = token.Claims.FirstOrDefault(c => c.Type == ClaimTypes.Role);

        Assert.Equal("admin", nameClaim?.Value);
        Assert.Equal("Admin", roleClaim?.Value);
    }

    [Fact]
    public void Login_DeveTerExpiracaoDe2Horas()
    {
        var service = CreateService();
        var dto = new LoginRequestDto { Username = "admin", Password = "123456" };
        var tokenString = service.Login(dto);

        var handler = new JwtSecurityTokenHandler();
        var token = handler.ReadJwtToken(tokenString!.Token);

        var expected = DateTime.UtcNow.AddHours(2);

        Assert.True(token.ValidTo > DateTime.UtcNow);
        Assert.True(token.ValidTo <= expected.AddMinutes(1));
    }

}