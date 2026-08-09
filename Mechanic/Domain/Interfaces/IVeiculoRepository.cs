using Mechanic.Domain.Entities;

namespace Mechanic.Domain.Interfaces
{
    public interface IVeiculoRepository
    {
        Task<List<Veiculo>> ListarTodosAsync(string? placa);
        Task<Veiculo?> ListarPorIdAsync(int id);
        Task AdicionarAsync(Veiculo veiculo);
        Task AtualizarAsync(Veiculo veiculo);
        Task ExcluirAsync(int id);
        Task<bool> ExistePlacaAsync(string placa);
        Task<bool> ClienteExisteAsync(int clienteId);
        Task<bool> VeiculoExisteAsync(int veiculoId);
    }
}