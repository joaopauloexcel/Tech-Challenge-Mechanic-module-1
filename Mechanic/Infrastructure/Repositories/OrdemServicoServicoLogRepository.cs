using Mechanic.Data;
using Mechanic.Domain.Interfaces;
using Microsoft.EntityFrameworkCore;
using Mechanic.Domain.Entities;

namespace Mechanic.Infrastructure.Repositories
{
    public class OrdemServicoServicoLogRepository : IOrdemServicoServicoLogRepository
    {
        private readonly AppDbContext _context;

        public OrdemServicoServicoLogRepository(AppDbContext context)
        {
            _context = context;
        }

        public async Task<List<OrdemServicoServicoLog>> ObterLogsServicosAsync()
        {
            return await _context.OrdemServicoServicoLogs
                .Include(x => x.OrdemServicoServico)
                    .ThenInclude(s => s.Servico)
                .ToListAsync();
        }

        public async Task AdicionarAsync(OrdemServicoServicoLog log)
        {
            await _context.OrdemServicoServicoLogs.AddAsync(log);
        }

    }
}