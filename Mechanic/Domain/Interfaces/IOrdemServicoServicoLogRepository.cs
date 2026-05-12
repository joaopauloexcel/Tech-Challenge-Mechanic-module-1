using Mechanic.Domain.Entities;

namespace Mechanic.Domain.Interfaces
{
    public interface IOrdemServicoServicoLogRepository
    {
        Task<List<OrdemServicoServicoLog>> ObterLogsServicosAsync();
        Task AdicionarAsync(OrdemServicoServicoLog log);
    }
}
