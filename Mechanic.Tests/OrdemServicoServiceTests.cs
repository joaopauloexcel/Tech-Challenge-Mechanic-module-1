using Mechanic.Application.Enums;
using Mechanic.Application.Services;
using Mechanic.Domain.Entities;
using Mechanic.Domain.Interfaces;
using Moq;
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
    private readonly Mock<IVeiculoRepository> _veiculoRepo = new();
    private readonly Mock<IClienteRepository> _clienteRepo = new();
    private readonly Mock<ValidacaoAcessoExternoService> _validacaoAcessoExterno = new();

    private OrdemServicoService CriarService()
    {
        return new OrdemServicoService(
            _osRepo.Object,
            _produtoRepo.Object,
            _orcRepo.Object,
            _osProdRepo.Object,
            _osServRepo.Object,
            _logRepo.Object,
            _uow.Object,
            _veiculoRepo.Object,
            _clienteRepo.Object,
            _validacaoAcessoExterno.Object

        );
    }

    private OrdemServico CriarOSValida()
    {
        return OrdemServico.Criar(
            "Troca de óleo",
            "Descrição",
            1,
            1
        );
    }

    [Fact]
    public async Task CancelarOS_DeveCancelarQuandoStatusForValido()
    {
        var os = CriarOSValida(); // já começa em Recebida

        _osRepo.Setup(x => x.ObterPorIdAsync(1))
            .ReturnsAsync(os);

        var service = CriarService();

        await service.CancelarOSAsync(1);

        Assert.Equal(StatusOrdemServico.Cancelada, os.Status);
        _uow.Verify(x => x.CommitAsync(), Times.Once);
    }

    [Fact]
    public async Task Nao_Deve_Cancelar_Se_Status_Invalido()
    {
        var os = CriarOSValida();

        os.IniciarDiagnostico();
        os.EnviarOrcamento();
        os.ExecutarOS(); // agora está EmExecucao (inválido para cancelamento)

        _osRepo.Setup(x => x.ObterPorIdAsync(1))
            .ReturnsAsync(os);

        var service = CriarService();

        await Assert.ThrowsAsync<InvalidOperationException>(() =>
            service.CancelarOSAsync(1));
    }

    [Fact]
    public async Task Deve_Finalizar_OS_Quando_Tudo_OK()
    {
        var os = CriarOSValida();

        os.IniciarDiagnostico();
        os.EnviarOrcamento();
        os.ExecutarOS();

        os.PossuiOrcamentoPendente = false;

        os.Servicos = new List<OrdemServicoServico>
        {
            new OrdemServicoServico
            {
                Logs = new List<OrdemServicoServicoLog>
                {
                    new OrdemServicoServicoLog
                    {
                        AcaoLog = StatusServicoLog.Terminar
                    }
                }
            }
        };

        _osRepo.Setup(x => x.ObterComServicosAsync(1))
            .ReturnsAsync(os);

        var service = CriarService();

        await service.FinalizarOSAsync(1);

        Assert.Equal(StatusOrdemServico.Finalizada, os.Status);
    }

    [Fact]
    public async Task Nao_Deve_Finalizar_Se_Houver_Servico_Sem_Finalizar()
    {
        var os = CriarOSValida();

        os.IniciarDiagnostico();
        os.EnviarOrcamento();
        os.ExecutarOS();

        os.PossuiOrcamentoPendente = false;

        os.Servicos = new List<OrdemServicoServico>
        {
            new OrdemServicoServico
            {
                Logs = new List<OrdemServicoServicoLog>
                {
                    new OrdemServicoServicoLog
                    {
                        AcaoLog = StatusServicoLog.Iniciar
                    }
                }
            }
        };

        _osRepo.Setup(x => x.ObterComServicosAsync(1))
            .ReturnsAsync(os);

        var service = CriarService();

        await Assert.ThrowsAsync<InvalidOperationException>(() =>
            service.FinalizarOSAsync(1));
    }

    [Fact]
    public async Task Deve_Entregar_OS_Quando_Finalizada()
    {
        var os = CriarOSValida();

        os.IniciarDiagnostico();
        os.EnviarOrcamento();
        os.ExecutarOS();

        os.PossuiOrcamentoPendente = false;

        os.Servicos = new List<OrdemServicoServico>
        {
            new OrdemServicoServico
            {
                Logs = new List<OrdemServicoServicoLog>
                {
                    new OrdemServicoServicoLog
                    {
                        AcaoLog = StatusServicoLog.Terminar
                    }
                }
            }
        };

        os.Finalizar();

        _osRepo.Setup(x => x.ObterPorIdAsync(1))
            .ReturnsAsync(os);

        var service = CriarService();

        await service.EntregarOSAsync(1);

        Assert.Equal(StatusOrdemServico.Entregue, os.Status);
    }

    [Fact]
    public async Task Nao_Deve_Entregar_Se_Nao_Finalizada()
    {
        var os = CriarOSValida();

        os.IniciarDiagnostico();
        os.EnviarOrcamento();
        os.ExecutarOS(); // ainda não finalizada

        _osRepo.Setup(x => x.ObterPorIdAsync(1))
            .ReturnsAsync(os);

        var service = CriarService();

        await Assert.ThrowsAsync<InvalidOperationException>(() =>
            service.EntregarOSAsync(1));
    }
}