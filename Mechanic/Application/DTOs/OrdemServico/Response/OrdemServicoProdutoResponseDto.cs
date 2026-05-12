using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.OrdemServico.Response
{
    /// <summary>
    /// Representa um produto utilizado dentro de um orçamento de ordem de serviço.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class OrdemServicoProdutoResponseDto
    {
        /// <summary>
        /// Identificador do produto.
        /// </summary>
        public int ProdutoOrcadoId { get; set; }

        /// <summary>
        /// Sku do produto.
        /// </summary>
        public string SkuProdutoOrcado { get; set; } = string.Empty;
        /// <summary>
        /// Descrição do produto.
        /// </summary>
        public string DescricaoProdutoOrcado { get; set; } = string.Empty;

        /// <summary>
        /// Quantidade do produto utilizada na ordem de serviço.
        /// </summary>
        public int QtdProdutoOrcado { get; set; }

        /// <summary>
        /// Preço unitário do produto.
        /// </summary>
        public decimal PrecoUnitarioProdutoOrcado { get; set; }

        /// <summary>
        /// Preço total do produto (quantidade x valor unitário).
        /// </summary>
        public decimal PrecoTotalProduto { get; set; }
    }
}