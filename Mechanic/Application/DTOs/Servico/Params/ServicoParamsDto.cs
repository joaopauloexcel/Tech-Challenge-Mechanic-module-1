using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.Servico.Params
{
    /// <summary>
    /// Representa os parâmetros para buscar por serviço.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class ServicoParamsDto
    {
        /// <summary>
        /// Sku para busca
        /// </summary>
        public string? Sku { get; set; } = string.Empty;
    }
}