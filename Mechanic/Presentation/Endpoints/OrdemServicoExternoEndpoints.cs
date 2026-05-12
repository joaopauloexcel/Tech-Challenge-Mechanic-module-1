using Mechanic.Application.DTOs.OrdemServico.Request;
using Mechanic.Application.DTOs.OrdemServico.Response;
using Mechanic.Application.Services;
using Microsoft.AspNetCore.Mvc;

namespace Mechanic.Presentation.Endpoints;

public static class OrdemServicoExternoEndpoints
{
    public static void MapOrdemServicoExternoEndpoints(this IEndpointRouteBuilder routes)
    {
        var group = routes
            .MapGroup("/api/ordem-servico")
            .WithTags("Ordem de Serviço Externo");

        group.MapGet("/externo/{hash}/{docFinal}", async (string hash, string docFinal, OrdemServicoService service) =>
        {
            var os = await service.ListarPorHashExternoAsync(hash, docFinal);
            return os is not null ? Results.Ok(os) : Results.NotFound();
        })
        .WithName("ObterOrdemServicoExterna")
        .WithSummary("Consulta OS via hash externo + verificação com os 3 últimos dígitos do documento")
        .Produces<OrdemServicoResponseDto>(StatusCodes.Status200OK)
        .Produces(StatusCodes.Status404NotFound);

        group.MapPatch("/externo/{hash}/{docFinal}/orcamento/{orcamentoId}", async (
            string hash, 
            string docFinal,
            int orcamentoId,
            [FromBody] DecisaoOrcamentoRequestDto dto,
            [FromKeyedServices] OrdemServicoService service) =>
        {
            try
            {
                await service.DecidirOrcamentoPorHashExternoAsync(hash, docFinal, orcamentoId, dto);
                return Results.NoContent();
            } catch
            {
                return Results.NotFound();
            }
           
        })
        .WithName("DecidirOrcamento")
        .WithSummary("Aprova ou reprova orçamento")
        .Produces(StatusCodes.Status204NoContent)
        .Produces(StatusCodes.Status404NotFound);

    }
}