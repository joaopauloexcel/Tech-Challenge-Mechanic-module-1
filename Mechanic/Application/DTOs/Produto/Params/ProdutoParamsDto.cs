
using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.Produto.Params
{
    /// <summary>
    /// Representa os parâmetros para buscar por produto.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class ProdutoParamsDto
    {
        /// <summary>
        /// Sku para busca
        /// </summary>
        public string? Sku { get; set; } = string.Empty;
    }
}