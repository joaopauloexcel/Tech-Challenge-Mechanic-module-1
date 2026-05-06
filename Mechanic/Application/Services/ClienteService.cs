using Mechanic.Application.DTOs.Cliente;
using Mechanic.Domain.Entities;
using Mechanic.Domain.Interfaces;

namespace Mechanic.Application.Services
{
    public class ClienteService
    {
        private readonly IClienteRepository _repository;

        public ClienteService(IClienteRepository repository)
        {
            _repository = repository;
        }

        public async Task<List<ClienteDto>> ListarTodos(string? cpfCnpj)
        {
            var clientes = await _repository.ListarTodosAsync(cpfCnpj);

            return clientes.Select(c => new ClienteDto
            {
                Id = c.Id,
                Nome = c.Nome,
                CpfCnpj = c.CpfCnpj.Value,
                Telefone1 = c.Telefone1,
                Telefone2 = c.Telefone2,
                Email = c.Email,
                Ativo = c.Ativo
            }).ToList();
        }

        public async Task<ClienteDto?> ListarPorId(int id)
        {
            var c = await _repository.ListarPorIdAsync(id);
            if (c is null) return null;

            return new ClienteDto
            {
                Id = c.Id,
                Nome = c.Nome,
                CpfCnpj = c.CpfCnpj.Value,
                Telefone1 = c.Telefone1,
                Telefone2 = c.Telefone2,
                Email = c.Email,
                Ativo = c.Ativo
            };
        }

        public async Task<int> Criar(AdicionarClienteDto dto)
        {

            var existe = await _repository.ExisteCpfCnpjAsync(dto.CpfCnpj);

            if (existe)
                throw new Exception("CPF/CNPJ já cadastrado");


            var cliente = new Cliente
            {
                Nome = dto.Nome,
                Telefone1 = dto.Telefone1,
                Telefone2 = dto.Telefone2 ?? string.Empty,
                Email = dto.Email ?? string.Empty,
                Ativo = true
            };

            cliente.SetDocument(dto.CpfCnpj);

            await _repository.AdicionarAsync(cliente);

            return cliente.Id;
        }

        public async Task<bool> Atualizar(int id, AtualizarServicoDto dto)
        {
            var cliente = await _repository.ListarPorIdAsync(id);
            if (cliente is null) return false;

            cliente.Nome = dto.Nome;

            if (!string.IsNullOrWhiteSpace(dto.Telefone1))
                cliente.Telefone1 = dto.Telefone1;

            if (dto.Telefone2 is not null)
                cliente.Telefone2 = dto.Telefone2;

            if (dto.Email is not null)
                cliente.Email = dto.Email;

            if (!string.IsNullOrWhiteSpace(dto.CpfCnpj))
                cliente.SetDocument(dto.CpfCnpj);

            await _repository.AtualizarAsync(cliente);

            return true;
        }

        public async Task<bool> Deletar(int id)
        {
            var cliente = await _repository.ListarPorIdAsync(id);
            if (cliente is null) return false;

            cliente.Ativo = false;

            await _repository.AtualizarAsync(cliente);

            return true;
        }
    }
}