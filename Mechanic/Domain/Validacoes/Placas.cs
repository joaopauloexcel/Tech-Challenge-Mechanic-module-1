using System.Text.RegularExpressions;

namespace Mechanic.Domain.Validacoes
{
    public static class Placas
    {
        private static readonly Regex PlacaRegex =
       new(
           @"^[A-Z]{3}[0-9][A-Z0-9][0-9]{2}$",
           RegexOptions.Compiled,
           TimeSpan.FromMilliseconds(100)
       );

        public static bool EhValida(string placa)
        {
            if (string.IsNullOrWhiteSpace(placa))
                return false;

            var normalizada = placa
                .Replace("-", "")
                .Replace(" ", "")
                .ToUpperInvariant();

            return PlacaRegex.IsMatch(normalizada);
        }
    }
}
