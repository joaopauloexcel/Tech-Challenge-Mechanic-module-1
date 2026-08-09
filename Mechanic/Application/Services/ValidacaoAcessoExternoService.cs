namespace Mechanic.Application.Services
{
    public class ValidacaoAcessoExternoService
    {
        public bool ValidarDocumentoFinal(
        string documento,
        string docFinal)
        {
            docFinal = new string(
                docFinal.Where(char.IsDigit).ToArray()
            );

            if (docFinal.Length != 3)
                return false;

            if (string.IsNullOrEmpty(documento) || documento.Length < 3)
                return false;

            var ultimosDigitos = documento[^3..];

            return SafeEquals(ultimosDigitos, docFinal);
        }

        private bool SafeEquals(string a, string b)
        {
            return string.Equals(
                a,
                b,
                StringComparison.Ordinal
            );
        }
    }
}
