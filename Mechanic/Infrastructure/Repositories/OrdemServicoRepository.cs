using Mechanic.Application.DTOs.OrdemServico.Params;
using Mechanic.Application.DTOs.OrdemServico.Response;
using Mechanic.Application.Enums;
using Mechanic.Data;
using Mechanic.Domain.Entities;
using Mechanic.Domain.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace Mechanic.Infrastructure.Repositories
{
    public class OrdemServicoRepository : IOrdemServicoRepository
    {
        private readonly AppDbContext _context;

        public OrdemServicoRepository(AppDbContext context)
        {
            _context = context;
        }

        public async Task AdicionarAsync(OrdemServico os)
        {
            await _context.OrdensServico.AddAsync(os);
        }

        public async Task<List<OrdemServico>> ListarAsync(ListarOrdemServicoParamsDto dto)
        {
            var query = _context.OrdensServico
                .Include(x => x.Cliente)
                .Include(x => x.Veiculo)
                .Include(x => x.Orcamentos)
                    .ThenInclude(o => o.Produtos)
                        .ThenInclude(s => s.Produto)
                .Include(x => x.Orcamentos)
                    .ThenInclude(o => o.Servicos)
                        .ThenInclude(s => s.Servico)
                .Include(x => x.Servicos)
                    .ThenInclude(s => s.Logs)
                .AsQueryable();

            if (dto.OsId.HasValue)
                query = query.Where(x => x.Id == dto.OsId.Value);

            if (dto.Status.HasValue)
                query = query.Where(x => x.Status == dto.Status.Value);

            if (!string.IsNullOrWhiteSpace(dto.CpfCnpj))
                query = query.Where(x => x.Cliente.CpfCnpj.Value == dto.CpfCnpj);

            if (!string.IsNullOrWhiteSpace(dto.Placa))
                query = query.Where(x => x.Veiculo.Placa == dto.Placa);

            return await query.ToListAsync();
        }

        public async Task<OrdemServico?> ObterPorIdAsync(int id)
        {
            return await _context.OrdensServico
                .Include(x => x.Cliente)
                .Include(x => x.Veiculo)
                .Include(x => x.Orcamentos)
                    .ThenInclude(o => o.Produtos)
                        .ThenInclude(s => s.Produto)
                .Include(x => x.Orcamentos)
                    .ThenInclude(o => o.Servicos)
                        .ThenInclude(s => s.Servico)
                .Include(x => x.Servicos)
                    .ThenInclude(s => s.Logs)
                .FirstOrDefaultAsync(x => x.Id == id);
        }
        public async Task<OrdemServico?> ObterPorComHashAsync(string hashExterno)
        {
            return await _context.OrdensServico
                .Include(x => x.Cliente)
                .Include(x => x.Veiculo)

                .Include(x => x.Orcamentos)
                    .ThenInclude(o => o.Produtos)
                        .ThenInclude(s => s.Produto)
                .Include(x => x.Orcamentos)
                    .ThenInclude(o => o.Servicos)
                        .ThenInclude(s => s.Servico)
                .Include(x => x.Servicos)
                    .ThenInclude(s => s.Logs)
                .FirstOrDefaultAsync(x => x.PublicHash == hashExterno);
        }

        public Task AtualizarAsync(OrdemServico os)
        {
            _context.OrdensServico.Update(os);
            return Task.CompletedTask;
        }

        public async Task SalvarAsync()
        {
            await _context.SaveChangesAsync();
        }

        public async Task<OrdemServico?> ObterComServicosAsync(int osId)
        {
            return await _context.OrdensServico
            .AsNoTracking()
            .Include(x => x.Servicos)
                .ThenInclude(s => s.Logs)
            .FirstOrDefaultAsync(x => x.Id == osId);
        }

        public async Task<List<OrdemServico>> ObterFinalizadasAsync()
        {
            return await _context.OrdensServico
                .Where(x => x.Status == StatusOrdemServico.Entregue
                         || x.Status == StatusOrdemServico.Finalizada)
                .ToListAsync();
        }

    }
}
