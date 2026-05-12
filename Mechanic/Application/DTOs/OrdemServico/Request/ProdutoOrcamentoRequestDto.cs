using System.ComponentModel.DataAnnotations;
using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.OrdemServico.Request
{
    /// <summary>
    /// Representa a request para orçamento de produtos.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class ProdutoOrcamentoRequestDto
    {
        /// <summary>
        /// Identificador do produto para orçamento da OS.
        /// </summary>
        [Required(ErrorMessage = "ProdutoId é obrigatóriao.")]
        public int ProdutoIdOrcamento { get; set; }

        /// <summary>
        /// Quantidade do produto para orçamento da OS.
        /// </summary>
        [Required(ErrorMessage = "Quantidade do produto para orçamento é obrigatória.")]
        public int QtdProdutoOrcamento { get; set; }

        /// <summary>
        /// Preco unitário do produto para orçamento da OS.
        /// </summary>
        [Required(ErrorMessage = "Preco unitário do produto para orçamento é obrigatório.")]
        public decimal PrecoUnitarioProdutoOrcamento { get; set; }
    }
}
