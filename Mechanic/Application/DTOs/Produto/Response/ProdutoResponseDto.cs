using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.Produto.Response
{
    /// <summary>
    /// Representa um produto retornado pela API.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class ProdutoResponseDto
    {
        /// <summary>
        /// Identificador único do produto.
        /// </summary>
        public int Id { get; set; }
        /// <summary>
        /// Sku do produto.
        /// </summary>
        public string Sku { get; set; } = string.Empty;
        /// <summary>
        /// Descricao do produto.
        /// </summary>
        public string Descricao { get; set; } = string.Empty;
        /// <summary>
        /// Preco de custo do produto.
        /// </summary>
        public decimal PrecoCusto { get; set; }
        /// <summary>
        /// Preco de venda do produto.
        /// </summary>
        public decimal PrecoVenda { get; set; }
        /// <summary>
        /// Quantidade total do produto.
        /// </summary>
        public int QuantidadeTotal { get; set; }
        /// <summary>
        /// Quantidade reservada do produto.
        /// </summary>
        public int QuantidadeReservada { get; set; }
        /// <summary>
        /// Quantidade mínima do produto.
        /// </summary>
        public int QuantidadeMinima { get; set; }
        /// <summary>
        /// Indica se o produto está ativo.
        /// </summary>
        public bool Ativo { get; set; }
    }
}