using Mechanic.Application.DTOs.Servico.Params;
using Mechanic.Application.DTOs.Servico.Request;
using Mechanic.Application.DTOs.Servico.Response;
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

        public async Task<List<ServicoResponseDto>> ListarTodos(ServicoParamsDto? dto)
        {
            var servicos = await _repository.ListarTodosAsync(dto?.Sku);

            return servicos.Select(s => new ServicoResponseDto
            {
                Id = s.Id,
                Sku = s.Sku,
                Descricao = s.Descricao,
                Preco = s.Preco,
                Ativo = s.Ativo
            }).ToList();
        }

        public async Task<ServicoResponseDto?> ListarPorId(int id)
        {
            var s = await _repository.ListarPorIdAsync(id);
            if (s is null) return null;

            return new ServicoResponseDto
            {
                Id = s.Id,
                Sku = s.Sku,
                Descricao = s.Descricao,
                Preco = s.Preco,
                Ativo = s.Ativo
            };
        }

        public async Task<int> Criar(AdicionarServicoRequestDto dto)
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

        public async Task<bool> Atualizar(int id, AtualizarServicoRequestDto dto)
        {
            var servico = await _repository.ListarPorIdAsync(id);
            if (servico is null) return false;

            if (!string.IsNullOrWhiteSpace(dto.Sku) && dto.Sku != servico.Sku)
            {
                var existeSku = await _repository.ExisteSkuAsync(dto.Sku);
                if (existeSku)
                    throw new Exception("SKU já cadastrado");

                servico.Sku = dto.Sku;
            }

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