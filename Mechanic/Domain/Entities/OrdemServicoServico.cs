using Mechanic.Domain.Entities;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Table("OrdemServicoServicos")]
public class OrdemServicoServico
{
    [Key]
    public int Id { get; set; }

    [Required]
    public int OSId { get; set; }
    [ForeignKey("OSId")]
    public OrdemServico OrdemServico { get; set; } = null!;

    public int? OSOrcamentoId { get; set; }
    [ForeignKey("OSOrcamentoId")]
    public OrdemServicoOrcamento? Orcamento { get; set; }

    [Required]
    public int ServicoId { get; set; }

    [ForeignKey("ServicoId")]
    public Servico Servico { get; set; } = null!;

    [Column(TypeName = "decimal(18,2)")]
    public decimal PrecoPraticado { get; set; }

    public ICollection<OrdemServicoServicoLog> Logs { get; set; } = new List<OrdemServicoServicoLog>();
}