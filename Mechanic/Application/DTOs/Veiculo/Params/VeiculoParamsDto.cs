using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.Veiculo.Params
{
    /// <summary>
    /// Representa os parâmetros para buscar por veículo.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class VeiculoParamsDto
    {
        /// <summary>
        /// Placa para busca
        /// </summary>
        public string? Placa { get; set; } = string.Empty;
    }
}