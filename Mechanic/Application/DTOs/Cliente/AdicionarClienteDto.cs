using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.Cliente
{
    [ExcludeFromCodeCoverage]
    public class AdicionarClienteDto
    {
        public string Nome { get; set; } = string.Empty;
        public string CpfCnpj { get; set; } = string.Empty;
        public string Telefone1 { get; set; } = string.Empty;
        public string? Telefone2 { get; set; }
        public string? Email { get; set; }
    }
}