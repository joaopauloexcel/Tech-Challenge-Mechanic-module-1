using Mechanic.Domain.Entities;

namespace Mechanic.Domain.Interfaces
{
    public interface IOrdemServicoProdutoRepository
    {
        Task AdicionarAsync(OrdemServicoProduto entity);

        Task<List<OrdemServicoProduto>> ListarPorOrcamentoIdAsync(int orcamentoId);

        Task AtualizarAsync(OrdemServicoProduto entity);

    }
}
