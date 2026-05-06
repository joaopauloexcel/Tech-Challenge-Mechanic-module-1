using Mechanic.Application.DTOs.Servico;
using Mechanic.Application.Services;
using Mechanic.Domain.Entities;
using Mechanic.Domain.Interfaces;
using Moq;
using System.Collections.Generic;
using System.Threading.Tasks;
using Xunit;

public class ServicoServiceTests
{
    private readonly Mock<IServicoRepository> _repoMock;
    private readonly ServicoService _service;

    public ServicoServiceTests()
    {
        _repoMock = new Mock<IServicoRepository>();
        _service = new ServicoService(_repoMock.Object);
    }

    [Fact]
    public async Task ListarTodos_DeveMapearServicos()
    {
        var servicos = new List<Servico>
    {
        new Servico
        {
            Id = 1,
            Sku = "SERV1",
            Descricao = "Troca de óleo",
            Preco = 100,
            Ativo = true
        }
    };

        _repoMock.Setup(r => r.ListarTodosAsync(null))
                 .ReturnsAsync(servicos);

        var result = await _service.ListarTodos(null);

        Assert.Single(result);
        Assert.Equal("SERV1", result[0].Sku);
        Assert.Equal(100, result[0].Preco);
    }

    [Fact]
    public async Task ListarPorId_DeveRetornarNull_QuandoNaoExistir()
    {
        _repoMock.Setup(r => r.ListarPorIdAsync(1))
                 .ReturnsAsync((Servico?)null);

        var result = await _service.ListarPorId(1);

        Assert.Null(result);
    }

    [Fact]
    public async Task Criar_DeveLancarExcecao_QuandoSkuExistir()
    {
        var dto = new AdicionarServicoDto { Sku = "SERV1" };

        _repoMock.Setup(r => r.ExisteSkuAsync("SERV1"))
                 .ReturnsAsync(true);

        await Assert.ThrowsAsync<Exception>(() => _service.Criar(dto));
    }

    [Fact]
    public async Task Criar_DeveAdicionarServico()
    {
        var dto = new AdicionarServicoDto
        {
            Sku = "SERV1",
            Descricao = "Troca de óleo",
            Preco = 100
        };

        _repoMock.Setup(r => r.ExisteSkuAsync("SERV1"))
                 .ReturnsAsync(false);

        _repoMock.Setup(r => r.AdicionarAsync(It.IsAny<Servico>()))
                 .Callback<Servico>(s => s.Id = 1)
                 .Returns(Task.CompletedTask);

        var id = await _service.Criar(dto);

        Assert.Equal(1, id);
        _repoMock.Verify(r => r.AdicionarAsync(It.IsAny<Servico>()), Times.Once);
    }

    [Fact]
    public async Task Atualizar_DeveRetornarFalse_QuandoNaoExistir()
    {
        _repoMock.Setup(r => r.ListarPorIdAsync(1))
                 .ReturnsAsync((Servico?)null);

        var result = await _service.Atualizar(1, new AtualizarServicoDto());

        Assert.False(result);
    }

    [Fact]
    public async Task Atualizar_DeveAtualizarCampos()
    {
        var servico = new Servico
        {
            Id = 1,
            Descricao = "Antigo",
            Preco = 50
        };

        var dto = new AtualizarServicoDto
        {
            Descricao = "Novo",
            Preco = 120
        };

        _repoMock.Setup(r => r.ListarPorIdAsync(1))
                 .ReturnsAsync(servico);

        var result = await _service.Atualizar(1, dto);

        Assert.True(result);
        Assert.Equal("Novo", servico.Descricao);
        Assert.Equal(120, servico.Preco);

        _repoMock.Verify(r => r.AtualizarAsync(servico), Times.Once);
    }

    [Fact]
    public async Task Atualizar_NaoDeveAlterarPreco_QuandoNull()
    {
        var servico = new Servico
        {
            Id = 1,
            Preco = 50
        };

        var dto = new AtualizarServicoDto
        {
            Descricao = "Novo",
            Preco = null
        };

        _repoMock.Setup(r => r.ListarPorIdAsync(1))
                 .ReturnsAsync(servico);

        await _service.Atualizar(1, dto);

        Assert.Equal(50, servico.Preco);
    }


    [Fact]
    public async Task Deletar_DeveInativarServico()
    {
        var servico = new Servico
        {
            Id = 1,
            Ativo = true
        };

        _repoMock.Setup(r => r.ListarPorIdAsync(1))
                 .ReturnsAsync(servico);

        var result = await _service.Deletar(1);

        Assert.True(result);
        Assert.False(servico.Ativo);

        _repoMock.Verify(r => r.AtualizarAsync(servico), Times.Once);
    }

}