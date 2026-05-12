
using System.ComponentModel.DataAnnotations;
using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.Servico.Request
{
    /// <summary>
    /// Representa a request para atualizar serviço.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class AtualizarServicoRequestDto
    {
        /// <summary>
        /// Descricao do serviço.
        /// </summary>
        [Required(ErrorMessage = "Sku é obrigatório.")]
        public string Sku { get; set; } = string.Empty;
        /// <summary>
        /// Descricao do serviço.
        /// </summary>
        public string? Descricao { get; set; } = string.Empty;
        /// <summary>
        /// Preco do serviço.
        /// </summary>
        public decimal? Preco { get; set; }
    }
}
