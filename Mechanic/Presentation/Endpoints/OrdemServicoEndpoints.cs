using Mechanic.Application.DTOs.OrdemServico.Params;
using Mechanic.Application.DTOs.OrdemServico.Request;
using Mechanic.Application.DTOs.OrdemServico.Response;
using Mechanic.Application.Enums;
using Mechanic.Application.Services;
using Microsoft.AspNetCore.Mvc;

namespace Mechanic.Presentation.Endpoints;

public static class OrdemServicoEndpoints
{
    public static void MapOrdemServicoEndpoints(this IEndpointRouteBuilder routes)
    {
        var group = routes
            .MapGroup("/api/ordens-servico")
            .RequireAuthorization()
            .WithTags("Ordens de Serviço");

        group.MapGet("/", async ([AsParameters] ListarOrdemServicoParamsDto dto, [FromKeyedServices] OrdemServicoService service) =>
        {
            var os = await service.ListarTodosAsync(dto);
            return Results.Ok(os);
        })
        .WithName("ListarOrdensServico")
        .WithSummary("Lista ordens de serviço com filtros")
        .WithDescription("Permite filtrar por ID, status, CPF/CNPJ ou placa.")
        .Produces<List<OrdemServicoResponseDto>>(StatusCodes.Status200OK);

        group.MapGet("/{id}", async (int id, OrdemServicoService service) =>
        {
            var os = await service.ListarPorIdAsync(id);
            return os is not null ? Results.Ok(os) : Results.NotFound();
        })
        .WithName("ObterOrdemServicoPorId")
        .WithSummary("Busca ordem de serviço por ID")
        .Produces<OrdemServicoResponseDto>(StatusCodes.Status200OK)
        .Produces(StatusCodes.Status404NotFound);

        group.MapPost("/", async ([FromBody] CriarOrdemServicoRequestDto dto, [FromKeyedServices] OrdemServicoService service) =>
        {
            var id = await service.AdicionarOSAsync(dto);
            return Results.Created($"/api/ordens-servico/{id}", id);
        })
        .WithName("CriarOrdemServico")
        .WithSummary("Cria uma nova ordem de serviço")
        .Produces<int>(StatusCodes.Status201Created);

        group.MapPost("/{id}/iniciar-diagnostico", async (int id, OrdemServicoService service) =>
        {
            try
            {
                await service.IniciarDiagnosticoAsync(id);
                return Results.NoContent();
            }
            catch (Exception ex)
            {
                return Results.BadRequest(new { message = ex.Message });
            }
        })
        .WithName("IniciarDiagnostico")
        .WithSummary("Inicia diagnóstico da OS")
        .Produces(StatusCodes.Status204NoContent)
        .Produces(StatusCodes.Status400BadRequest);

        group.MapPost("/{id}/enviar-orcamento", async (
            int id,
            [FromBody] CriarOrcamentoRequestDto dto,
            [FromKeyedServices] OrdemServicoService service) =>
        {
            await service.EnviarOrcamentoAsync(id, dto);
            return Results.NoContent();
        })
        .WithName("EnviarOrcamento")
        .WithSummary("Envia orçamento para a OS")
        .Produces(StatusCodes.Status204NoContent);

        group.MapPost("/{id}/orcamentos/{orcId}/servicos/{servId}/executar", async (
            int id,
            int orcId,
            int servId,
            [FromBody] ExecutarServicoLogRequestDto dto,
            [FromKeyedServices] OrdemServicoService service) =>
        {
            try
            {
                await service.ExecutarServicoLogAsync(id, orcId, servId, dto);
                return Results.NoContent();
            }
            catch (Exception ex)
            {
                return Results.BadRequest(new { message = ex.Message });
            }
        })
        .WithName("ExecutarServico")
        .WithSummary("Registra execução de serviço")
        .Produces(StatusCodes.Status204NoContent)
        .Produces(StatusCodes.Status400BadRequest);

        group.MapPost("/{id}/status/cancelar", async (int id, OrdemServicoService service) =>
        {
            try
            {
                await service.CancelarOSAsync(id);
                return Results.NoContent();
            }
            catch (Exception ex)
            {
                return Results.BadRequest(new { message = ex.Message });
            }
        })
        .WithName("CancelarOrdemServico")
        .WithSummary("Cancela a OS")
        .Produces(StatusCodes.Status204NoContent)
        .Produces(StatusCodes.Status400BadRequest);

        group.MapPost("/{id}/status/finalizar", async (int id, OrdemServicoService service) =>
        {
            try
            {
                await service.FinalizarOSAsync(id);
                return Results.NoContent();
            }
            catch (Exception ex)
            {
                return Results.BadRequest(new { message = ex.Message });
            }
        })
        .WithName("FinalizarOrdemServico")
        .WithSummary("Finaliza a OS")
        .Produces(StatusCodes.Status204NoContent)
        .Produces(StatusCodes.Status400BadRequest);

        group.MapPost("/{id}/status/entregar", async (int id, OrdemServicoService service) =>
        {
            try
            {
                await service.EntregarOSAsync(id);
                return Results.NoContent();
            }
            catch (Exception ex)
            {
                return Results.BadRequest(new { message = ex.Message });
            }
        })
        .WithName("EntregarOrdemServico")
        .WithSummary("Marca OS como entregue")
        .Produces(StatusCodes.Status204NoContent)
        .Produces(StatusCodes.Status400BadRequest);

        group.MapGet("/relatorios/servicos/tempo-medio", async (OrdemServicoService service) =>
        {
            var result = await service.GetTempoMedioExecucaoAsync();
            return Results.Ok(result);
        })
        .WithName("TempoMedioExecucao")
        .WithSummary("Relatório de tempo médio de execução")
        .Produces<RelatorioTempoMedioResponseDto>(StatusCodes.Status200OK);
    }
}