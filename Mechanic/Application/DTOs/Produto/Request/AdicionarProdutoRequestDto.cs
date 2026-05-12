using System.ComponentModel.DataAnnotations;
using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.Produto.Request
{
    /// <summary>
    /// Representa a request para adicionar produto.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class AdicionarProdutoRequestDto
    {
        /// <summary>
        /// Sku do produto.
        /// </summary>
        [Required(ErrorMessage = "Sku é obrigatório.")]
        public string Sku { get; set; } = string.Empty;
        /// <summary>
        /// Descricao do produto.
        /// </summary>
        [Required(ErrorMessage = "Descricao é obrigatório.")]
        public string Descricao { get; set; } = string.Empty;
        /// <summary>
        /// Preco de custo do produto.
        /// </summary>
        [Required(ErrorMessage = "PrecoCusto é obrigatório.")]
        public decimal PrecoCusto { get; set; }
        /// <summary>
        /// Preco de venda do produto.
        /// </summary>
        [Required(ErrorMessage = "PrecoVenda é obrigatório.")]
        public decimal PrecoVenda { get; set; }
        /// <summary>
        /// Quantidade total do produto.
        /// </summary>
        [Required(ErrorMessage = "QuantidadeTotal é obrigatório.")]
        public int QuantidadeTotal { get; set; }
        /// <summary>
        /// Quantidade mínima do produto.
        /// </summary>
        [Required(ErrorMessage = "QuantidadeMinima é obrigatório.")]
        public int QuantidadeMinima { get; set; }
    }
}