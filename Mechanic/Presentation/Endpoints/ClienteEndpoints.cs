using Mechanic.Application.DTOs.Cliente;
using Mechanic.Application.Services;

namespace Mechanic.Presentation.Endpoints;

public static class ClienteEndpoints
{
    public static void MapClienteEndpoints(this IEndpointRouteBuilder routes)
    {
        var group = routes
            .MapGroup("/api/clientes")
            .RequireAuthorization()
            .WithTags("Clientes");

        group.MapGet("/", async (string? cpfCnpj, ClienteService service) =>
        {
            return Results.Ok(await service.ListarTodos(cpfCnpj));
        })
        .WithName("ListarClientes")
        .WithSummary("Lista todos os clientes")
        .WithDescription("Retorna uma lista de clientes. Pode filtrar por CPF/CNPJ.")
        .Produces<List<ClienteDto>>(StatusCodes.Status200OK);

        group.MapGet("/{id}", async (int id, ClienteService service) =>
        {
            var cliente = await service.ListarPorId(id);
            return cliente is not null ? Results.Ok(cliente) : Results.NotFound();
        })
        .WithName("ObterClientePorId")
        .WithSummary("Busca cliente por ID")
        .Produces<ClienteDto>(StatusCodes.Status200OK)
        .Produces(StatusCodes.Status404NotFound);

        group.MapPost("/", async (AdicionarClienteDto dto, ClienteService service) =>
        {
            try
            {
                var id = await service.Criar(dto);
                return Results.Created($"/api/clientes/{id}", id);
            }
            catch (Exception ex)
            {
                if (ex.Message.Contains("CPF/CNPJ já cadastrado"))
                    return Results.Conflict(new { message = ex.Message });

                return Results.BadRequest(new { message = ex.Message });
            }
        })
        .WithName("CriarCliente")
        .WithSummary("Cria um novo cliente")
        .WithDescription("Cadastra um cliente no sistema. CPF/CNPJ deve ser único.")
        .Produces<int>(StatusCodes.Status201Created)
        .Produces(StatusCodes.Status400BadRequest)
        .Produces(StatusCodes.Status409Conflict);

        group.MapPut("/{id}", async (int id, AtualizarServicoDto dto, ClienteService service) =>
        {
            var updated = await service.Atualizar(id, dto);
            return updated ? Results.Ok() : Results.NotFound();
        })
        .WithName("AtualizarCliente")
        .WithSummary("Atualiza um cliente")
        .WithDescription("Atualiza os dados de um cliente existente.")
        .Produces(StatusCodes.Status200OK)
        .Produces(StatusCodes.Status404NotFound);

        group.MapDelete("/{id}", async (int id, ClienteService service) =>
        {
            var deleted = await service.Deletar(id);
            return deleted ? Results.Ok() : Results.NotFound();
        })
        .WithName("DesativarCliente")
        .WithSummary("Desativa um cliente")
        .WithDescription("Desativa um cliente (soft delete).")
        .Produces(StatusCodes.Status200OK)
        .Produces(StatusCodes.Status404NotFound);
    }
}