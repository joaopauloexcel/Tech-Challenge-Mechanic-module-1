using Mechanic.Application.DTOs.OrdemServico.Params;
using Mechanic.Domain.Entities;

namespace Mechanic.Domain.Interfaces
{
    public interface IOrdemServicoRepository
    {
        Task AdicionarAsync(OrdemServico os);

        Task<List<OrdemServico>> ListarAsync(ListarOrdemServicoParamsDto dto);

        Task<OrdemServico?> ObterPorIdAsync(int id);

        Task<OrdemServico?> ObterPorComHashAsync(string hashExterno);

        Task AtualizarAsync(OrdemServico os);

        Task SalvarAsync();

        Task<OrdemServico?> ObterComServicosAsync(int osId);

        Task<List<OrdemServico>> ObterFinalizadasAsync();

    }
}