using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.Servico.Response
{
    /// <summary>
    /// Representa um serviço retornado pela API.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class ServicoResponseDto
    {
        /// <summary>
        /// Identificador único do serviço.
        /// </summary>
        public int Id { get; set; }
        /// <summary>
        /// Sku do serviço.
        /// </summary>
        public string Sku { get; set; } = string.Empty;
        /// <summary>
        /// Descricao do serviço.
        /// </summary>
        public string Descricao { get; set; } = string.Empty;
        /// <summary>
        /// Preço do serviço.
        /// </summary>
        public decimal Preco { get; set; }
        /// <summary>
        /// Indica se o serviço está ativo.
        /// </summary>
        public bool Ativo { get; set; }
    }
}