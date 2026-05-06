using Mechanic.Data;
using Mechanic.Domain.Entities;
using Mechanic.Domain.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace Mechanic.Infrastructure.Repositories
{
    public class VeiculoRepository : IVeiculoRepository
    {
        private readonly AppDbContext _context;

        public VeiculoRepository(AppDbContext context)
        {
            _context = context;
        }

        public async Task<List<Veiculo>> ListarTodosAsync(string? placa)
        {
            var query = _context.Veiculos.AsQueryable();

            if (!string.IsNullOrWhiteSpace(placa))
            {
                query = query.Where(v => v.Placa.Contains(placa));
            }

            return await query.ToListAsync();
        }

        public async Task<Veiculo?> ListarPorIdAsync(int id)
            => await _context.Veiculos.FindAsync(id);

        public async Task AdicionarAsync(Veiculo veiculo)
        {
            _context.Veiculos.Add(veiculo);
            await _context.SaveChangesAsync();
        }

        public async Task AtualizarAsync(Veiculo veiculo)
        {
            _context.Veiculos.Update(veiculo);
            await _context.SaveChangesAsync();
        }

        public async Task ExcluirAsync(int id)
        {
            var veiculo = await _context.Veiculos.FindAsync(id);
            if (veiculo is null) return;

            _context.Veiculos.Remove(veiculo);
            await _context.SaveChangesAsync();
        }

        public async Task<bool> ExistePlacaAsync(string placa)
        {
            return await _context.Veiculos
                .AnyAsync(v => v.Placa == placa);
        }

        public async Task<bool> ClienteExisteAsync(int clienteId)
        {
            return await _context.Clientes.AnyAsync(c => c.Id == clienteId);
        }
    }
}