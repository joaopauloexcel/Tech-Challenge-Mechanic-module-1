namespace Mechanic.Application.DTOs.Servico
{
    public class ProdutoDto
    {
        public int Id { get; set; }
        public string Sku { get; set; } = string.Empty;
        public string Descricao { get; set; } = string.Empty;
        public decimal Preco { get; set; }
        public bool Ativo { get; set; }
    }
}