using System.ComponentModel.DataAnnotations;
using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.OrdemServico.Request
{
    [ExcludeFromCodeCoverage]
    public class ServicoOrcamentoInputDto
    {
        [Required]
        public int ServicoId { get; set; }

        public string? ServicoDescricao { get; set; }

        [Required]
        public decimal PrecoServico { get; set; }
    }
}
