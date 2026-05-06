using System.ComponentModel;

namespace Mechanic.Application.Enums
{
    public enum StatusOrdemServico
    {
        [Description("Recebida")]
        Recebida = 1,

        [Description("Em diagnóstico")]
        EmDiagnostico,

        [Description("Em aprovação")]
        EmAprovacao,

        [Description("Cancelada")]
        Cancelada,

        [Description("Em execução")]
        EmExecucao,

        [Description("Finalizada")]
        Finalizada,

        [Description("Entregue")]
        Entregue
    }
}