using Mechanic.Application.Enums;
using System.ComponentModel.DataAnnotations;

namespace Mechanic.Application.DTOs.OrdemServico.Request
{
    [ExcludeFromCodeCoverage]
    public class ExecutarServicoLogDto
    {
        [Required(ErrorMessage = "Envio obrigatória.")]
        public StatusServicoLog Acao { get; set; }
    }
}
