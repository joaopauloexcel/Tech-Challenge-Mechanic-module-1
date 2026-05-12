using System.Diagnostics.CodeAnalysis;
using Mechanic.Domain.Entities;
using Microsoft.EntityFrameworkCore;

namespace Mechanic.Data
{
    [ExcludeFromCodeCoverage]
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) { }

        public DbSet<Cliente> Clientes { get; set; }

        public DbSet<Veiculo> Veiculos { get; set; }

        public DbSet<Servico> Servicos { get; set; }
        
        public DbSet<Produto> Produtos { get; set; }

        public DbSet<OrdemServico> OrdensServico { get; set; }

        public DbSet<OrdemServicoOrcamento> OrdemServicoOrcamentos { get; set; }

        public DbSet<OrdemServicoProduto> OrdemServicoProdutos { get; set; }

        public DbSet<OrdemServicoServico> OrdemServicoServicos { get; set; }

        public DbSet<OrdemServicoServicoLog> OrdemServicoServicoLogs { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Cliente>(entity =>
            {
                entity.OwnsOne(c => c.CpfCnpj, doc =>
                {
                    doc.Property(d => d.Value)
                       .HasColumnName("CpfCnpj")
                       .HasMaxLength(18)
                       .IsRequired();

                    doc.HasIndex(d => d.Value).IsUnique();
                });
                entity.Navigation(c => c.CpfCnpj).IsRequired();
            });

            modelBuilder.Entity<Veiculo>(entity =>
            {
                entity.HasIndex(v => v.Placa).IsUnique();
                entity.HasOne(v => v.Cliente)
                      .WithMany()
                      .HasForeignKey(v => v.ClienteId)
                      .OnDelete(DeleteBehavior.Restrict);
            });

            modelBuilder.Entity<Servico>(entity =>
            {
                entity.HasIndex(s => s.Sku).IsUnique();
                entity.Property(s => s.Preco)
                      .HasPrecision(18, 2);
                entity.Property(s => s.Sku)
                      .HasMaxLength(20)
                      .IsRequired();
            });

            modelBuilder.Entity<Produto>(entity =>
            {
                entity.HasIndex(s => s.Sku).IsUnique();
                entity.Property(s => s.PrecoCusto)
                      .HasPrecision(18, 2);
                entity.Property(s => s.PrecoVenda)
                   .HasPrecision(18, 2);
                entity.Property(s => s.Sku)
                      .HasMaxLength(20)
                      .IsRequired();
            });

            modelBuilder.Entity<OrdemServico>(entity =>
            {
                entity.HasKey(x => x.Id);
                entity.Property(x => x.Titulo).HasMaxLength(150).IsRequired();
                entity.Property(x => x.Descricao).HasMaxLength(1000).IsRequired();
                entity.Property(x => x.Status).IsRequired();
                entity.Property(x => x.DataCriacao).IsRequired();

                entity.HasOne(x => x.Cliente).WithMany().HasForeignKey(x => x.ClienteId).OnDelete(DeleteBehavior.Restrict);
                entity.HasOne(x => x.Veiculo).WithMany().HasForeignKey(x => x.VeiculoId).OnDelete(DeleteBehavior.Restrict);
            });

            modelBuilder.Entity<OrdemServicoOrcamento>(entity =>
            {
                entity.HasKey(x => x.Id);
                entity.Property(x => x.Descricao).HasMaxLength(250).IsRequired();
                entity.Property(x => x.ObservacaoMecanico).HasMaxLength(1000);
                entity.Property(x => x.StatusOrcamento).IsRequired();
                entity.Property(x => x.DataCriacao).IsRequired();

                entity.HasOne(x => x.OrdemServico)
                    .WithMany(x => x.Orcamentos)
                    .HasForeignKey(x => x.OSId)
                    .OnDelete(DeleteBehavior.Cascade);
            });

            modelBuilder.Entity<OrdemServicoProduto>(entity =>
            {
                entity.HasKey(x => x.Id);
                entity.Property(x => x.Quantidade).HasPrecision(18, 3);
                entity.Property(x => x.PrecoPraticado).HasPrecision(18, 2);
                entity.Property(x => x.StatusItem).IsRequired(); 

                entity.HasOne(x => x.OrdemServico).WithMany(x => x.Produtos).HasForeignKey(x => x.OSId).OnDelete(DeleteBehavior.Cascade);
                entity.HasOne(x => x.Produto).WithMany().HasForeignKey(x => x.ProdutoId).OnDelete(DeleteBehavior.Restrict);
                entity.HasOne(x => x.Orcamento).WithMany(x => x.Produtos).HasForeignKey(x => x.OSOrcamentoId).OnDelete(DeleteBehavior.Restrict);
            });

            modelBuilder.Entity<OrdemServicoServico>(entity =>
            {
                entity.HasKey(x => x.Id);
                entity.Property(x => x.PrecoPraticado).HasPrecision(18, 2);

                entity.HasOne(x => x.OrdemServico).WithMany(x => x.Servicos).HasForeignKey(x => x.OSId).OnDelete(DeleteBehavior.Cascade);
                entity.HasOne(x => x.Servico).WithMany().HasForeignKey(x => x.ServicoId).OnDelete(DeleteBehavior.Restrict);
                entity.HasOne(x => x.Orcamento).WithMany(x => x.Servicos).HasForeignKey(x => x.OSOrcamentoId).OnDelete(DeleteBehavior.Restrict);
            });

            modelBuilder.Entity<OrdemServicoServicoLog>(entity =>
            {
                entity.HasKey(x => x.Id);
                entity.Property(x => x.AcaoLog).IsRequired();
                entity.Property(x => x.DataCriacao).IsRequired();

                entity.HasOne(x => x.OrdemServicoServico)
                    .WithMany(x => x.Logs)
                    .HasForeignKey(x => x.OSServicoId)
                    .OnDelete(DeleteBehavior.Cascade);

                entity.HasOne(x => x.OrdemServico)
                    .WithMany(x => x.Logs)
                    .HasForeignKey(x => x.OSId)
                    .OnDelete(DeleteBehavior.NoAction);
            });

        }
    }

}


// <auto-generated />