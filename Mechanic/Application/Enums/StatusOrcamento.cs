using System.ComponentModel;

namespace Mechanic.Application.Enums
{
    public enum StatusOrcamento
    {
        [Description("Pendente")]
        Pendente = 1,

        [Description("Aprovado")]
        Aprovado,

        [Description("Reprovado")]
        Reprovado
    }
}