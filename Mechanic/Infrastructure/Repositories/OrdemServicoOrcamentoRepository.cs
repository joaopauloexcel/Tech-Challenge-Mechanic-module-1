using Mechanic.Data;
using Mechanic.Domain.Entities;
using Mechanic.Domain.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace Mechanic.Infrastructure.Repositories
{
    public class OrdemServicoOrcamentoRepository : IOrdemServicoOrcamentoRepository
    {
        private readonly AppDbContext _context;

        public OrdemServicoOrcamentoRepository(AppDbContext context)
        {
            _context = context;
        }

        public async Task AdicionarAsync(OrdemServicoOrcamento entity)
        {
            await _context.OrdemServicoOrcamentos.AddAsync(entity);
        }

        public async Task<OrdemServicoOrcamento?> ObterPorIdAsync(int id)
        {
            return await _context.OrdemServicoOrcamentos
                .Include(x => x.OrdemServico)
                .Include(x => x.Produtos)
                .Include(x => x.Servicos)
                    .ThenInclude(s => s.Logs)
                .FirstOrDefaultAsync(x => x.Id == id);
        }

        public Task AtualizarAsync(OrdemServicoOrcamento entity)
        {
            _context.OrdemServicoOrcamentos.Update(entity);
            return Task.CompletedTask;
        }

    }
}