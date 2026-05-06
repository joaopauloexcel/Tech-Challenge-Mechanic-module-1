using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Mechanic.Domain.Entities
{
    public class Servico
    {
        public int Id { get; set; }
        [Required]
        public string Sku { get; set; } = string.Empty;

        [Required, MaxLength(80, ErrorMessage = "A Descricao deve ter no máximo 80 caracteres.")]
        public string Descricao { get; set; } = string.Empty;

        [Column(TypeName = "decimal(18,2)")]
        public decimal Preco { get; set; }

        public bool Ativo { get; set; } = true;

        public DateTime DataCriacao { get; set; } = DateTime.Now;
    }
}
