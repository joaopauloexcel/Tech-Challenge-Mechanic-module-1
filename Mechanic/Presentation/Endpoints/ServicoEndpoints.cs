using Mechanic.Application.DTOs.Servico.Params;
using Mechanic.Application.DTOs.Servico.Request;
using Mechanic.Application.DTOs.Servico.Response;
using Mechanic.Application.Services;
using Microsoft.AspNetCore.Mvc;

namespace Mechanic.Presentation.Endpoints;

public static class ServicoEndpoints
{
    public static void MapServicoEndpoints(this IEndpointRouteBuilder routes)
    {
        var group = routes
            .MapGroup("/api/servicos")
            .RequireAuthorization()
            .WithTags("Serviços");

        group.MapGet("/", async ([AsParameters] ServicoParamsDto dto, [FromKeyedServices] ServicoService service) =>
        {
            var servicos = await service.ListarTodos(dto);
            return Results.Ok(servicos);
        })
        .WithName("ListarServicos")
        .WithSummary("Lista todos os serviços")
        .WithDescription("Retorna uma lista de serviços. Pode filtrar pelo SKU.")
        .Produces<List<ServicoResponseDto>>(StatusCodes.Status200OK);

        group.MapGet("/{id}", async (int id, ServicoService service) =>
        {
            var servico = await service.ListarPorId(id);
            return servico is not null ? Results.Ok(servico) : Results.NotFound();
        })
        .WithName("ObterServicoPorId")
        .WithSummary("Busca um serviço por ID")
         .Produces<ServicoResponseDto>(StatusCodes.Status200OK)
        .Produces(StatusCodes.Status404NotFound);

        group.MapPost("/", async ([FromBody] AdicionarServicoRequestDto dto, [FromKeyedServices] ServicoService service) =>
        {
            try
            {
                var id = await service.Criar(dto);
                return Results.Created($"/api/servicos/{id}", id);
            }
            catch (Exception ex)
            {
                if (ex.Message.Contains("Sku já cadastrado"))
                    return Results.Conflict(new { message = ex.Message });

                return Results.BadRequest(new { message = ex.Message });
            }
        })
        .WithName("CriarServico")
        .WithSummary("Cria um novo serviço")
        .WithDescription("Cadastra um serviço. Não permite SKU duplicado.")
        .Produces<int>(StatusCodes.Status201Created)
        .Produces(StatusCodes.Status400BadRequest)
        .Produces(StatusCodes.Status409Conflict);

        group.MapPut("/{id}", async (int id, [FromBody] AtualizarServicoRequestDto dto, [FromKeyedServices] ServicoService service) =>
        {
            var updated = await service.Atualizar(id, dto);
            return updated ? Results.NoContent() : Results.NotFound();
        })
        .WithName("AtualizarServico")
        .WithSummary("Atualiza um serviço")
        .WithDescription("Atualiza os dados de um serviço existente.")
        .Produces(StatusCodes.Status204NoContent)
        .Produces(StatusCodes.Status404NotFound);

        group.MapDelete("/{id}", async (int id, ServicoService service) =>
        {
            var deleted = await service.Deletar(id);
            return deleted ? Results.NoContent() : Results.NotFound();
        })
        .WithName("DeletarServico")
        .WithSummary("Remove um serviço")
        .WithDescription("Remove (ou desativa) um serviço pelo ID.")
        .Produces(StatusCodes.Status204NoContent)
        .Produces(StatusCodes.Status404NotFound);
    }
}