using Mechanic.Infrastructure.Data.Migrations;
using System.ComponentModel;

namespace Mechanic.Application.Enums
{
    public enum StatusServicoLog
    {
        [Description("Iniciar")]
        Iniciar = 1,

        [Description("Pausar")]
        Pausar,

        [Description("Terminar")]
        Terminar
    }
}