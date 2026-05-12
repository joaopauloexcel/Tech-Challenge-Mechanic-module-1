using Mechanic.Data;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc.Testing;
using Microsoft.AspNetCore.TestHost;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using System.Net.Http.Headers;
using Microsoft.Data.Sqlite;

public class ApiTestBase : WebApplicationFactory<Program> // Program deve ser a sua classe de entrada da API
{
    protected HttpClient Client;
    private SqliteConnection _sharedConnection;

    public ApiTestBase()
    {
        // Cria o cliente HTTP para fazer requisições à API em memória
        Client = CreateClient();
    }

    protected override void ConfigureWebHost(IWebHostBuilder builder)
    {
        builder.UseEnvironment("Testing");

        builder.ConfigureTestServices(services =>
        {
            // 1. Criamos a conexão manualmente e a mantemos aberta
            if (_sharedConnection == null)
            {
                _sharedConnection = new SqliteConnection("Data Source=:memory:");
                _sharedConnection.Open();
            }

            // 2. Substituímos o DbContext para usar essa conexão específica
            services.AddDbContext<AppDbContext>(options =>
            {
                options.UseSqlite(_sharedConnection);
            });

            services.AddAuthentication(options =>
            {
                options.DefaultAuthenticateScheme = "Test";
                options.DefaultChallengeScheme = "Test";
            })
            .AddScheme<AuthenticationSchemeOptions, TestAuthHandler>("Test", options => { });

            // Garante que o banco de dados seja criado antes dos testes rodarem
            var sp = services.BuildServiceProvider();
            using var scope = sp.CreateScope();
            var db = scope.ServiceProvider.GetRequiredService<AppDbContext>();

            // Abre a conexão manualmente para que o banco em memória não seja descartado
            db.Database.OpenConnection();
            db.Database.EnsureCreated();
        });
    }
    // Importante: Fechar a conexão quando a factory for destruída
    protected override void Dispose(bool disposing)
    {
        base.Dispose(disposing);
        _sharedConnection?.Close();
        _sharedConnection?.Dispose();
    }

    // Método para simular que o usuário está autenticado
    public void Autenticar()
    {
        Client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Test");
    }
}