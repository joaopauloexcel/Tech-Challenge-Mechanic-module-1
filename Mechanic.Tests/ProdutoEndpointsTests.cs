using System.Net;
using System.Net.Http.Json;
using Mechanic.Application.DTOs.Produto.Response;

public class ProdutoEndpointsTests : IClassFixture<ApiTestBase>
{
    private readonly HttpClient _client;
    private readonly ApiTestBase _factory;

    public ProdutoEndpointsTests(ApiTestBase factory)
    {
        _factory = factory;
        _client = factory.CreateClient();
    }

    [Fact]
    public async Task ListarProdutos_DeveRetornarSucesso()
    {

        _factory.Autenticar();

        var response = await _client.GetAsync("/api/produtos");

        Assert.Equal(HttpStatusCode.OK, response.StatusCode);

        var produtos = await response.Content.ReadFromJsonAsync<List<ProdutoResponseDto>>();
        Assert.NotNull(produtos);
    }

    [Fact]
    public async Task ObterPorId_QuandoNaoExiste_DeveRetornar404()
    {
        _factory.Autenticar();

        var response = await _client.GetAsync("/api/produtos/9999");

        Assert.Equal(HttpStatusCode.NotFound, response.StatusCode);
    }
}