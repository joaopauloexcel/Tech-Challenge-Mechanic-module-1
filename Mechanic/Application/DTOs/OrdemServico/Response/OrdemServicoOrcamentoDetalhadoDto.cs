using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.OrdemServico.Response
{
    /// <summary>
    /// Representa o detalhamento de um orçamento dentro de uma ordem de serviço.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class OrdemServicoOrcamentoDetalhadoDto
    {
        /// <summary>
        /// Descrição do orçamento.
        /// </summary>
        public string Descricao { get; set; } = string.Empty;

        /// <summary>
        /// Observações do mecânico sobre o orçamento.
        /// </summary>
        public string? ObservacaoMecanico { get; set; }

        /// <summary>
        /// Data em que o orçamento foi aprovado.
        /// </summary>
        public DateTime? DataAprovacaoOrcamento { get; set; }

        /// <summary>
        /// Lista de produtos/serviços incluídos no orçamento da OS.
        /// </summary>
        public List<OrdemServicoProdutoDetalhadoDto> ProdutosOS { get; set; } = new();

        /// <summary>
        /// Valor total do orçamento.
        /// </summary>
        public decimal PrecoTotal { get; set; }

        /// <summary>
        /// Status atual do orçamento (ex: Pendente, Aprovado, Reprovado).
        /// </summary>
        public string StatusOrcamento { get; set; } = string.Empty;
    }
}