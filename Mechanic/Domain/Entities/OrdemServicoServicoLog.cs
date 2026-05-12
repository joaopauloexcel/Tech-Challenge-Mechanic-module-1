using Mechanic.Application.Enums;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Mechanic.Domain.Entities;

[Table("OrdemServicoServicoLogs")]
public class OrdemServicoServicoLog
{
    [Key]
    public int Id { get; set; }

    [Required]
    public int OSId { get; set; }
    [ForeignKey("OSId")]
    public OrdemServico OrdemServico { get; set; } = null!;

    [Required]
    public int OSServicoId { get; set; }

    [ForeignKey("OSServicoId")]
    public OrdemServicoServico OrdemServicoServico { get; set; } = null!;

    [Required]
    public StatusServicoLog AcaoLog { get; set; }

    [Required]
    public DateTime DataCriacao { get; set; } = DateTime.UtcNow;
}