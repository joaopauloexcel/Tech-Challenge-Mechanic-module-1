namespace Mechanic.Application.DTOs.Veiculo
{
    public class VeiculoDto
    {
        public int Id { get; set; }
        public int ClienteId { get; set; }
        public string Placa { get; set; } = string.Empty;
        public string Marca { get; set; } = string.Empty;
        public string? Modelo { get; set; }
        public int? Ano { get; set; }
        public bool Ativo { get; set; }
    }
}