using Azure;
using Mechanic.Application.DTOs.Cliente.Request;
using Mechanic.Application.DTOs.OrdemServico.Request;
using Mechanic.Application.DTOs.OrdemServico.Response;
using Mechanic.Application.DTOs.Produto.Request;
using Mechanic.Application.DTOs.Servico.Request;
using Mechanic.Application.DTOs.Veiculo.Request;
using Mechanic.Application.Enums;
using System.Net;
using System.Net.Http.Json;

public class OrdemServicoEndpointsTests : IClassFixture<ApiTestBase>
{
    private readonly HttpClient _client;
    private readonly ApiTestBase _factory;

    public OrdemServicoEndpointsTests(ApiTestBase factory)
    {
        _factory = factory;
        _client = factory.CreateClient();
    }

    // HELPER Cerar CPF
    private string GerarCpfValido()
    {
        int soma = 0;
        int[] multiplicador1 = { 10, 9, 8, 7, 6, 5, 4, 3, 2 };
        int[] multiplicador2 = { 11, 10, 9, 8, 7, 6, 5, 4, 3, 2 };

        Random rnd = new Random();
        string semente = rnd.Next(100000000, 999999999).ToString();

        for (int i = 0; i < 9; i++)
            soma += int.Parse(semente[i].ToString()) * multiplicador1[i];

        int resto = soma % 11;
        resto = resto < 2 ? 0 : 11 - resto;

        semente += resto.ToString();
        soma = 0;

        for (int i = 0; i < 10; i++)
            soma += int.Parse(semente[i].ToString()) * multiplicador2[i];

        resto = soma % 11;
        resto = resto < 2 ? 0 : 11 - resto;

        return semente + resto.ToString();
    }

    // Helper para criar cliente

    private async Task<int> CriarClienteAsync()
    {
        _factory.Autenticar();

        var sufixoAleatorio = new Random().Next(1000, 9999);

        var dto = new AdicionarClienteRequestDto
        {
            Nome = "Cliente Teste",
            CpfCnpj = GerarCpfValido(),
            Telefone1 = "35999999999",
            Email = $"teste_{Guid.NewGuid()}@email.com"
        };

        var response = await _client.PostAsJsonAsync("/api/clientes", dto);

        response.EnsureSuccessStatusCode();

        return await response.Content.ReadFromJsonAsync<int>();
    }

    // Helper para criar veículo

    private async Task<int> CriarVeiculoAsync(int clienteId)
    {
        var random = new Random();
        var sufixo = random.Next(1000, 9999).ToString();

        var dto = new AdicionarVeiculoRequestDto
        {
            ClienteId = clienteId,
            Placa = $"ABC{sufixo}",
            Marca = "Ford",
            Modelo = "Fiesta",
            Ano = 2015
        };

        var response = await _client.PostAsJsonAsync("/api/veiculos", dto);
        response.EnsureSuccessStatusCode();

        return await response.Content.ReadFromJsonAsync<int>();
    }

    // Helper para criar serviço 

    private async Task<int> CriarServicoAsync()
    {
        var dto = new AdicionarServicoRequestDto
        {
            Sku = "SERV-" + Guid.NewGuid().ToString().Substring(0, 8),
            Descricao = "Troca de óleo",
            Preco = 100
        };

        var response = await _client.PostAsJsonAsync("/api/servicos", dto);
        response.EnsureSuccessStatusCode();

        return await response.Content.ReadFromJsonAsync<int>();
    }

    // Helper para criar produto 

    private async Task<int> CriarProdutoAsync()
    {
        var dto = new AdicionarProdutoRequestDto
        {
            Sku = "PROD-" + Guid.NewGuid().ToString().Substring(0, 8),
            Descricao = "Filtro de óleo",
            PrecoCusto = 20,
            PrecoVenda = 50,
            QuantidadeTotal = 10,
            QuantidadeMinima = 2
        };

        var response = await _client.PostAsJsonAsync("/api/produtos", dto);
        response.EnsureSuccessStatusCode();

        return await response.Content.ReadFromJsonAsync<int>();
    }

    // Helper para criar OS 

    private async Task<int> CriarOSAsync()
    {
        var clienteId = await CriarClienteAsync();
        var veiculoId = await CriarVeiculoAsync(clienteId);

        var dto = new CriarOrdemServicoRequestDto
        {
            Titulo = "OS Teste",
            Descricao = "Descrição teste",
            ClienteId = clienteId,
            VeiculoId = veiculoId
        };

        var response = await _client.PostAsJsonAsync("/api/ordens-servico", dto);
        response.EnsureSuccessStatusCode();

        return await response.Content.ReadFromJsonAsync<int>();
    }

    // Helper para criar orçamento com serviço e produto

    private async Task<CriarOrcamentoRequestDto> CriarOrcamentoDtoAsync()
    {
        var servicoId = await CriarServicoAsync();
        var produtoId = await CriarProdutoAsync();

        return new CriarOrcamentoRequestDto
        {
            Descricao = "Orçamento teste",
            observacaoMecanico = "Tudo certo",
            ServicosOrcamentoOS = new()
            {
                new ServicoOrcamentoRequestDto
                {
                    ServicoIdOrcamento = servicoId,
                    PrecoServicoOrcamento = 150
                }
            },
            ProdutosOrcamentoOS = new()
            {
                new ProdutoOrcamentoRequestDto
                {
                    ProdutoIdOrcamento = produtoId,
                    QtdProdutoOrcamento = 1,
                    PrecoUnitarioProdutoOrcamento = 50
                }
            }
        };
    }

    // Helper para avançar OS para diagnóstico
    private async Task AvancarParaDiagnosticoAsync(int osId)
    {
        await _client.PostAsync($"/api/ordens-servico/{osId}/iniciar-diagnostico", null);
    }

    // Helper para avançar OS para Em aprovação enviando orçamento
    private async Task<CriarOrcamentoRequestDto> EnviarOrcamentoAsync(int osId)
    {
        var dto = await CriarOrcamentoDtoAsync();
        await _client.PostAsJsonAsync($"/api/ordens-servico/{osId}/enviar-orcamento", dto);
        return dto;
    }

    // Helper para criar OS já aprovada em Execução
    private async Task<int> CriarOSEmExecucaoAsync()
    {
        var osId = await CriarOSAsync();
        await AvancarParaDiagnosticoAsync(osId);
        await EnviarOrcamentoAsync(osId);

        var os = await _client.GetAsync($"/api/ordens-servico/{osId}");
        var dto = await os.Content.ReadFromJsonAsync<OrdemServicoResponseDto>();
        Assert.NotNull(dto);
        var orcamento = dto.Orcamentos.Last();
        var ultimosDigitos = dto.CpfCnpjCliente[^3..];

        await _client.PatchAsJsonAsync(
            $"/api/ordem-servico/externo/{dto.PublicToken}/{ultimosDigitos}/orcamento/{orcamento.OSOrcamentoId}",
            new DecisaoOrcamentoRequestDto { Aprovar = true });

        return osId;
    }

    // Helper para criar OS já aprovada em Execução iniciada
    private async Task<int> CriarOSEmExecucaoIniciadaAsync()
    {
        var osId = await CriarOSEmExecucaoAsync();

        var os = await _client.GetAsync($"/api/ordens-servico/{osId}");
        var dto = await os.Content.ReadFromJsonAsync<OrdemServicoResponseDto>();
        Assert.NotNull(dto);

        var orcamento = dto.Orcamentos.Last();
        var servico = orcamento.ServicosOrcamentoOS.FirstOrDefault();
        Assert.NotNull(servico);

        var requestInicio = new ExecutarServicoLogRequestDto
        {
            Acao = StatusServicoLog.Iniciar
        };

        await _client.PostAsJsonAsync(
            $"/api/ordens-servico/{osId}/orcamentos/{orcamento.OSOrcamentoId}/servicos/{servico.ServicoOrcadoId}/executar",
            requestInicio);


        return osId;
    }

    // Helper para criar OS já aprovada em Execução terminada
    private async Task<int> CriarOSEmExecucaoTerminadaAsync()
    {
        var osId = await CriarOSEmExecucaoIniciadaAsync();

        var os = await _client.GetAsync($"/api/ordens-servico/{osId}");
        var dto = await os.Content.ReadFromJsonAsync<OrdemServicoResponseDto>();
        Assert.NotNull(dto);

        var orcamento = dto.Orcamentos.Last();
        var servico = orcamento.ServicosOrcamentoOS.FirstOrDefault();
        Assert.NotNull(servico);

        var requestFim = new ExecutarServicoLogRequestDto
        {
            Acao = StatusServicoLog.Terminar
        };

        await _client.PostAsJsonAsync(
            $"/api/ordens-servico/{osId}/orcamentos/{orcamento.OSOrcamentoId}/servicos/{servico.ServicoOrcadoId}/executar",
            requestFim);

        return osId;
    }

    // Helper para criar OS já finalizada

    private async Task<int> CriarOSFinalizadaAsync()
    {
        var osId = await CriarOSEmExecucaoTerminadaAsync();


        var response = await _client.PostAsync(
        $"/api/ordens-servico/{osId}/status/finalizar",
        null);

        Assert.Equal(HttpStatusCode.NoContent, response.StatusCode);

        var os = await _client.GetAsync($"/api/ordens-servico/{osId}");
        var dto = await os.Content.ReadFromJsonAsync<OrdemServicoResponseDto>();
        Assert.NotNull(dto);

        return dto.OrdensServicoId;
    }

    // Helper deve retornar hash e documento válidos para consulta do cliente

    public class HashDocumentoContextoTest
    {
        public string hash { get; set; } = string.Empty;
        public string ultimosDigitos { get; set; } = string.Empty;
    }

    private async Task<HashDocumentoContextoTest> ObterHashEDocumentoEmAprovacaoAsync()
    {
        var osId = await CriarOSAsync();
        await AvancarParaDiagnosticoAsync(osId);
        await EnviarOrcamentoAsync(osId);

        var os = await _client.GetAsync($"/api/ordens-servico/{osId}");
        var dto = await os.Content.ReadFromJsonAsync<OrdemServicoResponseDto>();
        Assert.NotNull(dto);

        var hashDto = dto.PublicToken;
        var ultimosDigitosDto = dto.CpfCnpjCliente[^3..];

        return new HashDocumentoContextoTest
        {
            hash = hashDto,
            ultimosDigitos = ultimosDigitosDto,
        };
    }

    [Fact]
    public async Task Criar_OS_Deve_Ter_Status_Recebida()
    {
        var osId = await CriarOSAsync();

        var response = await _client.GetAsync($"/api/ordens-servico/{osId}");
        var dto = await response.Content.ReadFromJsonAsync<OrdemServicoResponseDto>();
        Assert.NotNull(dto);
        Assert.Equal(StatusOrdemServico.Recebida.ToString(), dto.StatusOS);
    }

    [Fact]
    public async Task Listar_OS_Deve_Retornar_Lista()
    {
        await CriarOSAsync();

        var response = await _client.GetAsync("/api/ordens-servico");

        var list = await response.Content.ReadFromJsonAsync<List<OrdemServicoResponseDto>>();

        Assert.NotNull(list);
    }

    [Fact]
    public async Task Iniciar_Diagnostico_Deve_Mudar_Para_Em_Diagnostico()
    {
        var osId = await CriarOSAsync();

        await AvancarParaDiagnosticoAsync(osId);

        var response = await _client.GetAsync($"/api/ordens-servico/{osId}");
        var dto = await response.Content.ReadFromJsonAsync<OrdemServicoResponseDto>();
        Assert.NotNull(dto);
        Assert.Equal(StatusOrdemServico.EmDiagnostico.ToString(), dto.StatusOS);
    }

    [Fact]
    public async Task Enviar_Orcamento_Deve_Mudar_Para_Em_Aprovacao()
    {
        var osId = await CriarOSAsync();

        await AvancarParaDiagnosticoAsync(osId);

        await EnviarOrcamentoAsync(osId);

        var response = await _client.GetAsync($"/api/ordens-servico/{osId}");
        var dto = await response.Content.ReadFromJsonAsync<OrdemServicoResponseDto>();
        Assert.NotNull(dto);
        Assert.Equal(StatusOrdemServico.EmAprovacao.ToString(), dto.StatusOS);
    }

    [Fact]
    public async Task Cliente_Deve_Consultar_OS_Externa_Com_Orcamentos()
    {
        var dto = await ObterHashEDocumentoEmAprovacaoAsync();

        var response = await _client.GetAsync(
            $"/api/ordem-servico/externo/{dto.hash}/{dto.ultimosDigitos}");

        var externo = await response.Content.ReadFromJsonAsync<OrdemServicoResponseDto>();
        Assert.NotNull(externo);
        Assert.NotEmpty(externo.Orcamentos);
    }

    [Fact]
    public async Task Aprovar_Orcamento_Deve_Mudar_Para_Em_Execucao()
    {
        var osId = await CriarOSEmExecucaoAsync();

        var updated = await _client.GetAsync($"/api/ordens-servico/{osId}");
        var updatedDto = await updated.Content.ReadFromJsonAsync<OrdemServicoResponseDto>();
        Assert.NotNull(updatedDto);
        Assert.Equal(StatusOrdemServico.EmExecucao.ToString(), updatedDto.StatusOS);
    }

    [Fact]
    public async Task Iniciar_Servico_Deve_Criar_Log_De_Inicio()
    {
        var osId = await CriarOSEmExecucaoIniciadaAsync();
        var os = await _client.GetAsync($"/api/ordens-servico/{osId}");
        var dto = await os.Content.ReadFromJsonAsync<OrdemServicoResponseDto>();
        Assert.NotNull(dto);

    }

    [Fact]
    public async Task Terminar_Servico_Deve_Criar_Log_De_Inicio()
    {
        var osId = await CriarOSEmExecucaoTerminadaAsync();
        var os = await _client.GetAsync($"/api/ordens-servico/{osId}");
        var dto = await os.Content.ReadFromJsonAsync<OrdemServicoResponseDto>();
        Assert.NotNull(dto);
    }


    [Fact]
    public async Task Finalizar_OS_Deve_Mudar_Para_Finalizada()
    {
        var osId = await CriarOSEmExecucaoTerminadaAsync();

        var response = await _client.PostAsync(
            $"/api/ordens-servico/{osId}/status/finalizar",
            null);

        Assert.Equal(HttpStatusCode.NoContent, response.StatusCode);

        var updated = await _client.GetAsync($"/api/ordens-servico/{osId}");
        var dto = await updated.Content.ReadFromJsonAsync<OrdemServicoResponseDto>();

        Assert.Equal(StatusOrdemServico.Finalizada.ToString(), dto.StatusOS);
    }

    [Fact]
    public async Task Entregar_OS_Deve_Mudar_Para_Entregue()
    {
        var osId = await CriarOSFinalizadaAsync();

        var response = await _client.PostAsync(
            $"/api/ordens-servico/{osId}/status/entregar",
            null);

        Assert.Equal(HttpStatusCode.NoContent, response.StatusCode);

        var updated = await _client.GetAsync($"/api/ordens-servico/{osId}");
        var dto = await updated.Content.ReadFromJsonAsync<OrdemServicoResponseDto>();

        Assert.Equal(StatusOrdemServico.Entregue.ToString(), dto.StatusOS);
    }


    [Fact]
    public async Task Cancelar_OS_Deve_Mudar_Para_Cancelada()
    {
        var osId = await CriarOSAsync();

        var response = await _client.PostAsync(
            $"/api/ordens-servico/{osId}/status/cancelar",
            null);

        Assert.Equal(HttpStatusCode.NoContent, response.StatusCode);

        var updated = await _client.GetAsync($"/api/ordens-servico/{osId}");
        var dto = await updated.Content.ReadFromJsonAsync<OrdemServicoResponseDto>();
        Assert.NotNull(dto);
        Assert.Equal(StatusOrdemServico.Cancelada.ToString(), dto.StatusOS);
    }


    [Fact]
    public async Task RelatorioTempoMedio_DeveRetornar200()
    {
        _factory.Autenticar();

        var response = await _client.GetAsync("/api/ordens-servico/relatorios/servicos/tempo-medio");

        Assert.Equal(HttpStatusCode.OK, response.StatusCode);

        var data = await response.Content.ReadFromJsonAsync<RelatorioTempoMedioResponseDto>();

        Assert.NotNull(data);
    }
}