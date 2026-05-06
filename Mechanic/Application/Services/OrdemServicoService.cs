using Mechanic.Application.DTOs.OrdemServico.Query;
using Mechanic.Application.DTOs.OrdemServico.Request;
using Mechanic.Application.DTOs.OrdemServico.Response;
using Mechanic.Application.Enums;
using Mechanic.Domain.Entities;
using Mechanic.Domain.Interfaces;

namespace Mechanic.Application.Services
{
    public class OrdemServicoService : IOrdemServicoService
    {
        private readonly IOrdemServicoRepository _osRepo;
        private readonly IProdutoRepository _produtoRepo;
        private readonly IOrdemServicoOrcamentoRepository _orcRepo;
        private readonly IOrdemServicoProdutoRepository _osProdRepo;
        private readonly IOrdemServicoServicoRepository _osServRepo; 
        private readonly IUnitOfWork _uow;
        private readonly IOrdemServicoServicoLogRepository _osLogRepo;

        public OrdemServicoService(
            IOrdemServicoRepository osRepo,
            IProdutoRepository produtoRepo,
            IOrdemServicoOrcamentoRepository orcRepo,
            IOrdemServicoProdutoRepository osProdRepo,
            IOrdemServicoServicoRepository osServRepo,
            IOrdemServicoServicoLogRepository osLogRepo,
            IUnitOfWork uow)
        {
            _osRepo = osRepo;
            _produtoRepo = produtoRepo;
            _orcRepo = orcRepo;
            _osProdRepo = osProdRepo;
            _osServRepo = osServRepo;
            _osLogRepo = osLogRepo;
            _uow = uow;
        }

        private OrdemServicoDTO MapToDto(OrdemServico os)
        {
            var orcamentos = os.Orcamentos.Select(o =>
            {
                var totalProdutos = o.Produtos.Sum(p => p.Quantidade * p.PrecoPraticado);
                var totalServicos = o.Servicos.Sum(s => s.PrecoPraticado);

                return new OrdemServicoOrcamentoDetalhadoDto
                {
                    Descricao = o.Descricao,
                    StatusOrcamento = o.StatusOrcamento.ToString(),
                    PrecoTotal = totalProdutos + totalServicos
                };
            }).ToList();

            var precoAprovado = os.Orcamentos
                .Where(o => o.StatusOrcamento == StatusOrcamento.Aprovado)
                .Sum(o => o.Produtos.Sum(p => p.Quantidade * p.PrecoPraticado)
                       + o.Servicos.Sum(s => s.PrecoPraticado));

            var precoPendente = os.Orcamentos
                .Where(o => o.StatusOrcamento == StatusOrcamento.Pendente)
                .Sum(o => o.Produtos.Sum(p => p.Quantidade * p.PrecoPraticado)
                       + o.Servicos.Sum(s => s.PrecoPraticado));

            return new OrdemServicoDTO
            {
                OrdensServicoId = os.Id,
                TituloOS = os.Titulo,
                StatusOS = os.Status.ToString(),
                DescricaoOS = os.Descricao,
                DataCriacaoOS = os.DataCriacao,
                DataInicioDiagnostico = os.DataInicioDiagnostico,
                DataInicioExecucao = os.DataInicioExecucao,
                DataFinalizacao = os.DataFinalizacao,
                DataEntrega = os.DataEntrega,
                DataCancelamento = os.DataCancelamento,

                NomeCliente = os.Cliente?.Nome,
                CpfCnpjCliente = os.Cliente?.CpfCnpj?.Value,

                PlacaVeiculo = os.Veiculo?.Placa,
                MarcaVeiculo = os.Veiculo?.Marca,
                ModeloVeiculo = os.Veiculo?.Modelo,
                AnoVeiculo = os.Veiculo?.Ano,

                PossuiOrcamentoPendente = os.Orcamentos.Any(o => o.StatusOrcamento == StatusOrcamento.Pendente),
                PossuiOrcamentoAprovado = os.Orcamentos.Any(o => o.StatusOrcamento == StatusOrcamento.Aprovado),

                PublicToken = os.PublicHash,

                Orcamentos = orcamentos,

                PrecoTotalAprovado = precoAprovado,
                PrecoTotalPendente = precoPendente,
                PrecoTotalGeral = precoAprovado + precoPendente
            };
        }

        public async Task<int> AdicionarOSAsync(CriarOrdemServicoDto dto)
        {
            var os = new OrdemServico
            {
                Titulo = dto.Titulo,
                Descricao = dto.Descricao,
                ClienteId = dto.ClienteId,
                VeiculoId = dto.VeiculoId,
                Status = StatusOrdemServico.Recebida,
                DataCriacao = DateTime.UtcNow,

                PublicHash = Guid.NewGuid().ToString("N")
            };

            await _osRepo.AdicionarAsync(os);
            await _osRepo.SalvarAsync();

            return os.Id;
        }

        public async Task<List<OrdemServicoDTO>> ListarTodosAsync(ListarOrdemServicoFiltroDto filtro)
        {
            var lista = await _osRepo.ListarAsync(filtro);

            return lista.Select(MapToDto).ToList();
        }

        public async Task<OrdemServicoDTO?> ListarPorIdAsync(int id)
        {
            var os = await _osRepo.ObterPorIdAsync(id);

            return os is null ? null : MapToDto(os);
        }

        public async Task<OrdemServicoDTO?> ListarPorHashExternoAsync(string hashExterno)
        {
            var os = await _osRepo.ObterPorComHashAsync(hashExterno);

            return os is null ? null : MapToDto(os);
        }

        public async Task IniciarDiagnosticoAsync(int osId)
        {
            var os = await _osRepo.ObterPorIdAsync(osId);

            if (os is null)
                throw new Exception("Ordem de Serviço não encontrada.");

            if (os.Status != StatusOrdemServico.Recebida)
                throw new Exception("A OS só pode iniciar diagnóstico se estiver como Recebida.");

            os.Status = StatusOrdemServico.EmDiagnostico;
            os.DataInicioDiagnostico = DateTime.UtcNow;

            await _osRepo.AtualizarAsync(os);
            await _osRepo.SalvarAsync();
        }

        public async Task EnviarOrcamentoAsync(int osId, CriarOrcamentoDto dto)
        {
            await _uow.BeginTransactionAsync();

            try
            {
                var os = await _osRepo.ObterPorIdAsync(osId);

                if (os is null)
                    throw new Exception("OS não encontrada.");

                if (os.Status != StatusOrdemServico.EmDiagnostico &&
                    os.Status != StatusOrdemServico.EmAprovacao &&
                    os.Status != StatusOrdemServico.EmExecucao)
                    throw new Exception("Status inválido.");

                var orcamento = new OrdemServicoOrcamento
                {
                    OSId = os.Id,
                    Descricao = dto.Descricao,
                    StatusOrcamento = StatusOrcamento.Pendente,
                    DataCriacao = DateTime.UtcNow
                };

                await _orcRepo.AdicionarAsync(orcamento);
                await _osRepo.SalvarAsync();

                if (os.Status == StatusOrdemServico.EmDiagnostico)
                {
                    os.Status = StatusOrdemServico.EmAprovacao;
                    os.DataFimDiagnostico = DateTime.UtcNow;
                }

                foreach (var prod in dto.ProdutosOS)
                {
                    var produto = await _produtoRepo.ListarPorIdAsync(prod.ProdutoId);

                    if (produto is null)
                        throw new Exception("Produto não encontrado.");

                    var disponivel = produto.QuantidadeTotal - produto.QuantidadeReservada;

                    if (prod.QtdProduto > disponivel)
                        throw new Exception("Estoque insuficiente.");

                    produto.QuantidadeReservada += prod.QtdProduto;

                    await _produtoRepo.AtualizarAsync(produto);

                    await _osProdRepo.AdicionarAsync(new OrdemServicoProduto
                    {
                        OSId = os.Id,
                        OSOrcamentoId = orcamento.Id,
                        ProdutoId = prod.ProdutoId,
                        Quantidade = prod.QtdProduto,
                        PrecoPraticado = prod.PrecoUnitarioProduto,
                        StatusItem = StatusItemProduto.Reservado
                    });
                }

                foreach (var serv in dto.ServicosOS)
                {
                    await _osServRepo.AdicionarAsync(new OrdemServicoServico
                    {
                        OSId = os.Id,
                        OSOrcamentoId = orcamento.Id,
                        ServicoId = serv.ServicoId,
                        PrecoPraticado = serv.PrecoServico
                    });
                }

                await _osRepo.AtualizarAsync(os);
                await _osRepo.SalvarAsync();

                await _uow.CommitAsync();
            }
            catch
            {
                await _uow.RollbackAsync();
                throw;
            }
        }

        public async Task DecidirOrcamentoAsync(int osId, int orcamentoId, DecisaoOrcamentoInputDto dto)
        {
            await _uow.BeginTransactionAsync();

            try
            {
                var os = await _osRepo.ObterPorIdAsync(osId);
                var orcamento = await _orcRepo.ObterPorIdAsync(orcamentoId);

                var produtosDoOrcamento = await _osProdRepo.ListarPorOrcamentoIdAsync(orcamentoId);

                if (os is null || orcamento is null)
                    throw new Exception("OS ou Orçamento não encontrado.");

                if (orcamento.StatusOrcamento != StatusOrcamento.Pendente)
                    throw new Exception("Este orçamento já foi processado.");

                // 2. Lógica de Aprovação
                if (dto.Aprovar)
                {
                    orcamento.StatusOrcamento = StatusOrcamento.Aprovado;
                    orcamento.DataAprovacaoOrcamento = DateTime.UtcNow;

                    // Regra: Se estava em aprovação, move a OS para execução
                    if (os.Status == StatusOrdemServico.EmAprovacao)
                    {
                        os.Status = StatusOrdemServico.EmExecucao;
                        os.DataInicioExecucao = DateTime.UtcNow;
                    }

                    // Processar itens (Produtos)
                    foreach (var itemOS in produtosDoOrcamento)
                    {
                        // Altera status do item na OS
                        itemOS.StatusItem = StatusItemProduto.Confirmado;
                        await _osProdRepo.AtualizarAsync(itemOS);

                        // Baixa no estoque real
                        var produtoEstoque = await _produtoRepo.ListarPorIdAsync(itemOS.ProdutoId);
                        if (produtoEstoque != null)
                        {
                            produtoEstoque.QuantidadeTotal -= itemOS.Quantidade;
                            produtoEstoque.QuantidadeReservada -= itemOS.Quantidade;
                            await _produtoRepo.AtualizarAsync(produtoEstoque);
                        }
                    }
                }
                // 3. Lógica de Reprovação
                else
                {
                    orcamento.StatusOrcamento = StatusOrcamento.Reprovado;

                    foreach (var itemOS in produtosDoOrcamento)
                    {
                        // Cancela o item
                        itemOS.StatusItem = StatusItemProduto.Cancelado;
                        await _osProdRepo.AtualizarAsync(itemOS);

                        // Estorna a reserva do estoque
                        var produtoEstoque = await _produtoRepo.ListarPorIdAsync(itemOS.ProdutoId);
                        if (produtoEstoque != null)
                        {
                            produtoEstoque.QuantidadeReservada -= itemOS.Quantidade;
                            await _produtoRepo.AtualizarAsync(produtoEstoque);
                        }
                    }

                    // Se a OS não tiver outros orçamentos aprovados e estiver "Em Aprovação", 
                    // talvez devesse voltar para "Em Diagnóstico"? 
                    // (Ajuste conforme sua necessidade de negócio específica)
                }

                // Atualizar Entidades Principais
                await _orcRepo.AtualizarAsync(orcamento);
                await _osRepo.AtualizarAsync(os);

                await _osRepo.SalvarAsync();
                await _uow.CommitAsync();
            }
            catch
            {
                await _uow.RollbackAsync();
                throw;
            }
        }

        private async Task AdicionarLog(OrdemServicoServico servico, ExecutarServicoLogDto dto)
        {
            var log = new OrdemServicoServicoLog
            {
                OSId = servico.OSId,
                OSServicoId = servico.Id,
                AcaoLog = dto.Acao,
                DataCriacao = DateTime.UtcNow
            };
            System.Diagnostics.Debug.WriteLine(log);
            await _osLogRepo.AdicionarAsync(log);
            await _uow.CommitAsync();
        }

        public async Task ExecutarServicoLogAsync(int osId, int orcId, int servId, ExecutarServicoLogDto dto)
        {
            var os = await _osRepo.ObterComServicosAsync(osId)
                ?? throw new Exception("OS não encontrada");

            if (os.Status != StatusOrdemServico.EmExecucao)
                throw new Exception("OS não está em execução");

            var servico = os.Servicos
                .FirstOrDefault(s => s.Id == servId)
                ?? throw new Exception("Serviço não encontrado");

            var ultimoLog = servico.Logs
                .OrderByDescending(l => l.DataCriacao)
                .FirstOrDefault();

            var ultimaAcao = ultimoLog?.AcaoLog;

            var podeExecutar = dto.Acao switch
            {
                StatusServicoLog.Iniciar =>
                    ultimaAcao != StatusServicoLog.Iniciar,

                StatusServicoLog.Pausar =>
                    ultimaAcao == StatusServicoLog.Iniciar,

                StatusServicoLog.Finalizar =>
                    ultimaAcao == StatusServicoLog.Iniciar ||
                    ultimaAcao == StatusServicoLog.Pausar,

                _ => false
            };

            System.Diagnostics.Debug.WriteLine($"Pode executar: {podeExecutar}");

            if (!podeExecutar)
                throw new Exception("Ação inválida para o estado atual do serviço");

            try
            {
                await AdicionarLog(servico, dto);
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("Erro real:");
                System.Diagnostics.Debug.WriteLine(ex.ToString());
                throw;
            }
        }

        public async Task CancelarOSAsync(int osId)
        {
            var os = await _osRepo.ObterPorIdAsync(osId)
                ?? throw new Exception("OS não encontrada");

            if (os.Status is not (
                StatusOrdemServico.Recebida or
                StatusOrdemServico.EmDiagnostico or
                StatusOrdemServico.EmAprovacao))
                throw new Exception("OS não pode ser cancelada no status atual");

            os.Status = StatusOrdemServico.Cancelada;
            os.DataCancelamento = DateTime.UtcNow;

            await _uow.CommitAsync();
        }

        public async Task FinalizarOSAsync(int osId)
        {
            var os = await _osRepo.ObterComServicosAsync(osId)
                ?? throw new Exception("OS não encontrada");

            if (os.Status != StatusOrdemServico.EmExecucao)
                throw new Exception("OS só pode ser finalizada em execução");

            if (os.PossuiOrcamentoPendente)
                throw new Exception("Não é possível finalizar OS com orçamento pendente");

            // 🔎 valida se existe serviço com orçamento aprovado sem finalização
            var todosFinalizados = os.Servicos.All(s =>
                s.Logs.Any(l => l.AcaoLog == StatusServicoLog.Finalizar)
            );

            if (!todosFinalizados)
                throw new Exception("Existem serviços não finalizados");

            os.Status = StatusOrdemServico.Finalizada;
            os.DataFinalizacao = DateTime.UtcNow;

            await _osRepo.AtualizarAsync(os);
            await _uow.CommitAsync();
        }

        public async Task EntregarOSAsync(int osId)
        {
            var os = await _osRepo.ObterPorIdAsync(osId)
                ?? throw new Exception("OS não encontrada");

            if (os.Status != StatusOrdemServico.Finalizada)
                throw new Exception("OS só pode ser entregue após finalização");

            os.Status = StatusOrdemServico.Entregue;
            os.DataEntrega = DateTime.UtcNow;

            await _osRepo.AtualizarAsync(os);
            await _uow.CommitAsync();
        }

        private List<TempoMedioServicoDto> CalcularTempoMedioPorServico(List<OrdemServicoServicoLog> logs)
        {
            var result = new List<TempoMedioServicoDto>();

            var logsAgrupados = logs
                .GroupBy(l => l.OSServicoId);

            foreach (var grupo in logsAgrupados)
            {
                var ordenados = grupo
                    .OrderBy(x => x.DataCriacao)
                    .ToList();

                var pares = new List<double>();

                for (int i = 0; i < ordenados.Count; i++)
                {
                    if (ordenados[i].AcaoLog != StatusServicoLog.Iniciar)
                        continue;

                    var inicio = ordenados[i].DataCriacao;

                    var fim = ordenados
                        .Skip(i + 1)
                        .FirstOrDefault(x =>
                            x.AcaoLog == StatusServicoLog.Pausar ||
                            x.AcaoLog == StatusServicoLog.Finalizar);

                    if (fim is null)
                        continue;

                    var minutos = (fim.DataCriacao - inicio).TotalMinutes;
                    pares.Add(minutos);
                }

                var servico = grupo.First().OrdemServicoServico.Servico;

                result.Add(new TempoMedioServicoDto
                {
                    Servico = servico.Descricao,
                    MediaMinutos = pares.Count == 0 ? 0 : pares.Average(),
                    TotalExecucoes = pares.Count
                });
            }

            return result;
        }

        private async Task<TempoMedioOSDto> CalcularTempoMedioPorOSAsync()
        {
            var osList = await _osRepo.ObterFinalizadasAsync();

            var tempos = osList
                .Where(x => x.DataFinalizacao != null)
                .Select(x => (x.DataFinalizacao!.Value - x.DataCriacao).TotalMinutes)
                .ToList();

            return new TempoMedioOSDto
            {
                MediaMinutos = tempos.Count == 0 ? 0 : tempos.Average(),
                TotalOS = tempos.Count
            };
        }

        public async Task<RelatorioTempoMedioDto> GetTempoMedioExecucaoAsync()
        {
            var logs = await _osLogRepo.ObterLogsServicosAsync();

            var porServico = CalcularTempoMedioPorServico(logs);
            var porOS = await CalcularTempoMedioPorOSAsync();

            return new RelatorioTempoMedioDto
            {
                PorServico = porServico,
                PorOS = porOS
            };
        }
    }
}