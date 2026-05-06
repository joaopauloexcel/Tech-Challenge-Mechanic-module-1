using Mechanic.Application.DTOs.OrdemServico.Query;
using Mechanic.Application.DTOs.OrdemServico.Request;
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

        group.MapPost("/", async (
            [FromKeyedServices] OrdemServicoService service,
            [FromBody] CriarOrdemServicoDto dto) =>
        {
            var id = await service.AdicionarOSAsync(dto);
            return Results.Created($"/api/ordens-servico/{id}", id);
        })
        .WithName("CriarOrdemServico")
        .WithSummary("Cria uma nova ordem de serviço")
        .Produces<int>(StatusCodes.Status201Created);

        group.MapGet("/", async (
            int? id,
            StatusOrdemServico? status,
            string? cpfCnpj,
            string? placa,
            [FromKeyedServices] OrdemServicoService service) =>
        {
            var filtro = new ListarOrdemServicoFiltroDto
            {
                Id = id,
                Status = status,
                CpfCnpj = cpfCnpj,
                Placa = placa
            };

            return Results.Ok(await service.ListarTodosAsync(filtro));
        })
        .WithName("ListarOrdensServico")
        .WithSummary("Lista ordens de serviço com filtros")
        .WithDescription("Permite filtrar por ID, status, CPF/CNPJ ou placa.")
        .Produces(StatusCodes.Status200OK);

        group.MapGet("/{id}", async (int id, [FromKeyedServices] OrdemServicoService service) =>
        {
            var os = await service.ListarPorIdAsync(id);
            return os is not null ? Results.Ok(os) : Results.NotFound();
        })
        .WithName("ObterOrdemServicoPorId")
        .WithSummary("Busca ordem de serviço por ID")
        .Produces(StatusCodes.Status200OK)
        .Produces(StatusCodes.Status404NotFound);

        group.MapGet("/externo/{hash}", async (string hash, [FromKeyedServices] OrdemServicoService service) =>
        {
            var os = await service.ListarPorHashExternoAsync(hash);
            return os is not null ? Results.Ok(os) : Results.NotFound();
        })
        .WithName("ObterOrdemServicoExterna")
        .WithSummary("Consulta OS via hash externo")
        .Produces(StatusCodes.Status200OK)
        .Produces(StatusCodes.Status404NotFound);

        group.MapPost("/{id}/iniciar-diagnostico", async (int id, [FromKeyedServices] OrdemServicoService service) =>
        {
            try
            {
                await service.IniciarDiagnosticoAsync(id);
                return Results.Ok();
            }
            catch (Exception ex)
            {
                return Results.BadRequest(new { message = ex.Message });
            }
        })
        .WithName("IniciarDiagnostico")
        .WithSummary("Inicia diagnóstico da OS")
        .Produces(StatusCodes.Status200OK)
        .Produces(StatusCodes.Status400BadRequest);

        group.MapPost("/{id}/enviar-orcamento", async (
            int id,
            [FromBody] CriarOrcamentoDto dto,
            [FromKeyedServices] OrdemServicoService service) =>
        {
            await service.EnviarOrcamentoAsync(id, dto);
            return Results.Ok();
        })
        .WithName("EnviarOrcamento")
        .WithSummary("Envia orçamento para a OS")
        .Produces(StatusCodes.Status200OK);

        group.MapPatch("/{id}/orcamentos/{orcamentoId}/decisao", async (
            int id,
            int orcamentoId,
            [FromBody] DecisaoOrcamentoInputDto dto,
            [FromKeyedServices] OrdemServicoService service) =>
        {
            await service.DecidirOrcamentoAsync(id, orcamentoId, dto);
            return Results.Ok();
        })
        .WithName("DecidirOrcamento")
        .WithSummary("Aprova ou reprova orçamento")
        .Produces(StatusCodes.Status200OK);

   
        group.MapPost("/{id}/orcamentos/{orcId}/servicos/{servId}/executar", async (
            int id,
            int orcId,
            int servId,
            [FromBody] ExecutarServicoLogDto dto,
            [FromKeyedServices] OrdemServicoService service) =>
        {
            try
            {
                await service.ExecutarServicoLogAsync(id, orcId, servId, dto);
                return Results.Ok();
            }
            catch (Exception ex)
            {
                return Results.BadRequest(new { message = ex.Message });
            }
        })
        .WithName("ExecutarServico")
        .WithSummary("Registra execução de serviço")
        .Produces(StatusCodes.Status200OK)
        .Produces(StatusCodes.Status400BadRequest);

        group.MapPost("/{id}/status/cancelar", async (
            int id,
            [FromKeyedServices] OrdemServicoService service) =>
        {
            try
            {
                await service.CancelarOSAsync(id);
                return Results.Ok();
            }
            catch (Exception ex)
            {
                return Results.BadRequest(new { message = ex.Message });
            }
        })
        .WithName("CancelarOrdemServico")
        .WithSummary("Cancela a OS")
        .Produces(StatusCodes.Status200OK)
        .Produces(StatusCodes.Status400BadRequest);

        group.MapPost("/{id}/status/finalizar", async (
            int id,
            [FromKeyedServices] OrdemServicoService service) =>
        {
            try
            {
                await service.FinalizarOSAsync(id);
                return Results.Ok();
            }
            catch (Exception ex)
            {
                return Results.BadRequest(new { message = ex.Message });
            }
        })
        .WithName("FinalizarOrdemServico")
        .WithSummary("Finaliza a OS")
        .Produces(StatusCodes.Status200OK)
        .Produces(StatusCodes.Status400BadRequest);

        group.MapPost("/{id}/status/entregar", async (
            int id,
            [FromKeyedServices] OrdemServicoService service) =>
        {
            try
            {
                await service.EntregarOSAsync(id);
                return Results.Ok();
            }
            catch (Exception ex)
            {
                return Results.BadRequest(new { message = ex.Message });
            }
        })
        .WithName("EntregarOrdemServico")
        .WithSummary("Marca OS como entregue")
        .Produces(StatusCodes.Status200OK)
        .Produces(StatusCodes.Status400BadRequest);

        group.MapGet("/relatorios/servicos/tempo-medio", async (
            [FromKeyedServices] OrdemServicoService service) =>
        {
            var result = await service.GetTempoMedioExecucaoAsync();
            return Results.Ok(result);
        })
        .WithName("TempoMedioExecucao")
        .WithSummary("Relatório de tempo médio de execução")
        .Produces(StatusCodes.Status200OK);
    }
}