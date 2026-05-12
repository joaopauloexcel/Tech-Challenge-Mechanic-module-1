using System.ComponentModel.DataAnnotations;
using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.Cliente.Request
{
    /// <summary>
    /// Representa a request para adicionar cliente.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class AdicionarClienteRequestDto
    {
        /// <summary>
        /// Nome completo do cliente.
        /// </summary>
        [Required(ErrorMessage = "Nome é obrigatório.")]
        public string Nome { get; set; } = string.Empty;

        /// <summary>
        /// CPF ou CNPJ (somente números).
        /// </summary>
        [Required(ErrorMessage = "CpfCnpj é obrigatório.")]
        public string CpfCnpj { get; set; } = string.Empty;

        /// <summary>
        /// Telefone principal.
        /// </summary>
        [Required(ErrorMessage = "Telefone1 é obrigatório.")]
        public string Telefone1 { get; set; } = string.Empty;

        /// <summary>
        /// Telefone secundário (opcional).
        /// </summary>
        public string? Telefone2 { get; set; }

        /// <summary>
        /// Email do cliente.
        /// </summary>
        public string? Email { get; set; }
    }
}