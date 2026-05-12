using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.OrdemServico.Response
{
    /// <summary>
    /// Representa um produto utilizado dentro de um orçamento de ordem de serviço.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class OrdemServicoServicoResponseDto
    {
        /// <summary>
        /// Identificador do servico.
        /// </summary>
        public int ServicoOrcadoId { get; set; }
        /// <summary>
        /// Sku do servico.
        /// </summary>
        public string SkuServicoOrcado { get; set; } = string.Empty;
        /// <summary>
        /// Descrição do servico.
        /// </summary>
        public string DescricaoServicoOrcado { get; set; } = string.Empty; 
        /// <summary>
        /// Preço do serviço.
        /// </summary>
        public decimal PrecoServicoOrcado { get; set; }

    }
}