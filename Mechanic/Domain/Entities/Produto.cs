using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Mechanic.Domain.Entities
{
    public class Produto
    {
        public int Id { get; set; }
        [Required]
        public string Sku { get; set; } = string.Empty;

        [Required, MaxLength(80, ErrorMessage = "A Descricao deve ter no máximo 80 caracteres.")]
        public string Descricao { get; set; } = string.Empty;

        [Column(TypeName = "decimal(18,2)")]
        public decimal PrecoCusto { get; set; }

        [Column(TypeName = "decimal(18,2)")]
        public decimal PrecoVenda { get; set; }

        [Required]
        [Range(0, 10000, ErrorMessage = "A quantidade deve estar entre 0 e 10.000.")]
        public int QuantidadeTotal { get; set; }

        [Required]
        [Range(0, 10000, ErrorMessage = "A quantidade deve estar entre 0 e 10.000.")]
        public int QuantidadeReservada { get; set; }

        [Required]
        [Range(0, 10000, ErrorMessage = "A quantidade deve estar entre 0 e 10.000.")]
        public int QuantidadeMinima { get; set; }

        public bool Ativo { get; set; } = true;

        public DateTime DataCriacao { get; set; } = DateTime.Now;
    }
}
