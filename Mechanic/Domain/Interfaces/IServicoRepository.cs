using Mechanic.Domain.Entities;

namespace Mechanic.Domain.Interfaces
{
    public interface IServicoRepository
    {
        Task<List<Servico>> ListarTodosAsync(string? sku);
        Task<Servico?> ListarPorIdAsync(int id);
        Task AdicionarAsync(Servico servico);
        Task AtualizarAsync(Servico servico);
        Task ExcluirAsync(int id);
        Task<bool> ExisteSkuAsync(string sku);
    }
}