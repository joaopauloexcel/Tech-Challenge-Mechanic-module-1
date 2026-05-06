using Mechanic.Application.Services;
using Mechanic.Data;
using Mechanic.Domain.Interfaces;
using Mechanic.Infrastructure.Repositories;
using Mechanic.Presentation.Endpoints;
using Mechanic.UnitOfWork;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;
using System.Text;

var builder = WebApplication.CreateBuilder(args);
var jwtSettings = builder.Configuration.GetSection("Jwt");
var key = Encoding.UTF8.GetBytes(jwtSettings["Key"]!);

builder.Services.AddAuthentication(options =>
{
    options.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
    options.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
})
.AddJwtBearer(options =>
{
    options.TokenValidationParameters = new TokenValidationParameters
    {
        ValidateIssuer = true,
        ValidateAudience = true,
        ValidateIssuerSigningKey = true,
        ValidateLifetime = true,

        ValidIssuer = jwtSettings["Issuer"],
        ValidAudience = jwtSettings["Audience"],
        IssuerSigningKey = new SymmetricSecurityKey(key)
    };
});
builder.Services.AddAuthorization();
builder.Services.AddValidation();

builder.Services.AddDbContext<AppDbContext>(options =>
    options.UseSqlServer(
        builder.Configuration.GetConnectionString("AppDbContext")
        ?? throw new InvalidOperationException("Connection string 'AppDbContext' not found.")
    )
);

builder.Services.AddScoped<IClienteRepository, ClienteRepository>();
builder.Services.AddScoped<ClienteService>();

builder.Services.AddScoped<IVeiculoRepository, VeiculoRepository>();
builder.Services.AddScoped<VeiculoService>();

builder.Services.AddScoped<IServicoRepository, ServicoRepository>();
builder.Services.AddScoped<ServicoService>();

builder.Services.AddScoped<IProdutoRepository, ProdutoRepository>();
builder.Services.AddScoped<ProdutoService>();

builder.Services.AddScoped<IOrdemServicoRepository, OrdemServicoRepository>();
builder.Services.AddScoped<IOrdemServicoOrcamentoRepository, OrdemServicoOrcamentoRepository>();
builder.Services.AddScoped<IOrdemServicoProdutoRepository, OrdemServicoProdutoRepository>();
builder.Services.AddScoped<IOrdemServicoServicoRepository, OrdemServicoServicoRepository>();
builder.Services.AddScoped<IOrdemServicoServicoLogRepository, OrdemServicoServicoLogRepository>();

builder.Services.AddScoped<OrdemServicoService>();

builder.Services.AddScoped<IUnitOfWork, UnitOfWork>();

builder.Services.AddOpenApi();
builder.Services.AddScoped<AuthService>();

builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Services.AddSwaggerGen(options =>
{
    var xmlFile = $"{System.Reflection.Assembly.GetExecutingAssembly().GetName().Name}.xml";
    var xmlPath = Path.Combine(AppContext.BaseDirectory, xmlFile);

    if (File.Exists(xmlPath))
    {
        options.IncludeXmlComments(xmlPath);
    }
});

var app = builder.Build();

if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
    app.MapOpenApi();
}

app.UseAuthentication();
app.UseAuthorization();
app.MapAuthEndpoints();

app.UseHttpsRedirection();

app.MapClienteEndpoints();
app.MapVeiculoEndpoints();
app.MapServicoEndpoints(); 
app.MapProdutoEndpoints();
app.MapOrdemServicoEndpoints();

using (var scope = app.Services.CreateScope())
{
    var db = scope.ServiceProvider.GetRequiredService<AppDbContext>();

    if (app.Environment.IsDevelopment())
    {
        db.Database.Migrate();
    }
}

app.Run();
