using Mechanic.Application.DTOs.Produto.Request;
using Mechanic.Application.Services;
using Mechanic.Domain.Entities;
using Mechanic.Domain.Interfaces;
using Moq;
using System.Collections.Generic;
using System.Threading.Tasks;
using Xunit;

public class ProdutoServiceTests
{
    private readonly Mock<IProdutoRepository> _repoMock;
    private readonly ProdutoService _service;

    public ProdutoServiceTests()
    {
        _repoMock = new Mock<IProdutoRepository>();
        _service = new ProdutoService(_repoMock.Object);
    }

    [Fact]
    public async Task ListarTodos_DeveMapearProdutos()
    {
        var produtos = new List<Produto>
    {
        new Produto
        {
            Id = 1,
            Sku = "ABC",
            Descricao = "Produto A",
            PrecoCusto = 10,
            PrecoVenda = 20,
            QuantidadeTotal = 5,
            QuantidadeReservada = 1,
            QuantidadeMinima = 2,
            Ativo = true
        }
    };

        _repoMock.Setup(r => r.ListarTodosAsync(null))
                 .ReturnsAsync(produtos);

        var result = await _service.ListarTodos(null);

        Assert.Single(result);
        Assert.Equal("ABC", result[0].Sku);
        Assert.Equal(20, result[0].PrecoVenda);
    }

    [Fact]
    public async Task ListarPorId_DeveRetornarNull_QuandoNaoExistir()
    {
        _repoMock.Setup(r => r.ListarPorIdAsync(1))
                 .ReturnsAsync((Produto)null);

        var result = await _service.ListarPorId(1);

        Assert.Null(result);
    }

    [Fact]
    public async Task Criar_DeveLancarExcecao_QuandoSkuExistir()
    {
        var dto = new AdicionarProdutoRequestDto { Sku = "ABC" };

        _repoMock.Setup(r => r.ExisteSkuAsync("ABC"))
                 .ReturnsAsync(true);

        await Assert.ThrowsAsync<Exception>(() => _service.Criar(dto));
    }

    [Fact]
    public async Task Criar_DeveAdicionarProduto()
    {
        var dto = new AdicionarProdutoRequestDto
        {
            Sku = "ABC",
            Descricao = "Produto",
            PrecoCusto = 10,
            PrecoVenda = 20,
            QuantidadeTotal = 5,
            QuantidadeMinima = 2
        };

        _repoMock.Setup(r => r.ExisteSkuAsync("ABC"))
                 .ReturnsAsync(false);

        _repoMock.Setup(r => r.AdicionarAsync(It.IsAny<Produto>()))
                 .Callback<Produto>(p => p.Id = 1)
                 .Returns(Task.CompletedTask);

        var id = await _service.Criar(dto);

        Assert.Equal(1, id);
        _repoMock.Verify(r => r.AdicionarAsync(It.IsAny<Produto>()), Times.Once);
    }

    [Fact]
    public async Task Atualizar_DeveRetornarFalse_QuandoProdutoNaoExistir()
    {
        _repoMock.Setup(r => r.ListarPorIdAsync(1))
          .ReturnsAsync((Produto?)null);

        var result = await _service.Atualizar(1, new AtualizarProdutoRequestDto());

        Assert.False(result);
    }

    [Fact]
    public async Task Atualizar_DeveAtualizarProduto()
    {
        var produto = new Produto { Id = 1, Sku = "OLD" };

        var dto = new AtualizarProdutoRequestDto
        {
            Sku = "NEW",
            Descricao = "Novo",
            PrecoCusto = 5,
            PrecoVenda = 10,
            QuantidadeMinima = 1
        };

        _repoMock.Setup(r => r.ListarPorIdAsync(1))
                 .ReturnsAsync(produto);

        _repoMock.Setup(r => r.ExisteSkuAsync("NEW"))
                 .ReturnsAsync(false);

        var result = await _service.Atualizar(1, dto);

        Assert.True(result);
        Assert.Equal("NEW", produto.Sku);

        _repoMock.Verify(r => r.AtualizarAsync(produto), Times.Once);
    }

    [Fact]
    public async Task Atualizar_DeveLancarExcecao_QuandoSkuDuplicado()
    {
        var produto = new Produto { Id = 1, Sku = "OLD" };

        var dto = new AtualizarProdutoRequestDto { Sku = "NEW" };

        _repoMock.Setup(r => r.ListarPorIdAsync(1))
                 .ReturnsAsync(produto);

        _repoMock.Setup(r => r.ExisteSkuAsync("NEW"))
                 .ReturnsAsync(true);

        await Assert.ThrowsAsync<Exception>(() => _service.Atualizar(1, dto));
    }

    [Fact]
    public async Task AtualizarEstoque_DeveAtualizarQuantidadeEPreco()
    {
        var produto = new Produto
        {
            Id = 1,
            QuantidadeTotal = 10,
            PrecoCusto = 5,
            PrecoVenda = 10
        };

        var dto = new AtualizarEstoqueProdutoRequestDto
        {
            QuantidadeAdicionada = 5,
            NovoPrecoCusto = 6,
            NovoPrecoVenda = 12
        };

        _repoMock.Setup(r => r.ListarPorIdAsync(1))
                 .ReturnsAsync(produto);

        var result = await _service.AtualizarEstoque(1, dto);

        Assert.True(result);
        Assert.Equal(15, produto.QuantidadeTotal);
        Assert.Equal(6, produto.PrecoCusto);
        Assert.Equal(12, produto.PrecoVenda);
    }

    [Fact]
    public async Task Deletar_DeveInativarProduto()
    {
        var produto = new Produto { Id = 1, Ativo = true };

        _repoMock.Setup(r => r.ListarPorIdAsync(1))
                 .ReturnsAsync(produto);

        var result = await _service.Deletar(1);

        Assert.True(result);
        Assert.False(produto.Ativo);

        _repoMock.Verify(r => r.AtualizarAsync(produto), Times.Once);
    }

}











