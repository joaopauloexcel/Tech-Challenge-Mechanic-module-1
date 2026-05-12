using System.ComponentModel.DataAnnotations;
using Mechanic.Domain.Validacoes;

namespace Mechanic.Domain.Entities
{
    public class Cliente
    {
        public int Id { get; set; }

        [Required, MaxLength(50, ErrorMessage = "O nome deve ter no máximo 50 caracteres.")]
        public string Nome { get; set; } = string.Empty;

        [Required, MaxLength(18, ErrorMessage = "O CPF/CNPJ deve ter no máximo 18 caracteres.")]
        public Documentos CpfCnpj { get; private set; } = null!;

        [Required, MaxLength(15, ErrorMessage = "O telefone deve ter no máximo 15 caracteres.")]
        public string Telefone1 { get; set; } = string.Empty;

        [MaxLength(15, ErrorMessage = "O telefone deve ter no máximo 15 caracteres.")]
        public string Telefone2 { get; set; } = string.Empty;

        [MaxLength(50, ErrorMessage = "O Email deve ter no máximo 50 caracteres.")]
        public string Email { get; set; } = string.Empty;

        public bool Ativo { get; set; } = true;

        public DateTime DataCriacao { get; set; } = DateTime.Now;


        public void SetDocument(string cpfCnpj)
        {
            CpfCnpj = Documentos.Create(cpfCnpj);
        }
    }
}