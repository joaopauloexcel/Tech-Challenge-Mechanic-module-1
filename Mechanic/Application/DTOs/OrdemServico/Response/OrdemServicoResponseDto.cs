using System.Diagnostics.CodeAnalysis;

namespace Mechanic.Application.DTOs.OrdemServico.Response;

/// <summary>
/// Representa uma Ordem de Serviço (OS).
/// </summary>
[ExcludeFromCodeCoverage]
public class OrdemServicoResponseDto
{
    /// <summary>
    /// Identificador da ordem de serviço.
    /// </summary>
    public int OrdensServicoId { get; set; }

    /// <summary>
    /// Título da ordem de serviço.
    /// </summary>
    public string TituloOS { get; set; } = string.Empty;

    /// <summary>
    /// Status atual da OS (ex: Aberta, Em andamento, Finalizada).
    /// </summary>
    public string StatusOS { get; set; } = string.Empty;

    /// <summary>
    /// Descrição detalhada da ordem de serviço.
    /// </summary>
    public string DescricaoOS { get; set; } = string.Empty;

    /// <summary>
    /// Data de criação da OS.
    /// </summary>
    public DateTime DataCriacaoOS { get; set; }

    /// <summary>
    /// Data em que o diagnóstico foi iniciado.
    /// </summary>
    public DateTime? DataInicioDiagnostico { get; set; }

    /// <summary>
    /// Data de início da execução do serviço.
    /// </summary>
    public DateTime? DataInicioExecucao { get; set; }

    /// <summary>
    /// Data de finalização da OS.
    /// </summary>
    public DateTime? DataFinalizacao { get; set; }

    /// <summary>
    /// Data de entrega ao cliente.
    /// </summary>
    public DateTime? DataEntrega { get; set; }

    /// <summary>
    /// Data de cancelamento da OS.
    /// </summary>
    public DateTime? DataCancelamento { get; set; }

    /// <summary>
    /// Nome do cliente associado à OS.
    /// </summary>
    public string? NomeCliente { get; set; }

    /// <summary>
    /// CPF ou CNPJ do cliente.
    /// </summary>
    public string CpfCnpjCliente { get; set; } = string.Empty;

    /// <summary>
    /// Placa do veículo vinculado à OS.
    /// </summary>
    public string PlacaVeiculo { get; set; } = string.Empty;

    /// <summary>
    /// Marca do veículo.
    /// </summary>
    public string? MarcaVeiculo { get; set; }

    /// <summary>
    /// Modelo do veículo.
    /// </summary>
    public string? ModeloVeiculo { get; set; }

    /// <summary>
    /// Ano de fabricação do veículo.
    /// </summary>
    public int? AnoVeiculo { get; set; }

    /// <summary>
    /// Indica se há orçamento pendente.
    /// </summary>
    public bool PossuiOrcamentoPendente { get; set; }

    /// <summary>
    /// Indica se há orçamento aprovado.
    /// </summary>
    public bool PossuiOrcamentoAprovado { get; set; }

    /// <summary>
    /// Token público para acesso externo à OS.
    /// </summary>
    public string PublicToken { get; set; } = string.Empty;

    /// <summary>
    /// Lista de orçamentos detalhados da OS.
    /// </summary>
    public List<OrdemServicoOrcamentoResponseDto> Orcamentos { get; set; } = new();

    /// <summary>
    /// Valor total dos orçamentos aprovados.
    /// </summary>
    public decimal PrecoTotalAprovado { get; set; }

    /// <summary>
    /// Valor total dos orçamentos pendentes.
    /// </summary>
    public decimal PrecoTotalPendente { get; set; }

    /// <summary>
    /// Valor total geral dos orçamentos.
    /// </summary>
    public decimal PrecoTotalGeral { get; set; }
}