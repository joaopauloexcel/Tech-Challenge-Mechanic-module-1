using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Mechanic.Application.Enums;

namespace Mechanic.Domain.Entities;

[Table("OrdemServicoOrcamentos")]
public class OrdemServicoOrcamento
{
    [Key]
    public int Id { get; set; }

    [Required]
    public int OSId { get; set; }

    [ForeignKey("OSId")]
    public OrdemServico OrdemServico { get; set; } = null!;

    [Required]
    [MaxLength(250)]
    public string Descricao { get; set; } = string.Empty;

    [Required]
    public StatusOrcamento StatusOrcamento { get; set; }

    public DateTime? DataAprovacaoOrcamento { get; set; }

    [Required]
    public DateTime DataCriacao { get; set; } = DateTime.UtcNow;

    [MaxLength(1000)]
    public string? ObservacaoMecanico { get; set; }

    public ICollection<OrdemServicoProduto> Produtos { get; set; } = new List<OrdemServicoProduto>();

    public ICollection<OrdemServicoServico> Servicos { get; set; } = new List<OrdemServicoServico>();
}