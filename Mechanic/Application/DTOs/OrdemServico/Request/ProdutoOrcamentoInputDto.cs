using System.ComponentModel.DataAnnotations;
using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.OrdemServico.Request
{
    [ExcludeFromCodeCoverage]
    public class ProdutoOrcamentoInputDto
    {
        [Required]
        public int ProdutoId { get; set; }

        public string? ProdutoDescricao { get; set; }

        [Required]
        public int QtdProduto { get; set; }

        [Required]
        public decimal PrecoUnitarioProduto { get; set; }
    }
}
