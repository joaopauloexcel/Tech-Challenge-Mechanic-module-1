using System.ComponentModel.DataAnnotations;
using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.OrdemServico.Request
{
    [ExcludeFromCodeCoverage]
    public class CriarOrcamentoDto
    {
        [Required(ErrorMessage = "A descrição do orçamento é obrigatória.")]
        public string Descricao { get; set; } = string.Empty;

        public List<ServicoOrcamentoInputDto> ServicosOS { get; set; } = new();

        public List<ProdutoOrcamentoInputDto> ProdutosOS { get; set; } = new();
    }
}
