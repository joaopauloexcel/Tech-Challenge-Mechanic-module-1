using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.OrdemServico.Response
{
    [ExcludeFromCodeCoverage]
    public class TempoMedioServicoDto
    {
        public string Servico { get; set; } = string.Empty;
        public double MediaMinutos { get; set; }
        public int TotalExecucoes { get; set; }
    }
}
