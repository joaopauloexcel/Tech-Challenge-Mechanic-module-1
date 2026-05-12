using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.Cliente.Params
{
    /// <summary>
    /// Representa os parâmetros para buscar por cliente.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class ClienteParamsDto
    {
        /// <summary>
        /// CPF ou CNPJ para busca
        /// </summary>
        public string? CpfCnpj { get; set; } = string.Empty;
    }
}