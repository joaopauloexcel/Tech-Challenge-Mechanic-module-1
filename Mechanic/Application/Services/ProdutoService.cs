using Mechanic.Application.DTOs.Produto;
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

        public async Task<List<ProdutoDto>> ListarTodos(string? sku)
        {
            var produtos = await _repository.ListarTodosAsync(sku);

            return produtos.Select(p => new ProdutoDto
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

        public async Task<ProdutoDto?> ListarPorId(int id)
        {
            var p = await _repository.ListarPorIdAsync(id);
            if (p is null) return null;

            return new ProdutoDto
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

        public async Task<int> Criar(AdicionarProdutoDto dto)
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
                QuantidadeReservada = dto.QuantidadeReservada,
                QuantidadeMinima = dto.QuantidadeMinima,
                Ativo = true
            };

            await _repository.AdicionarAsync(produto);

            return produto.Id;
        }

        public async Task<bool> Atualizar(int id, AtualizarProdutoDto dto)
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

            produto.Descricao = dto.Descricao;
            produto.PrecoCusto = dto.PrecoCusto;
            produto.PrecoVenda = dto.PrecoVenda;
            produto.QuantidadeMinima = dto.QuantidadeMinima;

            await _repository.AtualizarAsync(produto);

            return true;
        }

        public async Task<bool> AtualizarEstoque(int id, AtualizarEstoqueProdutoDto dto)
        {
            var produto = await _repository.ListarPorIdAsync(id);
            if (produto is null) return false;

            produto.QuantidadeTotal += dto.quantidadeAdicionada;

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