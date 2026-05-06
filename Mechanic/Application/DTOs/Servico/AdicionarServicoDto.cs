namespace Mechanic.Application.DTOs.Servico
{
    public class AdicionarServicoDto
    {
        public string Sku { get; set; } = string.Empty;
        public string Descricao { get; set; } = string.Empty;
        public decimal Preco { get; set; }
    }
}