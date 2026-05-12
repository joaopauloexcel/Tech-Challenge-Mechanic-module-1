using System.Net;
using System.Net.Http.Json;
using Mechanic.Application.DTOs.Servico.Response;

public class ServicoEndpointsTests : IClassFixture<ApiTestBase>
{
    private readonly HttpClient _client;
    private readonly ApiTestBase _factory;

    public ServicoEndpointsTests(ApiTestBase factory)
    {
        _factory = factory;
        _client = factory.CreateClient();
    }

    [Fact]
    public async Task ListarServicoss_DeveRetornarSucesso()
    {

        _factory.Autenticar();

        var response = await _client.GetAsync("/api/servicos");

        Assert.Equal(HttpStatusCode.OK, response.StatusCode);

        var servicos = await response.Content.ReadFromJsonAsync<List<ServicoResponseDto>>();
        Assert.NotNull(servicos);
    }

    [Fact]
    public async Task ObterPorId_QuandoNaoExiste_DeveRetornar404()
    {
        _factory.Autenticar();

        var response = await _client.GetAsync("/api/servicos/9999");

        Assert.Equal(HttpStatusCode.NotFound, response.StatusCode);
    }
}