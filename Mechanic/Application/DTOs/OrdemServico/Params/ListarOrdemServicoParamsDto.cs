using System.Diagnostics.CodeAnalysis;

using Mechanic.Application.Enums;

namespace Mechanic.Application.DTOs.OrdemServico.Params
{
    /// <summary>
    /// Representa os parâmetros para buscar por cliente.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class ListarOrdemServicoParamsDto
    {
        /// <summary>
        /// Identificador da OS para busca
        /// </summary>
        public int? OsId { get; set; }
        /// <summary>
        /// Status da OS para busca
        /// </summary>
        public StatusOrdemServico? Status { get; set; }
        /// <summary>
        /// Cpf ou Cnpj do cliente para busca
        /// </summary>
        public string? CpfCnpj { get; set; }
        /// <summary>
        /// Placa do veículo para busca
        /// </summary>
        public string? Placa { get; set; }

        /// <summary>
        /// Trava para retornar OS finalizada ou entregue
        /// </summary>
        public bool? IncluirFinalizadasEEntregues { get; set; } = false;
    }
}