namespace Mechanic.Application.DTOs.Produto
{
    public class AtualizarEstoqueProdutoDto
    {
        public int quantidadeAdicionada { get; set; }
        public decimal NovoPrecoCusto { get; set; }
        public decimal NovoPrecoVenda { get; set; }
    }
}