using Mechanic.Application.Enums;
using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.OrdemServico.Query
{
    [ExcludeFromCodeCoverage]
    public class ListarOrdemServicoFiltroDto
    {
        public int? Id { get; set; }
        public StatusOrdemServico? Status { get; set; }
        public string? CpfCnpj { get; set; }
        public string? Placa { get; set; }
    }
}
