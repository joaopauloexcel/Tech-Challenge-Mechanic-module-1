using Mechanic.Domain.Entities;

namespace Mechanic.Domain.Interfaces
{
    public interface IProdutoRepository
    {
        Task<List<Produto>> ListarTodosAsync(string? sku);
        Task<Produto?> ListarPorIdAsync(int id);
        Task AdicionarAsync(Produto produto);
        Task AtualizarAsync(Produto produto);
        Task ExcluirAsync(int id);
        Task<bool> ExisteSkuAsync(string sku);
    }
}