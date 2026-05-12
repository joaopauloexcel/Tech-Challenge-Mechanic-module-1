using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.OrdemServico.Response
{
    /// <summary>
    /// Representa o relatório de tempo médio (KPIs) da OS retornado pela API.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class TempoMedioOSResponseDto
    {
        /// <summary>
        /// Média em minutos do tempo médio (KPIs) da OS.
        /// </summary>
        public double MediaMinutos { get; set; }
        /// <summary>
        /// Média total do tempo médio (KPIs) oa OS.
        /// </summary>
        public int TotalOS { get; set; }
    }
}