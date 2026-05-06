using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.OrdemServico.Response
{
    [ExcludeFromCodeCoverage]
    public class TempoMedioOSDto
    {
        public double MediaMinutos { get; set; }
        public int TotalOS { get; set; }
    }
}
