using Mechanic.Domain.Entities;

namespace Mechanic.Domain.Interfaces
{
    public interface IOrdemServicoServicoRepository
    {
        Task AdicionarAsync(OrdemServicoServico entity);
    }
}
