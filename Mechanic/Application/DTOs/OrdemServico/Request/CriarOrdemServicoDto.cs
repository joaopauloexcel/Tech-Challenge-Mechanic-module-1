using System.ComponentModel.DataAnnotations;
using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.OrdemServico.Request
{
    [ExcludeFromCodeCoverage]
    public class CriarOrdemServicoDto
    {
        [Required(ErrorMessage = "Título é obrigatório")]
        public string Titulo { get; set; } = string.Empty;
        [Required(ErrorMessage = "Descricao é obrigatório")]
        public string Descricao { get; set; } = string.Empty;
        [Required(ErrorMessage = "Cliente é obrigatório")]
        public int ClienteId { get; set; }
        [Required(ErrorMessage = "Veículo é obrigatório")]
        public int VeiculoId { get; set; }
    }
}
