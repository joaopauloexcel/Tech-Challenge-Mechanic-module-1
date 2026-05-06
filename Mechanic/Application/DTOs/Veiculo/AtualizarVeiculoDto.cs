namespace Mechanic.Application.DTOs.Veiculo
{
    public class AtualizarVeiculoDto
    {
        public int ClienteId { get; set; }
        public string? Placa { get; set; } = string.Empty;
        public string? Marca { get; set; } = string.Empty;
        public string? Modelo { get; set; } = string.Empty;
        public int? Ano { get; set; }
    }
}