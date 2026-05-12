using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.Auth
{
    /// <summary>
    /// Representa a response de Login.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class LoginResponseDto
    {
        /// <summary>
        /// Token gerado para Login.
        /// </summary>
        public string Token { get; set; } = string.Empty;
    }
}