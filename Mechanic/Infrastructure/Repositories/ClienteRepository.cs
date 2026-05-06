using Mechanic.Domain.Entities;
using Mechanic.Domain.Interfaces;
using Mechanic.Data;
using Microsoft.EntityFrameworkCore;

namespace Mechanic.Infrastructure.Repositories
{
    public class ClienteRepository : IClienteRepository
    {
        private readonly AppDbContext _context;

        public ClienteRepository(AppDbContext context)
        {
            _context = context;
        }

        public async Task<List<Cliente>> ListarTodosAsync(string? cpfCnpj)
        {
            var query = _context.Clientes.AsQueryable();

            if (!string.IsNullOrWhiteSpace(cpfCnpj))
            {
                var normalized = new string(cpfCnpj.Where(char.IsDigit).ToArray());

                query = query.Where(c => c.CpfCnpj.Value.Contains(normalized));
            }

            return await query.ToListAsync();
        }

        public async Task<Cliente?> ListarPorIdAsync(int id)
            => await _context.Clientes.FindAsync(id);

        public async Task AdicionarAsync(Cliente cliente)
        {
            _context.Clientes.Add(cliente);
            await _context.SaveChangesAsync();
        }

        public async Task AtualizarAsync(Cliente cliente)
        {
            _context.Clientes.Update(cliente);
            await _context.SaveChangesAsync();
        }

        public async Task ExcluirAsync(int id)
        {
            var cliente = await _context.Clientes.FindAsync(id);
            if (cliente is null) return;

            _context.Clientes.Remove(cliente);
            await _context.SaveChangesAsync();
        }

        public async Task<bool> ExisteCpfCnpjAsync(string cpfCnpj)
        {
            var normalized = new string(cpfCnpj.Where(char.IsDigit).ToArray());

            return await _context.Clientes
                .AnyAsync(c => c.CpfCnpj.Value == normalized);
        }
    }
}