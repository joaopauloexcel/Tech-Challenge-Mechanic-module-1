using System.ComponentModel.DataAnnotations;

namespace Mechanic.Domain.Entities
{
    public class Veiculo
    {
        public int Id { get; set; }

        [Required]
        public int ClienteId { get; set; }

        public Cliente Cliente { get; set; } = null!;

        [Required, MaxLength(8, ErrorMessage = "A Placa deve ter no máximo 8 caracteres.")]
        public string Placa { get; set; } = string.Empty;

        [Required, MaxLength(50, ErrorMessage = "A Marca deve ter no máximo 50 caracteres.")]
        public string Marca { get; set; } = string.Empty;

        [MaxLength(50, ErrorMessage = "O Modelo deve ter no máximo 50 caracteres.")]
        public string Modelo { get; set; } = string.Empty;

        [MaxLength(4, ErrorMessage = "O Ano deve ter no máximo 4 caracteres.")]
        public int Ano { get; set; }

        public bool Ativo { get; set; } = true;

        public DateTime DataCriacao { get; set; } = DateTime.Now;
    }
}
