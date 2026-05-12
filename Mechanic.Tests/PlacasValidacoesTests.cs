using Mechanic.Domain.Validacoes;

namespace Mechanic.Tests
{
    public class PlacasValidacoesTests
    {
        [Theory]
        [InlineData("ABC1234")]
        [InlineData("ABC1D23")]
        [InlineData("abc1234")] 
        [InlineData("abc-1234")]
        [InlineData("ABC 1234")]
        public void EhValida_DeveRetornarTrue_ParaPlacasValidas(string placa)
        {
            var result = Placas.EhValida(placa);

            Assert.True(result);
        }

        [Theory]
        [InlineData("AB12345")]
        [InlineData("ABCDE12")]
        [InlineData("ABC12")] 
        [InlineData("ABC12345")]
        [InlineData("1234ABC")]
        public void EhValida_DeveRetornarFalse_ParaPlacasInvalidas(string placa)
        {
            var result = Placas.EhValida(placa);

            Assert.False(result);
        }

        [Theory]
        [InlineData("")]
        [InlineData("   ")]        
        public void EhValida_DeveRetornarFalse_ParaValoresNulosOuVazios(string placa)
        {
            var result = Placas.EhValida(placa);

            Assert.False(result);
        }

        [Fact]
        public void EhValida_DeveNormalizarEntrada()
        {
            var result = Placas.EhValida("abc-1d23");

            Assert.True(result);
        }
    }
}
