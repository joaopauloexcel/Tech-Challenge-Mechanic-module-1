using Mechanic.Application.DTOs.Servico;
using Mechanic.Application.Services;

namespace Mechanic.Presentation.Endpoints;

public static class ServicoEndpoints
{
    public static void MapServicoEndpoints(this IEndpointRouteBuilder routes)
    {
        var group = routes
            .MapGroup("/api/servicos")
            .RequireAuthorization()
            .WithTags("Serviços");

        group.MapGet("/", async (string? sku, ServicoService service) =>
        {
            return Results.Ok(await service.ListarTodos(sku));
        })
        .WithName("ListarServicos")
        .WithSummary("Lista todos os serviços")
        .WithDescription("Retorna uma lista de serviços. Pode filtrar pelo SKU.")
        .Produces(StatusCodes.Status200OK);

        group.MapGet("/{id}", async (int id, ServicoService service) =>
        {
            var servico = await service.ListarPorId(id);
            return servico is not null ? Results.Ok(servico) : Results.NotFound();
        })
        .WithName("ObterServicoPorId")
        .WithSummary("Busca um serviço por ID")
        .Produces(StatusCodes.Status200OK)
        .Produces(StatusCodes.Status404NotFound);

        group.MapPost("/", async (AdicionarServicoDto dto, ServicoService service) =>
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

        group.MapPut("/{id}", async (int id, AtualizarServicoDto dto, ServicoService service) =>
        {
            var updated = await service.Atualizar(id, dto);
            return updated ? Results.Ok() : Results.NotFound();
        })
        .WithName("AtualizarServico")
        .WithSummary("Atualiza um serviço")
        .WithDescription("Atualiza os dados de um serviço existente.")
        .Produces(StatusCodes.Status200OK)
        .Produces(StatusCodes.Status404NotFound);

        group.MapDelete("/{id}", async (int id, ServicoService service) =>
        {
            var deleted = await service.Deletar(id);
            return deleted ? Results.Ok() : Results.NotFound();
        })
        .WithName("DeletarServico")
        .WithSummary("Remove um serviço")
        .WithDescription("Remove (ou desativa) um serviço pelo ID.")
        .Produces(StatusCodes.Status200OK)
        .Produces(StatusCodes.Status404NotFound);
    }
}