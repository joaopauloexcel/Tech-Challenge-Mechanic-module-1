using Mechanic.Application.DTOs.Cliente.Params;
using Mechanic.Application.DTOs.Cliente.Request;
using Mechanic.Application.DTOs.Cliente.Response;
using Mechanic.Application.Services;
using Microsoft.AspNetCore.Mvc;

namespace Mechanic.Presentation.Endpoints;

public static class ClienteEndpoints
{
    public static void MapClienteEndpoints(this IEndpointRouteBuilder routes)
    {
        var group = routes
            .MapGroup("/api/clientes")
            .RequireAuthorization()
            .WithTags("Clientes");

        group.MapGet("/", async ([AsParameters] ClienteParamsDto dto, [FromKeyedServices] ClienteService service) =>
        {
            var clientes = await service.ListarTodos(dto);
            return Results.Ok(clientes);
        })
        .WithName("ListarClientes")
        .WithSummary("Lista todos os clientes")
        .WithDescription("Retorna uma lista de clientes. Pode filtrar por CPF/CNPJ.")
        .Produces<List<ClienteResponseDto>>(StatusCodes.Status200OK);

        group.MapGet("/{id}", async (int id, ClienteService service) =>
        {
            var cliente = await service.ListarPorId(id);
            return cliente is not null ? Results.Ok(cliente) : Results.NotFound();
        })
        .WithName("ObterClientePorId")
        .WithSummary("Busca cliente por ID")
        .Produces<ClienteResponseDto>(StatusCodes.Status200OK)
        .Produces(StatusCodes.Status404NotFound);
        group.MapPost("/", async ([FromBody] AdicionarClienteRequestDto dto, [FromKeyedServices] ClienteService service) =>
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
        group.MapPut("/{id}", async (int id, [FromBody] AtualizarClienteRequestDto dto, [FromKeyedServices] ClienteService service) =>
        {
            var updated = await service.Atualizar(id, dto);
            return updated ? Results.NoContent() : Results.NotFound();
        })
        .WithName("AtualizarCliente")
        .WithSummary("Atualiza um cliente")
        .WithDescription("Atualiza os dados de um cliente existente.")
        .Produces(StatusCodes.Status204NoContent)
        .Produces(StatusCodes.Status404NotFound);

        group.MapDelete("/{id}", async (int id, ClienteService service) =>
        {
            var deleted = await service.Deletar(id);
            return deleted ? Results.NoContent() : Results.NotFound();
        })
        .WithName("DesativarCliente")
        .WithSummary("Desativa um cliente")
        .WithDescription("Desativa um cliente (soft delete).")
        .Produces(StatusCodes.Status204NoContent)
        .Produces(StatusCodes.Status404NotFound);
    }
}