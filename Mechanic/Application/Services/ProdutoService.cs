using Mechanic.Application.DTOs.Produto.Request;
using Mechanic.Application.DTOs.Produto.Response;
using Mechanic.Application.DTOs.Produto.Params;
using Mechanic.Domain.Entities;
using Mechanic.Domain.Interfaces;

namespace Mechanic.Application.Services
{
    public class ProdutoService
    {
        private readonly IProdutoRepository _repository;

        public ProdutoService(IProdutoRepository repository)
        {
            _repository = repository;
        }

        public async Task<List<ProdutoResponseDto>> ListarTodos(ProdutoParamsDto? dto)
        {
            var produtos = await _repository.ListarTodosAsync(dto?.Sku);

            return produtos.Select(p => new ProdutoResponseDto
            {
                Id = p.Id,
                Sku = p.Sku,
                Descricao = p.Descricao,
                PrecoCusto = p.PrecoCusto,
                PrecoVenda = p.PrecoVenda,
                QuantidadeTotal = p.QuantidadeTotal,
                QuantidadeReservada = p.QuantidadeReservada,
                QuantidadeMinima = p.QuantidadeMinima,
                Ativo = p.Ativo
            }).ToList();
        }

        public async Task<ProdutoResponseDto?> ListarPorId(int id)
        {
            var p = await _repository.ListarPorIdAsync(id);
            if (p is null) return null;

            return new ProdutoResponseDto
            {
                Id = p.Id,
                Sku = p.Sku,
                Descricao = p.Descricao,
                PrecoCusto = p.PrecoCusto,
                PrecoVenda = p.PrecoVenda,
                QuantidadeTotal = p.QuantidadeTotal,
                QuantidadeReservada = p.QuantidadeReservada,
                QuantidadeMinima = p.QuantidadeMinima,
                Ativo = p.Ativo
            };
        }

        public async Task<int> Criar(AdicionarProdutoRequestDto dto)
        {
            var existeSku = await _repository.ExisteSkuAsync(dto.Sku);

            if (existeSku)
                throw new Exception("SKU já cadastrado");

            var produto = new Produto
            {
                Sku = dto.Sku,
                Descricao = dto.Descricao,
                PrecoCusto = dto.PrecoCusto,
                PrecoVenda = dto.PrecoVenda,
                QuantidadeTotal = dto.QuantidadeTotal,
                QuantidadeReservada = 0,
                QuantidadeMinima = dto.QuantidadeMinima,
                Ativo = true
            };

            await _repository.AdicionarAsync(produto);

            return produto.Id;
        }

        public async Task<bool> Atualizar(int id, AtualizarProdutoRequestDto dto)
        {
            var produto = await _repository.ListarPorIdAsync(id);
            if (produto is null) return false;

            if (!string.IsNullOrWhiteSpace(dto.Sku) && dto.Sku != produto.Sku)
            {
                var existeSku = await _repository.ExisteSkuAsync(dto.Sku);
                if (existeSku)
                    throw new Exception("SKU já cadastrado");

                produto.Sku = dto.Sku;
            }

            if (!string.IsNullOrWhiteSpace(dto.Descricao))
                produto.Descricao = dto.Descricao;

            if (dto.PrecoCusto is not null)
                produto.PrecoCusto = (decimal)dto.PrecoCusto;

            if (dto.PrecoVenda is not null)
                produto.PrecoVenda = (decimal)dto.PrecoVenda;

            if (dto.QuantidadeMinima is not null)
                produto.QuantidadeMinima = (int)dto.QuantidadeMinima;

            await _repository.AtualizarAsync(produto);

            return true;
        }

        public async Task<bool> AtualizarEstoque(int id, AtualizarEstoqueProdutoRequestDto dto)
        {
            var produto = await _repository.ListarPorIdAsync(id);
            if (produto is null) return false;

            produto.QuantidadeTotal += dto.QuantidadeAdicionada;

            if (dto.NovoPrecoCusto > 0)
                produto.PrecoCusto = dto.NovoPrecoCusto;

            if (dto.NovoPrecoVenda > 0)
                produto.PrecoVenda = dto.NovoPrecoVenda;

            await _repository.AtualizarAsync(produto);

            return true;
        }

        public async Task<bool> Deletar(int id)
        {
            var produto = await _repository.ListarPorIdAsync(id);
            if (produto is null) return false;

            produto.Ativo = false;

            await _repository.AtualizarAsync(produto);

            return true;
        }
    }
}