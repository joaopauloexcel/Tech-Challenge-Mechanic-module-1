using System.ComponentModel.DataAnnotations;
using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.OrdemServico.Request
{
    /// <summary>
    /// Representa a request para orçamento de serviços.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class ServicoOrcamentoRequestDto
    {
        /// <summary>
        /// Identificador do servico para orçamento da OS.
        /// </summary>
        [Required(ErrorMessage = "ServicoId é obrigatóriao.")]
        public int ServicoIdOrcamento { get; set; }


        /// <summary>
        /// Preço do serviço para orçamento da OS.
        /// </summary>
        [Required(ErrorMessage = "Preço do serviço para orçamento é obrigatóriao.")]
        public decimal PrecoServicoOrcamento { get; set; }
    }
}
