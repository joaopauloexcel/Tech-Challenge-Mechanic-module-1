namespace Mechanic.Application.DTOs.Servico
{
    public class AtualizarServicoDto
    {
        public string? Descricao { get; set; } = string.Empty;
        public decimal? Preco { get; set; }
    }
}