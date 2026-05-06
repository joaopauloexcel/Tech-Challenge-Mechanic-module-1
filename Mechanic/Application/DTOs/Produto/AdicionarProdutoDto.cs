namespace Mechanic.Application.DTOs.Produto
{
    public class AdicionarProdutoDto
    {
        public string Sku { get; set; } = string.Empty;
        public string Descricao { get; set; } = string.Empty;
        public decimal PrecoCusto { get; set; }
        public decimal PrecoVenda { get; set; }
        public int QuantidadeTotal { get; set; }
        public int QuantidadeReservada { get; set; }
        public int QuantidadeMinima { get; set; }
    }
}