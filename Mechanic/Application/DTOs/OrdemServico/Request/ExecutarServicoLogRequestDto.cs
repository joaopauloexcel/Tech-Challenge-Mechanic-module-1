using Mechanic.Application.Enums;
using System.ComponentModel.DataAnnotations;

namespace Mechanic.Application.DTOs.OrdemServico.Request
{
    /// <summary>
    /// Representa a request para ação do mecânico ao executar serviço.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class ExecutarServicoLogRequestDto
    {
        /// <summary>
        /// Ação de execução do serviço da OS.
        /// </summary>
        [Required(ErrorMessage = "Envio da ação é obrigatóriao.")]
        public StatusServicoLog Acao { get; set; }
    }
}
