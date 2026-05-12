using System.ComponentModel.DataAnnotations;
using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.OrdemServico.Request
{
    /// <summary>
    /// Representa a request para criar um orçamento de OS.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class CriarOrcamentoRequestDto
    {
        /// <summary>
        /// Descrição do orçamento.
        /// </summary>
        [Required(ErrorMessage = "Descrição do orçamento é obrigatória.")]
        public string Descricao { get; set; } = string.Empty;

        /// <summary>
        /// Lista de serviços para orçamento.
        /// </summary>
        [Required(ErrorMessage = "Lista de serviços é obrigatório.")]
        public List<ServicoOrcamentoRequestDto> ServicosOrcamentoOS { get; set; } = new();

        /// <summary>
        /// Lista de produtos para orçamento.
        /// </summary>
        public List<ProdutoOrcamentoRequestDto> ProdutosOrcamentoOS { get; set; } = new();

        /// <summary>
        /// Observação do mecânico para orçamento.
        /// </summary>
        public string? observacaoMecanico { get; set; } = string.Empty;
    }
}