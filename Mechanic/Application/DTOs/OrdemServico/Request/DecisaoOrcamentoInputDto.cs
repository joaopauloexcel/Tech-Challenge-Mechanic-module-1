using System.ComponentModel.DataAnnotations;
using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.OrdemServico.Request
{
    [ExcludeFromCodeCoverage]
    public class DecisaoOrcamentoInputDto
    {
        [Required(ErrorMessage = "Aprovar é obrigatório")]
        public bool Aprovar { get; set; }
    }
}
