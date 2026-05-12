using System.ComponentModel.DataAnnotations;
using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.Servico.Request
{
    /// <summary>
    /// Representa a request para adicionar serviço.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class AdicionarServicoRequestDto
    {
        /// <summary>
        /// Sku do serviço.
        /// </summary>
        [Required(ErrorMessage = "Sku é obrigatório.")]
        public string Sku { get; set; } = string.Empty;
        /// <summary>
        /// Descrição do serviço.
        /// </summary>
        [Required(ErrorMessage = "Descricao é obrigatória.")]
        public string Descricao { get; set; } = string.Empty;
        /// <summary>
        /// Preço do serviço.
        /// </summary>
        [Required(ErrorMessage = "Preco é obrigatório.")]
        public decimal Preco { get; set; }
    }
}