using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.OrdemServico.Response
{
    [ExcludeFromCodeCoverage]
    public class RelatorioTempoMedioDto
    {
        public List<TempoMedioServicoDto> PorServico { get; set; } = [];
        public TempoMedioOSDto PorOS { get; set; } = new();
    }
}
