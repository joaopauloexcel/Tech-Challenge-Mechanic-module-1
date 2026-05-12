using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.Cliente.Response
{
    /// <summary>
    /// Representa um cliente retornado pela API.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class ClienteResponseDto
    {
        /// <summary>
        /// Identificador único do cliente.
        /// </summary>
        public int Id { get; set; }

        /// <summary>
        /// Nome completo do cliente.
        /// </summary>
        public string Nome { get; set; } = string.Empty;

        /// <summary>
        /// CPF ou CNPJ (somente números).
        /// </summary>
        public string CpfCnpj { get; set; } = string.Empty;

        /// <summary>
        /// Telefone principal.
        /// </summary>
        public string Telefone1 { get; set; } = string.Empty;

        /// <summary>
        /// Telefone secundário (opcional).
        /// </summary>
        public string? Telefone2 { get; set; }

        /// <summary>
        /// Email do cliente.
        /// </summary>
        public string? Email { get; set; }

        /// <summary>
        /// Indica se o cliente está ativo.
        /// </summary>
        public bool Ativo { get; set; }
    }
}