using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.OrdemServico.Response
{
    /// <summary>
    /// Representa um produto utilizado dentro de um orçamento de ordem de serviço.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class OrdemServicoProdutoDetalhadoDto
    {
        /// <summary>
        /// Descrição do produto ou serviço.
        /// </summary>
        public string ProdutoDescricao { get; set; } = string.Empty;

        /// <summary>
        /// Quantidade do produto utilizada na ordem de serviço.
        /// </summary>
        public int QtdProduto { get; set; }

        /// <summary>
        /// Preço unitário do produto.
        /// </summary>
        public decimal PrecoUnitarioProduto { get; set; }

        /// <summary>
        /// Preço total do produto (quantidade x valor unitário).
        /// </summary>
        public decimal PrecoTotalProduto { get; set; }
    }
}