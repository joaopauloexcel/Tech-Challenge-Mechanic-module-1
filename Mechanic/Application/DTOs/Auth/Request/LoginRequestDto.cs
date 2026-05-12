using System.ComponentModel.DataAnnotations;
using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.Auth.Request
{
    /// <summary>
    /// Representa a request de Login.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class LoginRequestDto
    {
        /// <summary>
        /// Usuário de Login.
        /// </summary>
        [Required(ErrorMessage = "Username é obrigatório.")]
        public string Username { get; set; } = string.Empty;
        /// <summary>
        /// Senha de Login.
        /// </summary>
        [Required(ErrorMessage = "Password é obrigatório.")]
        public string Password { get; set; } = string.Empty;
    }
}