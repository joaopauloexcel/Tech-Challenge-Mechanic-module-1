using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Mechanic.Application.Enums;

namespace Mechanic.Domain.Entities;

[Table("OrdemServicoProdutos")]
public class OrdemServicoProduto
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
    public int ProdutoId { get; set; }

    [ForeignKey("ProdutoId")]
    public Produto Produto { get; set; } = null!;

    public int Quantidade { get; set; }

    [Column(TypeName = "decimal(18,2)")]
    public decimal PrecoPraticado { get; set; }
    public StatusItemProduto StatusItem { get; set; }
}