using Humanizer;
using Mechanic.Application.Enums;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Mechanic.Domain.Entities;

[Table("OrdensServico")]
public class OrdemServico
{
    [Key]
    public int Id { get; set; }

    [Required]
    [MaxLength(150)]
    public string Titulo { get; set; } = string.Empty;

    [Required]
    public StatusOrdemServico Status { get; private set; }

    [Required]
    [MaxLength(1000)]
    public string Descricao { get; set; } = string.Empty;

    [Required]
    public int ClienteId { get; set; }

    public Cliente Cliente { get; set; } = null!;

    [Required]
    public int VeiculoId { get; set; }

    public Veiculo Veiculo { get; set; } = null!;

    public DateTime DataCriacao { get; private set; }

    public bool PossuiOrcamentoPendente { get; set; } = false;

    public bool PossuiOrcamentoAprovado { get; set; } = false;


    public string PublicHash { get; private set; } = string.Empty;

    public DateTime? DataInicioDiagnostico { get; private set; }

    public DateTime? DataFimDiagnostico { get; private set; }

    public DateTime? DataAprovacao { get; private set; }

    public DateTime? DataInicioExecucao { get; private set; }

    public DateTime? DataFinalizacao { get; private set; }

    public DateTime? DataEntrega { get; private set; }

    public DateTime? DataCancelamento { get; private set; }

    public ICollection<OrdemServicoOrcamento> Orcamentos { get; set; } = new List<OrdemServicoOrcamento>();

    public ICollection<OrdemServicoProduto> Produtos { get; set; } = new List<OrdemServicoProduto>();

    public ICollection<OrdemServicoServico> Servicos { get; set; } = new List<OrdemServicoServico>();

    public ICollection<OrdemServicoServicoLog> Logs { get; set; } = new List<OrdemServicoServicoLog>();

    public static OrdemServico Criar(
    string titulo,
    string descricao,
    int clienteId,
    int veiculoId)
    {
        return new OrdemServico
        {
            Titulo = titulo,
            Descricao = descricao,
            ClienteId = clienteId,
            VeiculoId = veiculoId,
            Status = StatusOrdemServico.Recebida,
            DataCriacao = DateTime.UtcNow,
            PublicHash = Guid.NewGuid().ToString("N")
        };
    }

    public void IniciarDiagnostico()
    {
        if (Status != StatusOrdemServico.Recebida)
        {
            throw new InvalidOperationException(
                $"Não é possível iniciar diagnóstico da OS no status atual: {Status}");
        }

        Status = StatusOrdemServico.EmDiagnostico;
        DataInicioDiagnostico = DateTime.UtcNow;
    }

    public void EnviarOrcamento()
    {
        if (Status != StatusOrdemServico.EmDiagnostico)
        {
            throw new InvalidOperationException(
                $"Não é possível enviar orçamento da OS no status atual: {Status}");
        }

        Status = StatusOrdemServico.EmAprovacao;
        DataFimDiagnostico = DateTime.UtcNow;
    }

    public void ExecutarOS()
    {
        if (Status != StatusOrdemServico.EmAprovacao)
        {
            throw new InvalidOperationException(
                $"Não é possível executar OS no status atual: {Status}");
        }

        Status = StatusOrdemServico.EmExecucao;
        DataInicioExecucao = DateTime.UtcNow;
    }

    public void Cancelar()
    {
        if (Status != StatusOrdemServico.Recebida &&
            Status != StatusOrdemServico.EmDiagnostico &&
            Status != StatusOrdemServico.EmAprovacao)
        {
            throw new InvalidOperationException(
                $"Não é possível cancelar a OS no status atual: {Status}");
        }

        Status = StatusOrdemServico.Cancelada;
        DataCancelamento = DateTime.UtcNow;
    }

    public void Entregar()
    {
        if (Status != StatusOrdemServico.Finalizada)
        {
            throw new InvalidOperationException(
                $"Não é possível entregar a OS no status atual: {Status}");
        }

        Status = StatusOrdemServico.Entregue;
        DataEntrega = DateTime.UtcNow;
    }

    private bool TodosServicosFinalizados()
    {
        return Servicos.All(s =>
                s.Logs.Any(l => l.AcaoLog == StatusServicoLog.Terminar)
            );
    }

    public void Finalizar()
    {
        if (Status != StatusOrdemServico.EmExecucao)
        {
            throw new InvalidOperationException(
                $"Não é possível finalizar a OS no status atual: {Status}");
        }

        if (PossuiOrcamentoPendente)
        {
            throw new InvalidOperationException(
                "Não é possível finalizar OS com orçamento pendente");
        }

        if (!TodosServicosFinalizados())
        {
            throw new InvalidOperationException(
                "Não é possível finalizar a OS com serviços em execução");
        }

        Status = StatusOrdemServico.Finalizada;
        DataFinalizacao = DateTime.UtcNow;
    }
}