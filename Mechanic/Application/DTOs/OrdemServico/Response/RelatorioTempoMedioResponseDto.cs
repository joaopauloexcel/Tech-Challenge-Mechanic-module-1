using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.OrdemServico.Response
{
    /// <summary>
    /// Representa o relatório de tempo médio (KPIs) retornado pela API.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class RelatorioTempoMedioResponseDto
    {
        /// <summary>
        /// Lista de informações de tempo médio (KPIs) por serviço.
        /// </summary>
        public List<TempoMedioServicoResponseDto> PorServico { get; set; } = [];

        /// <summary>
        /// Lista de informações de tempo médio (KPIs) por OS.
        /// </summary>
        public TempoMedioOSResponseDto PorOS { get; set; } = new();
    }
}