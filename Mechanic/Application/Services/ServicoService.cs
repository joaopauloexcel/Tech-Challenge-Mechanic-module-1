using Humanizer;
using Mechanic.Application.DTOs.Servico;
using Mechanic.Domain.Entities;
using Mechanic.Domain.Interfaces;

namespace Mechanic.Application.Services
{
    public class ServicoService
    {
        private readonly IServicoRepository _repository;

        public ServicoService(IServicoRepository repository)
        {
            _repository = repository;
        }

        public async Task<List<ProdutoDto>> ListarTodos(string? sku)
        {
            var servicos = await _repository.ListarTodosAsync(sku);

            return servicos.Select(s => new ProdutoDto
            {
                Id = s.Id,
                Sku = s.Sku,
                Descricao = s.Descricao,
                Preco = s.Preco,
                Ativo = s.Ativo
            }).ToList();
        }

        public async Task<ProdutoDto?> ListarPorId(int id)
        {
            var s = await _repository.ListarPorIdAsync(id);
            if (s is null) return null;

            return new ProdutoDto
            {
                Id = s.Id,
                Sku = s.Sku,
                Descricao = s.Descricao,
                Preco = s.Preco,
                Ativo = s.Ativo
            };
        }

        public async Task<int> Criar(AdicionarServicoDto dto)
        {
            var existeSku = await _repository.ExisteSkuAsync(dto.Sku);

            if (existeSku)
                throw new Exception("Sku já cadastrada");

            var servico = new Servico
            {
                Sku = dto.Sku,
                Descricao = dto.Descricao,
                Preco = dto.Preco
            };

            await _repository.AdicionarAsync(servico);

            return servico.Id;
        }

        public async Task<bool> Atualizar(int id, AtualizarServicoDto dto)
        {
            var servico = await _repository.ListarPorIdAsync(id);
            if (servico is null) return false;

            if (!string.IsNullOrWhiteSpace(dto.Descricao))
                servico.Descricao = dto.Descricao;

            if (dto.Preco is not null)
                servico.Preco = (decimal)dto.Preco;

            await _repository.AtualizarAsync(servico);

            return true;
        }

        public async Task<bool> Deletar(int id)
        {
            var servico = await _repository.ListarPorIdAsync(id);
            if (servico is null) return false;

            servico.Ativo = false;

            await _repository.AtualizarAsync(servico);

            return true;
        }
    }
}