using Mechanic.Data;
using Mechanic.Domain.Entities;
using Mechanic.Domain.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace Mechanic.Infrastructure.Repositories
{
    public class ServicoRepository : IServicoRepository
    {
        private readonly AppDbContext _context;

        public ServicoRepository(AppDbContext context)
        {
            _context = context;
        }

        public async Task<List<Servico>> ListarTodosAsync(string? sku)
        {
            var query = _context.Servicos.AsQueryable();

            if (!string.IsNullOrWhiteSpace(sku))
            {
                query = query.Where(v => v.Sku.Contains(sku));
            }

            return await query.ToListAsync();
        }

        public async Task<Servico?> ListarPorIdAsync(int id)
            => await _context.Servicos.FindAsync(id);

        public async Task AdicionarAsync(Servico veiculo)
        {
            _context.Servicos.Add(veiculo);
            await _context.SaveChangesAsync();
        }

        public async Task AtualizarAsync(Servico servico)
        {
            _context.Servicos.Update(servico);
            await _context.SaveChangesAsync();
        }

        public async Task ExcluirAsync(int id)
        {
            var servico = await _context.Servicos.FindAsync(id);
            if (servico is null) return;

            _context.Servicos.Remove(servico);
            await _context.SaveChangesAsync();
        }

        public async Task<bool> ExisteSkuAsync(string sku)
        {
            return await _context.Servicos
                .AnyAsync(v => v.Sku == sku);
        }

    }
}