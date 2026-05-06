using System.ComponentModel;

namespace Mechanic.Application.Enums
{
    public enum StatusItemProduto
    {
        [Description("Reservado")]
        Reservado = 1,

        [Description("Confirmado")]
        Confirmado,

        [Description("Cancelado")]
        Cancelado
    }
}