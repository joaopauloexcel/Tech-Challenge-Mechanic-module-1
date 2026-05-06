using Mechanic.Domain.Entities;

namespace Mechanic.Domain.Interfaces
{
    public interface IOrdemServicoOrcamentoRepository
    {
        Task AdicionarAsync(OrdemServicoOrcamento entity);

        Task<OrdemServicoOrcamento?> ObterPorIdAsync(int id);

        Task AtualizarAsync(OrdemServicoOrcamento entity);
    }
}
