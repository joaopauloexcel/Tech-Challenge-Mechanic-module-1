using Mechanic.Data;
using Mechanic.Domain.Entities;
using Mechanic.Domain.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace Mechanic.Infrastructure.Repositories
{
    public class ProdutoRepository : IProdutoRepository
    {
        private readonly AppDbContext _context;

        public ProdutoRepository(AppDbContext context)
        {
            _context = context;
        }

        public async Task<List<Produto>> ListarTodosAsync(string? sku)
        {
            var query = _context.Produtos.AsQueryable();

            if (!string.IsNullOrWhiteSpace(sku))
            {
                query = query.Where(v => v.Sku.Contains(sku));
            }

            return await query.ToListAsync();
        }

        public async Task<Produto?> ListarPorIdAsync(int id)
            => await _context.Produtos.FindAsync(id);

        public async Task AdicionarAsync(Produto veiculo)
        {
            _context.Produtos.Add(veiculo);
            await _context.SaveChangesAsync();
        }

        public async Task AtualizarAsync(Produto produto)
        {
            _context.Produtos.Update(produto);
            await _context.SaveChangesAsync();
        }

        public async Task ExcluirAsync(int id)
        {
            var produto = await _context.Produtos.FindAsync(id);
            if (produto is null) return;

            _context.Produtos.Remove(produto);
            await _context.SaveChangesAsync();
        }

        public async Task<bool> ExisteSkuAsync(string sku)
        {
            return await _context.Produtos
                .AnyAsync(v => v.Sku == sku);
        }

    }
}