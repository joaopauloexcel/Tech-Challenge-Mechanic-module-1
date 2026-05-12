using System.Text.RegularExpressions;

namespace Mechanic.Domain.Validacoes
{
    public class Documentos
    {
        public string Value { get; private set; } = default!;

        private Documentos() { } 

        private Documentos(string value)
        {
            Value = value;
        }

        public static Documentos Create(string value)
        {
            value = RemoveMask(value);

            if (IsCpf(value) && ValidateCpf(value))
                return new Documentos(value);

            if (IsCnpj(value) && ValidateCnpj(value))
                return new Documentos(value);

            throw new ArgumentException("Documento inválido");
        }

        public override string ToString() => Value;

        private static string RemoveMask(string value)
        {
            if (string.IsNullOrWhiteSpace(value))
                return string.Empty;

            return Regex.Replace(
                value,
                "[^0-9]",
                "",
                RegexOptions.None,
                TimeSpan.FromMilliseconds(100)
            );
        }

        private static bool IsCpf(string value)
            => value.Length == 11;

        private static bool IsCnpj(string value)
            => value.Length == 14;

        private static bool ValidateCpf(string cpf)
        {
            if (cpf.All(c => c == cpf[0])) return false;

            int[] mult1 = { 10, 9, 8, 7, 6, 5, 4, 3, 2 };
            int[] mult2 = { 11, 10, 9, 8, 7, 6, 5, 4, 3, 2 };

            string tempCpf = cpf[..9];
            int sum = 0;

            for (int i = 0; i < 9; i++)
                sum += (tempCpf[i] - '0') * mult1[i];

            int rest = sum % 11;
            rest = rest < 2 ? 0 : 11 - rest;

            string digit = rest.ToString();
            tempCpf += digit;

            sum = 0;

            for (int i = 0; i < 10; i++)
                sum += (tempCpf[i] - '0') * mult2[i];

            rest = sum % 11;
            rest = rest < 2 ? 0 : 11 - rest;

            digit += rest.ToString();

            return cpf.EndsWith(digit);
        }

        private static bool ValidateCnpj(string cnpj)
        {
            if (cnpj.All(c => c == cnpj[0])) return false;

            int[] mult1 = { 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2 };
            int[] mult2 = { 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2 };

            string temp = cnpj[..12];
            int sum = 0;

            for (int i = 0; i < 12; i++)
                sum += (temp[i] - '0') * mult1[i];

            int rest = sum % 11;
            rest = rest < 2 ? 0 : 11 - rest;

            string digit = rest.ToString();
            temp += digit;

            sum = 0;

            for (int i = 0; i < 13; i++)
                sum += (temp[i] - '0') * mult2[i];

            rest = sum % 11;
            rest = rest < 2 ? 0 : 11 - rest;

            digit += rest.ToString();

            return cnpj.EndsWith(digit);
        }
    }
}