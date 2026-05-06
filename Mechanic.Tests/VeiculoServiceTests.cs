using Mechanic.Application.DTOs.Veiculo;
using Mechanic.Application.Services;
using Mechanic.Domain.Entities;
using Mechanic.Domain.Interfaces;
using Moq;
using System.Collections.Generic;
using System.Threading.Tasks;
using Xunit;

public class VeiculoServiceTests
{
    private readonly Mock<IVeiculoRepository> _repoMock;
    private readonly VeiculoService _service;

    public VeiculoServiceTests()
    {
        _repoMock = new Mock<IVeiculoRepository>();
        _service = new VeiculoService(_repoMock.Object);
    }

    [Fact]
    public async Task ListarTodos_DeveMapearVeiculos()
    {
        var veiculos = new List<Veiculo>
    {
        new Veiculo
        {
            Id = 1,
            ClienteId = 10,
            Placa = "ABC1234",
            Marca = "Toyota",
            Modelo = "Corolla",
            Ano = 2020,
            Ativo = true
        }
    };

        _repoMock.Setup(r => r.ListarTodosAsync(null))
                 .ReturnsAsync(veiculos);

        var result = await _service.ListarTodos(null);

        Assert.Single(result);
        Assert.Equal("ABC1234", result[0].Placa);
        Assert.Equal("Toyota", result[0].Marca);
    }

    [Fact]
    public async Task ListarPorId_DeveRetornarNull_QuandoNaoExistir()
    {
        _repoMock.Setup(r => r.ListarPorIdAsync(1))
                 .ReturnsAsync((Veiculo?)null);

        var result = await _service.ListarPorId(1);

        Assert.Null(result);
    }

    [Fact]
    public async Task Criar_DeveLancarExcecao_QuandoPlacaExistir()
    {
        var dto = new AdicionarVeiculoDto
        {
            Placa = "ABC1234",
            ClienteId = 1
        };

        _repoMock.Setup(r => r.ExistePlacaAsync("ABC1234"))
                 .ReturnsAsync(true);

        await Assert.ThrowsAsync<Exception>(() => _service.Criar(dto));
    }

    [Fact]
    public async Task Criar_DeveLancarExcecao_QuandoClienteNaoExistir()
    {
        var dto = new AdicionarVeiculoDto
        {
            Placa = "ABC1234",
            ClienteId = 1
        };

        _repoMock.Setup(r => r.ExistePlacaAsync("ABC1234"))
                 .ReturnsAsync(false);

        _repoMock.Setup(r => r.ClienteExisteAsync(1))
                 .ReturnsAsync(false);

        await Assert.ThrowsAsync<Exception>(() => _service.Criar(dto));
    }

    [Fact]
    public async Task Criar_DeveAdicionarVeiculo()
    {
        var dto = new AdicionarVeiculoDto
        {
            ClienteId = 1,
            Placa = "ABC1234",
            Marca = "Toyota",
            Modelo = "Corolla",
            Ano = 2020
        };

        _repoMock.Setup(r => r.ExistePlacaAsync("ABC1234"))
                 .ReturnsAsync(false);

        _repoMock.Setup(r => r.ClienteExisteAsync(1))
                 .ReturnsAsync(true);

        _repoMock.Setup(r => r.AdicionarAsync(It.IsAny<Veiculo>()))
                 .Callback<Veiculo>(v => v.Id = 1)
                 .Returns(Task.CompletedTask);

        var id = await _service.Criar(dto);

        Assert.Equal(1, id);
        _repoMock.Verify(r => r.AdicionarAsync(It.IsAny<Veiculo>()), Times.Once);
    }

    [Fact]
    public async Task Atualizar_DeveRetornarFalse_QuandoNaoExistir()
    {
        _repoMock.Setup(r => r.ListarPorIdAsync(1))
                 .ReturnsAsync((Veiculo?)null);

        var result = await _service.Atualizar(1, new AtualizarVeiculoDto());

        Assert.False(result);
    }

    [Fact]
    public async Task Atualizar_DeveAtualizarDados()
    {
        var veiculo = new Veiculo
        {
            Id = 1,
            Placa = "OLD1234",
            Marca = "Ford"
        };

        var dto = new AtualizarVeiculoDto
        {
            Placa = "NEW1234",
            Marca = "Toyota"
        };

        _repoMock.Setup(r => r.ListarPorIdAsync(1))
                 .ReturnsAsync(veiculo);

        _repoMock.Setup(r => r.ExistePlacaAsync("NEW1234"))
                 .ReturnsAsync(false);

        var result = await _service.Atualizar(1, dto);

        Assert.True(result);
        Assert.Equal("NEW1234", veiculo.Placa);
        Assert.Equal("Toyota", veiculo.Marca);

        _repoMock.Verify(r => r.AtualizarAsync(veiculo), Times.Once);
    }

    [Fact]
    public async Task Atualizar_DeveLancarExcecao_QuandoPlacaDuplicada()
    {
        var veiculo = new Veiculo
        {
            Id = 1,
            Placa = "OLD1234"
        };

        var dto = new AtualizarVeiculoDto
        {
            Placa = "NEW1234"
        };

        _repoMock.Setup(r => r.ListarPorIdAsync(1))
                 .ReturnsAsync(veiculo);

        _repoMock.Setup(r => r.ExistePlacaAsync("NEW1234"))
                 .ReturnsAsync(true);

        await Assert.ThrowsAsync<Exception>(() => _service.Atualizar(1, dto));
    }

    [Fact]
    public async Task Deletar_DeveInativarVeiculo()
    {
        var veiculo = new Veiculo
        {
            Id = 1,
            Ativo = true
        };

        _repoMock.Setup(r => r.ListarPorIdAsync(1))
                 .ReturnsAsync(veiculo);

        var result = await _service.Deletar(1);

        Assert.True(result);
        Assert.False(veiculo.Ativo);

        _repoMock.Verify(r => r.AtualizarAsync(veiculo), Times.Once);
    }

}

