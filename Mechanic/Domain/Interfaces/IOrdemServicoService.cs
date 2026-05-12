using Mechanic.Application.DTOs.OrdemServico.Params;
using Mechanic.Application.DTOs.OrdemServico.Request;
using Mechanic.Application.DTOs.OrdemServico.Response;

namespace Mechanic.Domain.Interfaces;
public interface IOrdemServicoService
{
    Task<int> AdicionarOSAsync(CriarOrdemServicoRequestDto dto);
    Task<List<OrdemServicoResponseDto>> ListarTodosAsync(ListarOrdemServicoParamsDto dto);
    Task<OrdemServicoResponseDto?> ListarPorIdAsync(int id);
    Task<OrdemServicoResponseDto?> ListarPorHashExternoAsync(string hashExterno, string docFinal);
    Task IniciarDiagnosticoAsync(int osId);
    Task EnviarOrcamentoAsync(int osId, CriarOrcamentoRequestDto dto);
    Task DecidirOrcamentoPorHashExternoAsync(string hashExterno, string docFinal, int orcamentoId, DecisaoOrcamentoRequestDto dto);
    Task ExecutarServicoLogAsync(int osId, int orcId, int servId, ExecutarServicoLogRequestDto dto);
    Task CancelarOSAsync(int osId);
    Task FinalizarOSAsync(int osId);
    Task EntregarOSAsync(int osId);
    Task<RelatorioTempoMedioResponseDto> GetTempoMedioExecucaoAsync();
}