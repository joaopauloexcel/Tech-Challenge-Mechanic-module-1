using System.Diagnostics.CodeAnalysis;

    namespace Mechanic.Application.DTOs.Veiculo.Response
{
    /// <summary>
    /// Representa um veículo retornado pela API.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class VeiculoResponseDto
    {
        /// <summary>
        /// Identificador único do veículo.
        /// </summary>
        public int Id { get; set; }
        /// <summary>
        /// Identificador do dono do veículo.
        /// </summary>
        public int ClienteId { get; set; }
        /// <summary>
        /// Placa do veículo.
        /// </summary>
        public string Placa { get; set; } = string.Empty;
        /// <summary>
        /// Marca do veículo.
        /// </summary>
        public string Marca { get; set; } = string.Empty;
        /// <summary>
        /// Modelo do veículo.
        /// </summary>
        public string? Modelo { get; set; }
        /// <summary>
        /// Ano do veículo.
        /// </summary>
        public int? Ano { get; set; }
        /// <summary>
        /// Indica se o veículo está ativo
        /// </summary>
        public bool Ativo { get; set; }
    }
}