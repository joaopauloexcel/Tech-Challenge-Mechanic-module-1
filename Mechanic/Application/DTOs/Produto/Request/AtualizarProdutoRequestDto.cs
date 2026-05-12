using System.ComponentModel.DataAnnotations;
using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.Produto.Request
{
    /// <summary>
    /// Representa a request para atualizar produto.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class AtualizarProdutoRequestDto
    {
        /// <summary>
        /// Sku do produto.
        /// </summary>
        [Required(ErrorMessage = "Sku é obrigatório.")]
        public string Sku { get; set; } = string.Empty;
        /// <summary>
        /// Descricao do produto.
        /// </summary>
        public string? Descricao { get; set; } = string.Empty;
        /// <summary>
        /// Preco de custo do produto.
        /// </summary>
        public decimal? PrecoCusto { get; set; }
        /// <summary>
        /// Preco de venda do produto.
        /// </summary>
        public decimal? PrecoVenda { get; set; }
        /// <summary>
        /// Quantidade mínima do produto.
        /// </summary>
        public int? QuantidadeMinima { get; set; }
    }
}
