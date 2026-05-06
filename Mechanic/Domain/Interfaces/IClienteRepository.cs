using Mechanic.Domain.Entities;

namespace Mechanic.Domain.Interfaces
{
    public interface IClienteRepository
    {
        Task<List<Cliente>> ListarTodosAsync(string? cpfCnpj);
        Task<Cliente?> ListarPorIdAsync(int id);
        Task AdicionarAsync(Cliente cliente);
        Task AtualizarAsync(Cliente cliente);
        Task ExcluirAsync(int id);
        Task<bool> ExisteCpfCnpjAsync(string cpfCnpj);
    }
}