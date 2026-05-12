using Mechanic.Domain.Validacoes;
using System;
using System.Collections.Generic;
using System.Text;

namespace Mechanic.Tests
{
    public class DocumentosValidacoesTests
    {
        [Theory]
        [InlineData("11144477735")]
        [InlineData("111.444.777-35")]
        public void Create_DeveAceitarCpfValido(string cpf)
        {
            var doc = Documentos.Create(cpf);

            Assert.Equal("11144477735", doc.Value);
        }

        [Theory]
        [InlineData("12345678900")]
        [InlineData("11111111111")]
        [InlineData("123")]
        public void Create_DeveLancarExcecao_QuandoCpfInvalido(string cpf)
        {
            Assert.Throws<ArgumentException>(() => Documentos.Create(cpf));
        }

        [Theory]
        [InlineData("")]
        [InlineData(null)]
        [InlineData("   ")]
        public void Create_DeveLancarExcecao_QuandoCpfVazio(string cpf)
        {
            Assert.Throws<ArgumentException>(() => Documentos.Create(cpf));
        }

        [Fact]
        public void Create_DeveRemoverMascara()
        {
            var doc = Documentos.Create("111.444.777-35");

            Assert.Equal("11144477735", doc.Value);
        }

        [Theory]
        [InlineData("11222333000181")]
        [InlineData("11.222.333/0001-81")]
        public void Create_DeveAceitarCnpjValido(string cnpj)
        {
            var doc = Documentos.Create(cnpj);

            Assert.Equal("11222333000181", doc.Value);
        }

        [Theory]
        [InlineData("11222333000100")]
        [InlineData("00000000000000")]
        public void Create_DeveRejeitarCnpjInvalido(string cnpj)
        {
            Assert.Throws<ArgumentException>(() => Documentos.Create(cnpj));
        }


    }
}
