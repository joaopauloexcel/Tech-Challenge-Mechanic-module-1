using Mechanic.Application.Services;
using Mechanic.Domain.Entities;
using Mechanic.Domain.Interfaces;
using Mechanic.Application.DTOs;
using Mechanic.Domain.ValueObjects;
using Moq;
using Newtonsoft.Json.Linq;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Xunit;

public class ClienteServiceTests
{
    private readonly Mock<IClienteRepository> _repoMock;
    private readonly ClienteService _service;

    public ClienteServiceTests()
    {
        _repoMock = new Mock<IClienteRepository>();
        _service = new ClienteService(_repoMock.Object);
    }


    [Fact]
    public async Task ListarTodos_DeveChamarRepositorio()
    {
        _repoMock
            .Setup(r => r.ListarTodosAsync("123"))
            .ReturnsAsync(new List<Cliente>());

        await _service.ListarTodos("123");

        _repoMock.Verify(r => r.ListarTodosAsync("123"), Times.Once);
    }

    [Fact]
    public async Task ListarTodos_DeveRetornarListaVazia_QuandoNaoHouverClientes()
    {
        _repoMock
            .Setup(r => r.ListarTodosAsync(null))
            .ReturnsAsync(new List<Cliente>());

        var result = await _service.ListarTodos(null);

        Assert.NotNull(result);
        Assert.Empty(result);
    }

    [Fact]
    public void Cliente_DeveCriarComValoresPadrao()
    {
        var cliente = new Cliente();

        Assert.True(cliente.Ativo);
        Assert.NotEqual(default, cliente.DataCriacao);
    }

    [Fact]
    public void SetDocument_DeveAtribuirCpfCnpj()
    {
        var cliente = new Cliente();

        cliente.SetDocument("11144477735");

        Assert.Equal("11144477735", cliente.CpfCnpj.Value);
    }

    [Fact]
    public void SetDocument_DeveLancarExcecao_QuandoCpfInvalido()
    {
        var cliente = new Cliente();

        Assert.Throws<ArgumentException>(() => cliente.SetDocument("123"));
    }

    [Fact]
    public void Cliente_DevePermitirAlterarPropriedades()
    {
        var cliente = new Cliente
        {
            Nome = "João",
            Telefone1 = "1111",
            Email = "teste@email.com"
        };

        cliente.Nome = "Maria";
        cliente.Telefone1 = "9999";

        Assert.Equal("Maria", cliente.Nome);
        Assert.Equal("9999", cliente.Telefone1);
    }

    [Fact]
public void Cliente_DeveEstarValido_AposConfiguracao()
{
    var cliente = new Cliente
    {
        Id = 1,
        Nome = "João",
        Telefone1 = "1111",
        Telefone2 = "2222",
        Email = "teste@email.com",
        Ativo = true
    };

    cliente.SetDocument("11144477735");

    Assert.Equal(1, cliente.Id);
    Assert.Equal("João", cliente.Nome);
    Assert.Equal("11144477735", cliente.CpfCnpj.Value);
}


}

