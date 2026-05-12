using Mechanic.Domain.Entities;
using Mechanic.Infrastructure.Repositories;
using Microsoft.EntityFrameworkCore;

public class VeiculoRepositoryTests : RepositoryTestBase
{
    [Fact]
    public async Task ListarTodos_DeveRetornarTodos()
    {
        using var context = CreateContext();
        var repo = new VeiculoRepository(context);

        var cliente = new Cliente
        {
            Nome = "João",
            Telefone1 = "359999999",
            Telefone2 = "359999998",
            Email = "joao@test.com",
            Ativo = true
        };

        cliente.SetDocument("532.670.606-72");

        context.Clientes.Add(cliente);
        await context.SaveChangesAsync();

        var veiculo1 = new Veiculo
        {
            ClienteId = cliente.Id,
            Placa = "ABC1234",
            Marca = "Fiat",
            Modelo = "Cronos",
            Ano = 2022,
            Ativo = true
        };

        var veiculo2 = new Veiculo
        {
            ClienteId = cliente.Id,
            Placa = "XYZ9999",
            Marca = "Fiat",
            Modelo = "Cronos",
            Ano = 2022,
            Ativo = true
        };

        context.Veiculos.AddRange(
            veiculo1,
            veiculo2
        );

        await context.SaveChangesAsync();

        var result = await repo.ListarTodosAsync(null);

        Assert.Equal(2, result.Count);
    }

    [Fact]
    public async Task ListarTodos_DeveFiltrarPorPlaca()
    {
        using var context = CreateContext();
        var repo = new VeiculoRepository(context);

        var cliente = new Cliente
        {
            Nome = "João",
            Telefone1 = "359999999",
            Telefone2 = "359999998",
            Email = "joao@test.com",
            Ativo = true
        };

        cliente.SetDocument("532.670.606-72");

        context.Clientes.Add(cliente);
        await context.SaveChangesAsync();

        var veiculo1 = new Veiculo
        {
            ClienteId = cliente.Id,
            Placa = "ABC1234",
            Marca = "Fiat",
            Modelo = "Cronos",
            Ano = 2022,
            Ativo = true
        };

        var veiculo2 = new Veiculo
        {
            ClienteId = cliente.Id,
            Placa = "XYZ9999",
            Marca = "Fiat",
            Modelo = "Cronos",
            Ano = 2022,
            Ativo = true
        };

        context.Veiculos.AddRange(
            veiculo1,
            veiculo2
        );

        await context.SaveChangesAsync();

        var result = await repo.ListarTodosAsync("ABC");

        Assert.Single(result);
        Assert.Equal("ABC1234", result[0].Placa);
    }

    [Fact]
    public async Task AdicionarAsync_DevePersistirVeiculo()
    {
        using var context = CreateContext();
        var repo = new VeiculoRepository(context);

        var cliente = new Cliente
        {
            Nome = "João",
            Telefone1 = "359999999",
            Telefone2 = "359999998",
            Email = "joao@test.com",
            Ativo = true
        };

        cliente.SetDocument("532.670.606-72");
        context.Clientes.Add(cliente);
        await context.SaveChangesAsync();

        var veiculo = new Veiculo
        {
            ClienteId = cliente.Id,
            Placa = "XYZ9999",
            Marca = "Fiat",
            Modelo = "Cronos",
            Ano = 2022,
            Ativo = true
        };

        await repo.AdicionarAsync(veiculo);

        var saved = await context.Veiculos.FirstOrDefaultAsync();

        Assert.NotNull(saved);
        Assert.Equal("XYZ9999", saved.Placa);
    }

    [Fact]
    public async Task AtualizarAsync_DeveAtualizarDados()
    {
        using var context = CreateContext();
        var repo = new VeiculoRepository(context);

        var cliente = new Cliente
        {
            Nome = "João",
            Telefone1 = "359999999",
            Telefone2 = "359999998",
            Email = "joao@test.com",
            Ativo = true
        };

        cliente.SetDocument("532.670.606-72");
        context.Clientes.Add(cliente);
        await context.SaveChangesAsync();

         var veiculo = new Veiculo
        {
            ClienteId = cliente.Id,
            Placa = "XYZ9999",
            Marca = "Fiat",
            Modelo = "Cronos",
            Ano = 2022,
            Ativo = true
        };
        context.Veiculos.Add(veiculo);
        await context.SaveChangesAsync();

        veiculo.Placa = "NEW1234";

        await repo.AtualizarAsync(veiculo);

        var updated = await context.Veiculos.FirstAsync();

        Assert.Equal("NEW1234", updated.Placa);
    }

    [Fact]
    public async Task ExcluirAsync_DeveRemoverVeiculo()
    {
        using var context = CreateContext();
        var repo = new VeiculoRepository(context);

        var cliente = new Cliente
        {
            Nome = "João",
            Telefone1 = "359999999",
            Telefone2 = "359999998",
            Email = "joao@test.com",
            Ativo = true
        };

        cliente.SetDocument("532.670.606-72");
        context.Clientes.Add(cliente);
        await context.SaveChangesAsync();

        var veiculo = new Veiculo
        {
            ClienteId = cliente.Id,
            Placa = "XYZ9999",
            Marca = "Fiat",
            Modelo = "Cronos",
            Ano = 2022,
            Ativo = true
        };
        context.Veiculos.Add(veiculo);
        await context.SaveChangesAsync();

        await repo.ExcluirAsync(veiculo.Id);

        var exists = await context.Veiculos.AnyAsync();

        Assert.False(exists);
    }

    [Fact]
    public async Task ExistePlacaAsync_DeveRetornarTrue_QuandoExistir()
    {
        using var context = CreateContext();
        var repo = new VeiculoRepository(context);

        var cliente = new Cliente
        {
            Nome = "João",
            Telefone1 = "359999999",
            Telefone2 = "359999998",
            Email = "joao@test.com",
            Ativo = true
        };

        cliente.SetDocument("532.670.606-72");
        context.Clientes.Add(cliente);
        await context.SaveChangesAsync();

        var veiculo = new Veiculo
        {
            ClienteId = cliente.Id,
            Placa = "XYZ9999",
            Marca = "Fiat",
            Modelo = "Cronos",
            Ano = 2022,
            Ativo = true
        };

        context.Veiculos.Add(veiculo);
        await context.SaveChangesAsync();

        var result = await repo.ExistePlacaAsync("XYZ9999");

        Assert.True(result);
    }

    [Fact]
    public async Task ClienteExisteAsync_DeveRetornarTrue_QuandoExistir()
    {
        using var context = CreateContext();
        var repo = new VeiculoRepository(context);

        var cliente = new Cliente
        {
            Nome = "João",
            Telefone1 = "359999999",
            Telefone2 = "359999998",
            Email = "joao@test.com",
            Ativo = true
        };

        cliente.SetDocument("532.670.606-72");
        context.Clientes.Add(cliente);
        await context.SaveChangesAsync();

        var result = await repo.ClienteExisteAsync(cliente.Id);

        Assert.True(result);
    }
}
