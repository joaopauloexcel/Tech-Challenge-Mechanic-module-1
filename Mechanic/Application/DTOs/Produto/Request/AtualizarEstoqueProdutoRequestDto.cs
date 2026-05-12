

using System.ComponentModel.DataAnnotations;
using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.Produto.Request
{
    /// <summary>
    /// Representa a request para atualizar estoque do produto.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class AtualizarEstoqueProdutoRequestDto
    {
        /// <summary>
        /// Quantidade adicionada do produto.
        /// </summary>
        [Required(ErrorMessage = "QuantidadeAdicionada é obrigatório.")]
        public int QuantidadeAdicionada { get; set; }
        /// <summary>
        /// Novo Preço de custo do produto.
        /// </summary>
        [Required(ErrorMessage = "NovoPrecoCusto é obrigatório.")]
        public decimal NovoPrecoCusto { get; set; }
        /// <summary>
        /// Novo Preço de venda do produto.
        /// </summary>
        [Required(ErrorMessage = "NovoPrecoVenda é obrigatório.")]
        public decimal NovoPrecoVenda { get; set; }
    }
}
