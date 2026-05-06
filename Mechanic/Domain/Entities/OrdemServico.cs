using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Mechanic.Application.Enums;

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
    public StatusOrdemServico Status { get; set; }

    [Required]
    [MaxLength(1000)]
    public string Descricao { get; set; } = string.Empty;

    [Required]
    public int ClienteId { get; set; }

    public Cliente Cliente { get; set; } = null!;

    [Required]
    public int VeiculoId { get; set; }

    public Veiculo Veiculo { get; set; } = null!;

    public DateTime DataCriacao { get; set; } = DateTime.UtcNow;

    public bool PossuiOrcamentoPendente { get; set; } = false;

    public bool PossuiOrcamentoAprovado { get; set; } = false;


    public string PublicHash { get; set; } = string.Empty;

    public DateTime? DataInicioDiagnostico { get; set; }

    public DateTime? DataFimDiagnostico { get; set; }

    public DateTime? DataAprovacao { get; set; }

    public DateTime? DataInicioExecucao { get; set; }

    public DateTime? DataFinalizacao { get; set; }

    public DateTime? DataEntrega { get; set; }

    public DateTime? DataCancelamento { get; set; }

    public ICollection<OrdemServicoOrcamento> Orcamentos { get; set; } = new List<OrdemServicoOrcamento>();

    public ICollection<OrdemServicoProduto> Produtos { get; set; } = new List<OrdemServicoProduto>();

    public ICollection<OrdemServicoServico> Servicos { get; set; } = new List<OrdemServicoServico>();

    public ICollection<OrdemServicoServicoLog> Logs { get; set; } = new List<OrdemServicoServicoLog>();
}