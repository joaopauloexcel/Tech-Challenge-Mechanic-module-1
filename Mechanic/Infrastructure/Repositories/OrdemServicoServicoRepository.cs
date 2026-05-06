using Mechanic.Domain.Entities;
using Mechanic.Domain.Interfaces;
using Mechanic.Data;

namespace Mechanic.Infrastructure.Repositories
{
    public class OrdemServicoServicoRepository : IOrdemServicoServicoRepository
    {
        private readonly AppDbContext _context;

        public OrdemServicoServicoRepository(AppDbContext context)
        {
            _context = context;
        }

        public async Task AdicionarAsync(OrdemServicoServico entity)
        {
            await _context.OrdemServicoServicos.AddAsync(entity);
        }
    }
}