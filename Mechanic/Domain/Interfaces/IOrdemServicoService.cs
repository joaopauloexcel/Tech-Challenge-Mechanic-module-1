using Mechanic.Application.DTOs.OrdemServico.Query;
using Mechanic.Application.DTOs.OrdemServico.Request;
using Mechanic.Application.DTOs.OrdemServico.Response;

public interface IOrdemServicoService
{
    Task<int> AdicionarOSAsync(CriarOrdemServicoDto dto);
    Task<List<OrdemServicoDTO>> ListarTodosAsync(ListarOrdemServicoFiltroDto filtro);
    Task<OrdemServicoDTO?> ListarPorIdAsync(int id);
    Task<OrdemServicoDTO?> ListarPorHashExternoAsync(string hashExterno);
    Task IniciarDiagnosticoAsync(int osId);
    Task EnviarOrcamentoAsync(int osId, CriarOrcamentoDto dto);
    Task DecidirOrcamentoAsync(int osId, int orcamentoId, DecisaoOrcamentoInputDto dto);
    Task ExecutarServicoLogAsync(int osId, int orcId, int servId, ExecutarServicoLogDto dto);
    Task CancelarOSAsync(int osId);
    Task FinalizarOSAsync(int osId);
    Task EntregarOSAsync(int osId);
    Task<RelatorioTempoMedioDto> GetTempoMedioExecucaoAsync();
}