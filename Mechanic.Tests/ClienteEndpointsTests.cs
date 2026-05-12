using Mechanic.Application.DTOs.Cliente.Request;
using Mechanic.Application.DTOs.Cliente.Response;
using System.Net;
using System.Net.Http.Json;

public class ClienteEndpointsTests : IClassFixture<ApiTestBase>
{
    private readonly HttpClient _client;
    private readonly ApiTestBase _factory;

    public ClienteEndpointsTests(ApiTestBase factory)
    {
        _factory = factory;
        _client = factory.CreateClient();
    }

    [Fact]
    public async Task ListarClientes_DeveRetornarSucesso()
    {

        _factory.Autenticar();

        var response = await _client.GetAsync("/api/clientes");

        Assert.Equal(HttpStatusCode.OK, response.StatusCode);

        var clientes = await response.Content.ReadFromJsonAsync<List<ClienteResponseDto>>();
        Assert.NotNull(clientes);
    }

    [Fact]
    public async Task ObterPorId_QuandoNaoExiste_DeveRetornar404()
    {
        _factory.Autenticar();

        var response = await _client.GetAsync("/api/clientes/9999");

        Assert.Equal(HttpStatusCode.NotFound, response.StatusCode);
    }

    [Fact]
    public async Task CriarCliente_DeveRetornar201()
    {
        _factory.Autenticar();

        var request = new AdicionarClienteRequestDto
        {
            Nome = "Cliente Teste",
            CpfCnpj = "135.614.836-07",
            Telefone1 = "35999999999"
        };

        var response = await _client.PostAsJsonAsync("/api/clientes", request);

        Assert.Equal(HttpStatusCode.Created, response.StatusCode);

        var id = await response.Content.ReadFromJsonAsync<int>();
        Assert.True(id > 0);
    }

    [Fact]
    public async Task CriarCliente_ComCpfDuplicado_DeveRetornar409()
    {
        _factory.Autenticar();

        var request = new AdicionarClienteRequestDto
        {
            Nome = "Cliente Teste 2",
            CpfCnpj = "532.372.476-50",
            Telefone1 = "999999999"
        };

        await _client.PostAsJsonAsync("/api/clientes", request);

        var response = await _client.PostAsJsonAsync("/api/clientes", request);

        Assert.Equal(HttpStatusCode.Conflict, response.StatusCode);
    }

    [Fact]
    public async Task CriarCliente_ComDadosInvalidos_DeveRetornar400()
    {
        _factory.Autenticar();

        var request = new AdicionarClienteRequestDto
        {
            Nome = "",
            CpfCnpj = ""
        };

        var response = await _client.PostAsJsonAsync("/api/clientes", request);

        Assert.Equal(HttpStatusCode.BadRequest, response.StatusCode);
    }

    [Fact]
    public async Task AtualizarCliente_DeveRetornar204()
    {
        _factory.Autenticar();

        var create = await _client.PostAsJsonAsync("/api/clientes", new AdicionarClienteRequestDto
        {
            Nome = "Cliente 2",
            CpfCnpj = "953.463.246-58",
            Telefone1 = "999999999"
        });

        var id = await create.Content.ReadFromJsonAsync<int>();

        var updateDto = new AtualizarClienteRequestDto
        {
            Nome = "Cliente Atualizado",
            CpfCnpj = "953.463.246-58",
            Telefone1 = "888888888",
        };

        var response = await _client.PutAsJsonAsync($"/api/clientes/{id}", updateDto);

        Assert.Equal(HttpStatusCode.NoContent, response.StatusCode);
    }

    [Fact]
    public async Task AtualizarCliente_Inexistente_DeveRetornar404()
    {
        _factory.Autenticar();

        var updateDto = new AtualizarClienteRequestDto
        {
            Nome = "Cliente Atualizado",
            CpfCnpj = "953.463.246-58",
            Telefone1 = "888888888",
        };

        var response = await _client.PutAsJsonAsync("/api/clientes/9999", updateDto);

        Assert.Equal(HttpStatusCode.NotFound, response.StatusCode);
    }

    [Fact]
    public async Task DeletarCliente_DeveRetornar204()
    {
        _factory.Autenticar();

        var create = await _client.PostAsJsonAsync("/api/clientes", new AdicionarClienteRequestDto
        {
            Nome = "Cliente",
            CpfCnpj = "279.234.026-63",
            Telefone1 = "999999999"
        });

        var id = await create.Content.ReadFromJsonAsync<int>();

        var response = await _client.DeleteAsync($"/api/clientes/{id}");

        Assert.Equal(HttpStatusCode.NoContent, response.StatusCode);
    }

    [Fact]
    public async Task DeletarCliente_Inexistente_DeveRetornar404()
    {
        _factory.Autenticar();

        var response = await _client.DeleteAsync("/api/clientes/9999");

        Assert.Equal(HttpStatusCode.NotFound, response.StatusCode);
    }

    [Fact]
    public async Task ListarClientes_ComFiltro_DeveFuncionar()
    {
        _factory.Autenticar();

        await _client.PostAsJsonAsync("/api/clientes", new AdicionarClienteRequestDto
        {
            Nome = "Cliente Filtro",
            CpfCnpj = "68668467654",
            Telefone1 = "999999999"
        });

        var response = await _client.GetAsync("/api/clientes?CpfCnpj=68668467654");

        Assert.Equal(HttpStatusCode.OK, response.StatusCode);

        var clientes = await response.Content.ReadFromJsonAsync<List<ClienteResponseDto>>();

        Assert.NotNull(clientes);
        Assert.Contains(clientes, c => c.CpfCnpj == "68668467654");
    }
}