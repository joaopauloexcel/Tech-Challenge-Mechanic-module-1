using Mechanic.Application.DTOs.Produto;
using Mechanic.Application.Services;

namespace Mechanic.Presentation.Endpoints;

public static class ProdutoEndpoints
{
    public static void MapProdutoEndpoints(this IEndpointRouteBuilder routes)
    {
        var group = routes
            .MapGroup("/api/produtos")
            .RequireAuthorization()
            .WithTags("Produtos");

        group.MapGet("/", async (string? sku, ProdutoService service) =>
        {
            return Results.Ok(await service.ListarTodos(sku));
        })
        .WithName("ListarProdutos")
        .WithSummary("Lista todos os produtos")
        .WithDescription("Retorna uma lista de produtos. Pode filtrar por SKU.")
        .Produces<List<ProdutoDto>>(StatusCodes.Status200OK);

        group.MapGet("/{id}", async (int id, ProdutoService service) =>
        {
            var produto = await service.ListarPorId(id);
            return produto is not null ? Results.Ok(produto) : Results.NotFound();
        })
        .WithName("ObterProdutoPorId")
        .WithSummary("Busca um produto por ID")
        .Produces<ProdutoDto>(StatusCodes.Status200OK)
        .Produces(StatusCodes.Status404NotFound);

        group.MapPost("/", async (AdicionarProdutoDto dto, ProdutoService service) =>
        {
            try
            {
                var id = await service.Criar(dto);
                return Results.Created($"/api/produtos/{id}", id);
            }
            catch (Exception ex)
            {
                if (ex.Message.Contains("Sku já cadastrado"))
                    return Results.Conflict(new { message = ex.Message });

                return Results.BadRequest(new { message = ex.Message });
            }
        })
        .WithName("CriarProduto")
        .WithSummary("Cria um novo produto")
        .WithDescription("Cadastra um produto. Não permite SKU duplicado.")
        .Produces<int>(StatusCodes.Status201Created)
        .Produces(StatusCodes.Status400BadRequest)
        .Produces(StatusCodes.Status409Conflict);

        group.MapPut("/{id}", async (int id, AtualizarProdutoDto dto, ProdutoService service) =>
        {
            try
            {
                var updated = await service.Atualizar(id, dto);
                return updated ? Results.Ok() : Results.NotFound();
            }
            catch (Exception ex)
            {
                if (ex.Message.Contains("Sku já cadastrado"))
                    return Results.Conflict(new { message = ex.Message });

                return Results.BadRequest(new { message = ex.Message });
            }
        })
        .WithName("AtualizarProduto")
        .WithSummary("Atualiza um produto")
        .WithDescription("Atualiza os dados de um produto existente.")
        .Produces(StatusCodes.Status200OK)
        .Produces(StatusCodes.Status404NotFound)
        .Produces(StatusCodes.Status409Conflict)
        .Produces(StatusCodes.Status400BadRequest);

        group.MapPatch("/{id}/estoque", async (int id, AtualizarEstoqueProdutoDto dto, ProdutoService service) =>
        {
            var updated = await service.AtualizarEstoque(id, dto);
            return updated ? Results.Ok() : Results.NotFound();
        })
        .WithName("AtualizarEstoqueProduto")
        .WithSummary("Atualiza o estoque de um produto")
        .WithDescription("Atualiza apenas a quantidade de estoque do produto.")
        .Produces(StatusCodes.Status200OK)
        .Produces(StatusCodes.Status404NotFound);

        group.MapDelete("/{id}", async (int id, ProdutoService service) =>
        {
            var deleted = await service.Deletar(id);
            return deleted ? Results.Ok() : Results.NotFound();
        })
        .WithName("DeletarProduto")
        .WithSummary("Remove um produto")
        .WithDescription("Remove (ou desativa) um produto pelo ID.")
        .Produces(StatusCodes.Status200OK)
        .Produces(StatusCodes.Status404NotFound);
    }
}