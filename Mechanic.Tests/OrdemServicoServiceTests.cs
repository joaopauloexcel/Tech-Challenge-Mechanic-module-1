using Mechanic.Application.DTOs.OrdemServico.Query;
using Mechanic.Application.DTOs.OrdemServico.Request;
using Mechanic.Application.Enums;
using Mechanic.Application.Services;
using Mechanic.Data;
using Mechanic.Domain.Entities;
using Mechanic.Domain.Interfaces;
using Mechanic.Infrastructure.Repositories;
using Microsoft.AspNetCore.Mvc.Testing;
using Microsoft.EntityFrameworkCore;
using Moq;
using System.Net;
using Xunit;

public class OrdemServicoServiceTests
{
    private readonly Mock<IOrdemServicoRepository> _osRepo = new();
    private readonly Mock<IProdutoRepository> _produtoRepo = new();
    private readonly Mock<IOrdemServicoOrcamentoRepository> _orcRepo = new();
    private readonly Mock<IOrdemServicoProdutoRepository> _osProdRepo = new();
    private readonly Mock<IOrdemServicoServicoRepository> _osServRepo = new();
    private readonly Mock<IOrdemServicoServicoLogRepository> _logRepo = new();
    private readonly Mock<IUnitOfWork> _uow = new();

    private OrdemServicoService CriarService()
    {
        return new OrdemServicoService(
            _osRepo.Object,
            _produtoRepo.Object,
            _orcRepo.Object,
            _osProdRepo.Object,
            _osServRepo.Object,
            _logRepo.Object,
            _uow.Object
        );
    }

    [Fact]
    public async Task CancelarOS_DeveCancelarQuandoStatusForValido()
    {
        var os = new OrdemServico
        {
            Id = 1,
            Status = StatusOrdemServico.Recebida
        };

        var repoMock = new Mock<IOrdemServicoRepository>();
        var uowMock = new Mock<IUnitOfWork>();

        repoMock.Setup(x => x.ObterPorIdAsync(1))
                .ReturnsAsync(os);

        var service = new OrdemServicoService(
            repoMock.Object,
            null!, null!, null!, null!, null!,
            uowMock.Object
        );

        // Act
        await service.CancelarOSAsync(1);

        // Assert
        Assert.Equal(StatusOrdemServico.Cancelada, os.Status);
        uowMock.Verify(x => x.CommitAsync(), Times.Once);
    }

    [Fact]
    public async Task Nao_Deve_Cancelar_Se_Status_Invalido()
    {
        var service = CriarService();

        var os = new OrdemServico
        {
            Id = 1,
            Status = StatusOrdemServico.Finalizada
        };

        _osRepo.Setup(x => x.ObterPorIdAsync(1))
            .ReturnsAsync(os);

        await Assert.ThrowsAsync<Exception>(() =>
            service.CancelarOSAsync(1));
    }

    [Fact]
    public async Task Deve_Finalizar_OS_Quando_Tudo_OK()
    {
        var service = CriarService();

        var os = new OrdemServico
        {
            Id = 1,
            Status = StatusOrdemServico.EmExecucao,
            PossuiOrcamentoPendente = false,
            Servicos = new List<OrdemServicoServico>
        {
            new OrdemServicoServico
            {
                Logs = new List<OrdemServicoServicoLog>
                {
                    new OrdemServicoServicoLog { AcaoLog = StatusServicoLog.Finalizar }
                }
            }
        }
        };

        _osRepo.Setup(x => x.ObterComServicosAsync(1))
            .ReturnsAsync(os);

        await service.FinalizarOSAsync(1);

        Assert.Equal(StatusOrdemServico.Finalizada, os.Status);
    }

    [Fact]
    public async Task Nao_Deve_Finalizar_Se_Houver_Servico_Sem_Finalizar()
    {
        var service = CriarService();

        var os = new OrdemServico
        {
            Id = 1,
            Status = StatusOrdemServico.EmExecucao,
            PossuiOrcamentoPendente = false,
            Servicos = new List<OrdemServicoServico>
        {
            new OrdemServicoServico
            {
                Logs = new List<OrdemServicoServicoLog>
                {
                    new OrdemServicoServicoLog { AcaoLog = StatusServicoLog.Iniciar }
                }
            }
        }
        };

        _osRepo.Setup(x => x.ObterComServicosAsync(1))
            .ReturnsAsync(os);

        await Assert.ThrowsAsync<Exception>(() =>
            service.FinalizarOSAsync(1));
    }

    [Fact]
    public async Task Deve_Entregar_OS_Quando_Finalizada()
    {
        var service = CriarService();

        var os = new OrdemServico
        {
            Id = 1,
            Status = StatusOrdemServico.Finalizada
        };

        _osRepo.Setup(x => x.ObterPorIdAsync(1))
            .ReturnsAsync(os);

        await service.EntregarOSAsync(1);

        Assert.Equal(StatusOrdemServico.Entregue, os.Status);
    }

    [Fact]
    public async Task Nao_Deve_Entregar_Se_Nao_Finalizada()
    {
        var service = CriarService();

        var os = new OrdemServico
        {
            Id = 1,
            Status = StatusOrdemServico.EmExecucao
        };

        _osRepo.Setup(x => x.ObterPorIdAsync(1))
            .ReturnsAsync(os);

        await Assert.ThrowsAsync<Exception>(() =>
            service.EntregarOSAsync(1));
    }

}