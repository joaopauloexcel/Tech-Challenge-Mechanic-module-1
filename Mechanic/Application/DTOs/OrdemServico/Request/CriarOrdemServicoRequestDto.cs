using System.ComponentModel.DataAnnotations;
using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.OrdemServico.Request
{
    /// <summary>
    /// Representa a request para criar uma ordem de serviço.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class CriarOrdemServicoRequestDto
    {
        /// <summary>
        /// Titulo da OS.
        /// </summary>
        [Required(ErrorMessage = "Título é obrigatório")]
        public string Titulo { get; set; } = string.Empty;

        /// <summary>
        /// Descricao da OS.
        /// </summary>
        [Required(ErrorMessage = "Descricao é obrigatório")]
        public string Descricao { get; set; } = string.Empty;

        /// <summary>
        /// Identificador do cliente da OS.
        /// </summary>
        [Required(ErrorMessage = "Cliente é obrigatório")]
        public int ClienteId { get; set; }

        /// <summary>
        /// Identificador do veículo da OS.
        /// </summary>
        [Required(ErrorMessage = "Veículo é obrigatório")]
        public int VeiculoId { get; set; }
    }
}
