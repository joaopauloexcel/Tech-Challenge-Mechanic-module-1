using System.ComponentModel.DataAnnotations;

namespace Mechanic.Application.DTOs.Veiculo.Request
{
    /// <summary>
    /// Representa a request para atualizar veículo.
    /// </summary>
    public class AtualizarVeiculoRequestDto
    {
        /// <summary>
        /// Identificador do dono do veículo.
        /// </summary>
        [Required(ErrorMessage = "Cliente é obrigatório.")]
        public int ClienteId { get; set; }
        /// <summary>
        /// Placa do veículo.
        /// </summary>
        public string? Placa { get; set; } = string.Empty;
        /// <summary>
        /// Marca do veículo.
        /// </summary>
        public string? Marca { get; set; } = string.Empty;
        /// <summary>
        /// Modelo do veículo.
        /// </summary>
        public string? Modelo { get; set; }
        /// <summary>
        /// Ano do veículo.
        /// </summary>
        public int? Ano { get; set; }
    }
}