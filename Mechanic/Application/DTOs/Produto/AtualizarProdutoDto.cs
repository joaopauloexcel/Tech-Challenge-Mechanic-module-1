namespace Mechanic.Application.DTOs.Produto
{
    public class AtualizarProdutoDto
    {
        public string Sku { get; set; } = string.Empty;
        public string Descricao { get; set; } = string.Empty;
        public decimal PrecoCusto { get; set; }
        public decimal PrecoVenda { get; set; }
        public int QuantidadeMinima { get; set; }
    }
}