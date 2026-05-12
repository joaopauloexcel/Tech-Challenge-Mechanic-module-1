using Mechanic.Application.DTOs.Veiculo.Params;
using Mechanic.Application.DTOs.Veiculo.Request;
using Mechanic.Application.DTOs.Veiculo.Response;
using Mechanic.Application.Services;
using Microsoft.AspNetCore.Mvc;

namespace Mechanic.Presentation.Endpoints;

public static class VeiculoEndpoints
{
    public static void MapVeiculoEndpoints(this IEndpointRouteBuilder routes)
    {
        var group = routes
            .MapGroup("/api/veiculos")
            .RequireAuthorization()
            .WithTags("Veículos");

        group.MapGet("/", async ([AsParameters] VeiculoParamsDto dto, [FromKeyedServices] VeiculoService service) =>
        {
            var veiculos = await service.ListarTodos(dto);
            return Results.Ok(veiculos);
        })
        .WithName("ListarVeiculos")
        .WithSummary("Lista todos os veículos")
        .WithDescription("Retorna uma lista de veículos. Pode filtrar pela placa.")
        .Produces<List<VeiculoResponseDto>>(StatusCodes.Status200OK);

        group.MapGet("/{id}", async (int id, VeiculoService service) =>
        {
            var veiculo = await service.ListarPorId(id);
            return veiculo is not null ? Results.Ok(veiculo) : Results.NotFound();
        })
        .WithName("ObterVeiculoPorId")
        .WithSummary("Busca um veículo por ID")
        .Produces<VeiculoResponseDto>(StatusCodes.Status200OK)
        .Produces(StatusCodes.Status404NotFound);

        group.MapPost("/", async ([FromBody] AdicionarVeiculoRequestDto dto, [FromKeyedServices] VeiculoService service) =>
        {
            try
            {
                var id = await service.Criar(dto);
                return Results.Created($"/api/veiculos/{id}", id);
            }
            catch (Exception ex)
            {
                if (ex.Message.Contains("Placa", StringComparison.OrdinalIgnoreCase))
                    return Results.Conflict(new { message = ex.Message });

                return Results.BadRequest(new { message = ex.Message });
            }
        })
        .WithName("CriarVeiculo")
        .WithSummary("Cria um novo veículo")
        .WithDescription("Cadastra um veículo. Não permite placas duplicadas.")
        .Produces<int>(StatusCodes.Status201Created)
        .Produces(StatusCodes.Status400BadRequest)
        .Produces(StatusCodes.Status409Conflict);

        group.MapPut("/{id}", async (int id, [FromBody] AtualizarVeiculoRequestDto dto, [FromKeyedServices] VeiculoService service) =>
        {
            try
            {
                var updated = await service.Atualizar(id, dto);
                return updated ? Results.NoContent() : Results.NotFound();
            }
            catch (Exception ex)
            {
                if (ex.Message.Contains("Placa", StringComparison.OrdinalIgnoreCase))
                    return Results.Conflict(new { message = ex.Message });

                return Results.BadRequest(new { message = ex.Message });
            }
           
        })
        .WithName("AtualizarVeiculo")
        .WithSummary("Atualiza um veículo")
        .WithDescription("Atualiza os dados de um veículo existente.")
        .Produces(StatusCodes.Status204NoContent)
        .Produces(StatusCodes.Status400BadRequest)
        .Produces(StatusCodes.Status404NotFound);

        group.MapDelete("/{id}", async (int id, VeiculoService service) =>
        {
            var deleted = await service.Deletar(id);
            return deleted ? Results.NoContent() : Results.NotFound();
        })
        .WithName("DeletarVeiculo")
        .WithSummary("Remove um veículo")
        .WithDescription("Remove (ou desativa) um veículo pelo ID.")
        .Produces(StatusCodes.Status204NoContent)
        .Produces(StatusCodes.Status404NotFound);
    }
}