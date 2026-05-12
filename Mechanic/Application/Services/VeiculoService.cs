using Mechanic.Application.DTOs.Veiculo.Params;
using Mechanic.Application.DTOs.Veiculo.Request;
using Mechanic.Application.DTOs.Veiculo.Response;
using Mechanic.Domain.Entities;
using Mechanic.Domain.Interfaces;
using Mechanic.Domain.Validacoes;

namespace Mechanic.Application.Services
{
    public class VeiculoService
    {
        private readonly IVeiculoRepository _repository;

        public VeiculoService(IVeiculoRepository repository)
        {
            _repository = repository;
        }

        public async Task<List<VeiculoResponseDto>> ListarTodos(VeiculoParamsDto? dto)
        {
            var veiculos = await _repository.ListarTodosAsync(dto?.Placa);

            return veiculos.Select(v => new VeiculoResponseDto
            {
                Id = v.Id,
                ClienteId = v.ClienteId,
                Placa = v.Placa,
                Marca = v.Marca,
                Modelo = v.Modelo,
                Ano = v.Ano,
                Ativo = v.Ativo
            }).ToList();
        }

        public async Task<VeiculoResponseDto?> ListarPorId(int id)
        {
            var v = await _repository.ListarPorIdAsync(id);
            if (v is null) return null;

            return new VeiculoResponseDto
            {
                Id = v.Id,
                ClienteId = v.ClienteId,
                Placa = v.Placa,
                Marca = v.Marca,
                Modelo = v.Modelo,
                Ano = v.Ano,
                Ativo = v.Ativo
            };
        }

        public async Task<int> Criar(AdicionarVeiculoRequestDto dto)
        {
            if (!Placas.EhValida(dto.Placa))
                throw new Exception("Placa inválida");

            var existePlaca = await _repository.ExistePlacaAsync(dto.Placa);

            if (existePlaca)
                throw new Exception("Placa já cadastrada");

            var clienteExiste = await _repository.ClienteExisteAsync(dto.ClienteId);

            if (!clienteExiste)
                throw new Exception("Cliente não encontrado");

            var veiculo = new Veiculo
            {
                ClienteId = dto.ClienteId,
                Placa = dto.Placa,
                Marca = dto.Marca,
                Modelo = dto.Modelo,
                Ano = dto.Ano,
            };

            await _repository.AdicionarAsync(veiculo);

            return veiculo.Id;
        }

        public async Task<bool> Atualizar(int id, AtualizarVeiculoRequestDto dto)
        {
            var veiculo = await _repository.ListarPorIdAsync(id);
            if (veiculo is null) return false;

            if (dto.ClienteId > 0)
                veiculo.ClienteId = dto.ClienteId;

            if (!string.IsNullOrWhiteSpace(dto.Placa))
            {
                if (!Placas.EhValida(dto.Placa))
                    throw new Exception("Placa inválida");

                var existe = await _repository.ExistePlacaAsync(dto.Placa);

                if (existe && dto.Placa != veiculo.Placa)
                    throw new Exception("Placa já cadastrada");

                veiculo.Placa = dto.Placa;
            }

            if (!string.IsNullOrWhiteSpace(dto.Marca))
                veiculo.Marca = dto.Marca;

            if (dto.Modelo is not null)
                veiculo.Modelo = dto.Modelo;

            if (dto.Ano is not null)
                veiculo.Ano = (int)dto.Ano;

            await _repository.AtualizarAsync(veiculo);

            return true;
        }

        public async Task<bool> Deletar(int id)
        {
            var veiculo = await _repository.ListarPorIdAsync(id);
            if (veiculo is null) return false;

            veiculo.Ativo = false;

            await _repository.AtualizarAsync(veiculo);

            return true;
        }
    }
}
