using Microsoft.EntityFrameworkCore.Migrations;
using System;
using System.Diagnostics.CodeAnalysis;

#nullable disable

namespace Mechanic.Infrastructure.Data.Migrations
{
    /// <inheritdoc />
    [ExcludeFromCodeCoverage]
    public partial class AddOrdemServico : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "OrdensServico",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Titulo = table.Column<string>(type: "nvarchar(150)", maxLength: 150, nullable: false),
                    Status = table.Column<int>(type: "int", nullable: false),
                    Descricao = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: false),
                    ClienteId = table.Column<int>(type: "int", nullable: false),
                    VeiculoId = table.Column<int>(type: "int", nullable: false),
                    DataCriacao = table.Column<DateTime>(type: "datetime2", nullable: false),
                    PossuiOrcamentoPendente = table.Column<bool>(type: "bit", nullable: false),
                    PossuiOrcamentoAprovado = table.Column<bool>(type: "bit", nullable: false),
                    PublicHash = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    DataInicioDiagnostico = table.Column<DateTime>(type: "datetime2", nullable: true),
                    DataFimDiagnostico = table.Column<DateTime>(type: "datetime2", nullable: true),
                    DataAprovacao = table.Column<DateTime>(type: "datetime2", nullable: true),
                    DataInicioExecucao = table.Column<DateTime>(type: "datetime2", nullable: true),
                    DataFinalizacao = table.Column<DateTime>(type: "datetime2", nullable: true),
                    DataEntrega = table.Column<DateTime>(type: "datetime2", nullable: true),
                    DataCancelamento = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_OrdensServico", x => x.Id);
                    table.ForeignKey(
                        name: "FK_OrdensServico_Clientes_ClienteId",
                        column: x => x.ClienteId,
                        principalTable: "Clientes",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_OrdensServico_Veiculos_VeiculoId",
                        column: x => x.VeiculoId,
                        principalTable: "Veiculos",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "OrdemServicoOrcamentos",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    OSId = table.Column<int>(type: "int", nullable: false),
                    Descricao = table.Column<string>(type: "nvarchar(250)", maxLength: 250, nullable: false),
                    StatusOrcamento = table.Column<int>(type: "int", nullable: false),
                    DataAprovacaoOrcamento = table.Column<DateTime>(type: "datetime2", nullable: true),
                    DataCriacao = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ObservacaoMecanico = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_OrdemServicoOrcamentos", x => x.Id);
                    table.ForeignKey(
                        name: "FK_OrdemServicoOrcamentos_OrdensServico_OSId",
                        column: x => x.OSId,
                        principalTable: "OrdensServico",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "OrdemServicoProdutos",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    OSId = table.Column<int>(type: "int", nullable: false),
                    OSOrcamentoId = table.Column<int>(type: "int", nullable: true),
                    ProdutoId = table.Column<int>(type: "int", nullable: false),
                    Quantidade = table.Column<int>(type: "int", precision: 18, scale: 3, nullable: false),
                    PrecoPraticado = table.Column<decimal>(type: "decimal(18,2)", precision: 18, scale: 2, nullable: false),
                    StatusItem = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_OrdemServicoProdutos", x => x.Id);
                    table.ForeignKey(
                        name: "FK_OrdemServicoProdutos_OrdemServicoOrcamentos_OSOrcamentoId",
                        column: x => x.OSOrcamentoId,
                        principalTable: "OrdemServicoOrcamentos",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_OrdemServicoProdutos_OrdensServico_OSId",
                        column: x => x.OSId,
                        principalTable: "OrdensServico",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_OrdemServicoProdutos_Produtos_ProdutoId",
                        column: x => x.ProdutoId,
                        principalTable: "Produtos",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "OrdemServicoServicos",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    OSId = table.Column<int>(type: "int", nullable: false),
                    OSOrcamentoId = table.Column<int>(type: "int", nullable: true),
                    ServicoId = table.Column<int>(type: "int", nullable: false),
                    PrecoPraticado = table.Column<decimal>(type: "decimal(18,2)", precision: 18, scale: 2, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_OrdemServicoServicos", x => x.Id);
                    table.ForeignKey(
                        name: "FK_OrdemServicoServicos_OrdemServicoOrcamentos_OSOrcamentoId",
                        column: x => x.OSOrcamentoId,
                        principalTable: "OrdemServicoOrcamentos",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_OrdemServicoServicos_OrdensServico_OSId",
                        column: x => x.OSId,
                        principalTable: "OrdensServico",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_OrdemServicoServicos_Servicos_ServicoId",
                        column: x => x.ServicoId,
                        principalTable: "Servicos",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "OrdemServicoServicoLogs",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    OSId = table.Column<int>(type: "int", nullable: false),
                    OSServicoId = table.Column<int>(type: "int", nullable: false),
                    AcaoLog = table.Column<int>(type: "int", nullable: false),
                    DataCriacao = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_OrdemServicoServicoLogs", x => x.Id);
                    table.ForeignKey(
                        name: "FK_OrdemServicoServicoLogs_OrdemServicoServicos_OSServicoId",
                        column: x => x.OSServicoId,
                        principalTable: "OrdemServicoServicos",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_OrdemServicoServicoLogs_OrdensServico_OSId",
                        column: x => x.OSId,
                        principalTable: "OrdensServico",
                        principalColumn: "Id");
                });

            migrationBuilder.CreateIndex(
                name: "IX_OrdemServicoOrcamentos_OSId",
                table: "OrdemServicoOrcamentos",
                column: "OSId");

            migrationBuilder.CreateIndex(
                name: "IX_OrdemServicoProdutos_OSId",
                table: "OrdemServicoProdutos",
                column: "OSId");

            migrationBuilder.CreateIndex(
                name: "IX_OrdemServicoProdutos_OSOrcamentoId",
                table: "OrdemServicoProdutos",
                column: "OSOrcamentoId");

            migrationBuilder.CreateIndex(
                name: "IX_OrdemServicoProdutos_ProdutoId",
                table: "OrdemServicoProdutos",
                column: "ProdutoId");

            migrationBuilder.CreateIndex(
                name: "IX_OrdemServicoServicoLogs_OSId",
                table: "OrdemServicoServicoLogs",
                column: "OSId");

            migrationBuilder.CreateIndex(
                name: "IX_OrdemServicoServicoLogs_OSServicoId",
                table: "OrdemServicoServicoLogs",
                column: "OSServicoId");

            migrationBuilder.CreateIndex(
                name: "IX_OrdemServicoServicos_OSId",
                table: "OrdemServicoServicos",
                column: "OSId");

            migrationBuilder.CreateIndex(
                name: "IX_OrdemServicoServicos_OSOrcamentoId",
                table: "OrdemServicoServicos",
                column: "OSOrcamentoId");

            migrationBuilder.CreateIndex(
                name: "IX_OrdemServicoServicos_ServicoId",
                table: "OrdemServicoServicos",
                column: "ServicoId");

            migrationBuilder.CreateIndex(
                name: "IX_OrdensServico_ClienteId",
                table: "OrdensServico",
                column: "ClienteId");

            migrationBuilder.CreateIndex(
                name: "IX_OrdensServico_VeiculoId",
                table: "OrdensServico",
                column: "VeiculoId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "OrdemServicoProdutos");

            migrationBuilder.DropTable(
                name: "OrdemServicoServicoLogs");

            migrationBuilder.DropTable(
                name: "OrdemServicoServicos");

            migrationBuilder.DropTable(
                name: "OrdemServicoOrcamentos");

            migrationBuilder.DropTable(
                name: "OrdensServico");
        }
    }
}
