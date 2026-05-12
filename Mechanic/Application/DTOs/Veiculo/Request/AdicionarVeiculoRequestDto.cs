using System.ComponentModel.DataAnnotations;

namespace Mechanic.Application.DTOs.Veiculo.Request
{
    /// <summary>
    /// Representa a request para adicionar veículo.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class AdicionarVeiculoRequestDto
    {
        /// <summary>
        /// Identificador do dono do veículo.
        /// </summary>
        [Required(ErrorMessage = "Cliente é obrigatório.")]
        public int ClienteId { get; set; }
        /// <summary>
        /// Placa do veículo.
        /// </summary>
        [Required(ErrorMessage = "Placa é obrigatório.")]
        public string Placa { get; set; } = string.Empty;
        /// <summary>
        /// Marca do veículo.
        /// </summary>
        [Required(ErrorMessage = "Marca é obrigatório.")]
        public string Marca { get; set; } = string.Empty;
        /// <summary>
        /// Modelo do veículo.
        /// </summary>
        [Required(ErrorMessage = "Modelo é obrigatório.")]
        public string Modelo { get; set; } = string.Empty;
        /// <summary>
        /// Ano do veículo.
        /// </summary>
        [Required(ErrorMessage = "Ano é obrigatório.")]
        public int Ano { get; set; }
    }
}