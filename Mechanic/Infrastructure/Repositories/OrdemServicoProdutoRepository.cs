using Mechanic.Data;
using Mechanic.Domain.Entities;
using Mechanic.Domain.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace Mechanic.Infrastructure.Repositories
{
    public class OrdemServicoProdutoRepository : IOrdemServicoProdutoRepository
    {
        private readonly AppDbContext _context;

        public OrdemServicoProdutoRepository(AppDbContext context)
        {
            _context = context;
        }

        public async Task AdicionarAsync(OrdemServicoProduto entity)
        {
            await _context.OrdemServicoProdutos.AddAsync(entity);
        }

        public async Task<List<OrdemServicoProduto>> ListarPorOrcamentoIdAsync(int orcamentoId)
        {
            return await _context.OrdemServicoProdutos
                .Include(x => x.Produto)
                .Include(x => x.OrdemServico)
                .Include(x => x.Orcamento)
                .Where(x => x.OSOrcamentoId == orcamentoId)
                .ToListAsync();
        }

        public Task AtualizarAsync(OrdemServicoProduto entity)
        {
            _context.OrdemServicoProdutos.Update(entity);
            return Task.CompletedTask;
        }
    }
}
