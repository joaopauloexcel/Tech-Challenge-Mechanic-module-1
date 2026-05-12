using System.Net;
using System.Net.Http.Json;
using Mechanic.Application.DTOs.Veiculo.Response;

public class VeiculoEndpointsTests : IClassFixture<ApiTestBase>
{
    private readonly HttpClient _client;
    private readonly ApiTestBase _factory;

    public VeiculoEndpointsTests(ApiTestBase factory)
    {
        _factory = factory;
        _client = factory.CreateClient();
    }

    [Fact]
    public async Task ListarVeiculos_DeveRetornarSucesso()
    {

        _factory.Autenticar();

        var response = await _client.GetAsync("/api/veiculos");

        Assert.Equal(HttpStatusCode.OK, response.StatusCode);

        var veiculos = await response.Content.ReadFromJsonAsync<List<VeiculoResponseDto>>();
        Assert.NotNull(veiculos);
    }

    [Fact]
    public async Task ObterPorId_QuandoNaoExiste_DeveRetornar404()
    {
        _factory.Autenticar();

        var response = await _client.GetAsync("/api/veiculos/9999");

        Assert.Equal(HttpStatusCode.NotFound, response.StatusCode);
    }
}