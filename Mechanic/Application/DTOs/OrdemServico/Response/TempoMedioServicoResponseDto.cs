using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.OrdemServico.Response
{
    /// <summary>
    /// Representa o relatório de tempo médio (KPIs) por serviço retornado pela API.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class TempoMedioServicoResponseDto
    {
        /// <summary>
        /// Serviço avaliado no tempo médio (KPIs) por serviço.
        /// </summary>
        public string Servico { get; set; } = string.Empty;

        /// <summary>
        /// Média em minutos do tempo médio (KPIs) por serviço.
        /// </summary>
        public double MediaMinutos { get; set; }

        /// <summary>
        /// Total de execuções do tempo médio (KPIs) por serviço.
        /// </summary>
        public int TotalExecucoes { get; set; }
    }
}
