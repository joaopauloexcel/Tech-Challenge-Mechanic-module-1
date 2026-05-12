using System.ComponentModel.DataAnnotations;
using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.OrdemServico.Request
{
    /// <summary>
    /// Representa a request para decisão do cliente para aprovar/reprovar orçamento.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class DecisaoOrcamentoRequestDto
    {
        /// <summary>
        /// Decisão para aprovar orçamento da OS.
        /// </summary>
        [Required(ErrorMessage = "Decisão se permite aprovar é obrigatória")]
        public bool Aprovar { get; set; }
    }
}
