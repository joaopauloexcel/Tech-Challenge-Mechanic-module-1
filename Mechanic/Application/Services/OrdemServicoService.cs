using Mechanic.Application.DTOs.OrdemServico.Params;
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
        private readonly IVeiculoRepository _veiculoRepo;
        private readonly IClienteRepository _clienteRepo;
        private readonly ValidacaoAcessoExternoService _validacaoAcessoExterno;

        public OrdemServicoService(
            IOrdemServicoRepository osRepo,
            IProdutoRepository produtoRepo,
            IOrdemServicoOrcamentoRepository orcRepo,
            IOrdemServicoProdutoRepository osProdRepo,
            IOrdemServicoServicoRepository osServRepo,
            IOrdemServicoServicoLogRepository osLogRepo,
            IUnitOfWork uow,
            IVeiculoRepository veiculoRepo,
            IClienteRepository clienteRepo,
        ValidacaoAcessoExternoService validacaoAcessoExterno)
        {
            _osRepo = osRepo;
            _produtoRepo = produtoRepo;
            _orcRepo = orcRepo;
            _osProdRepo = osProdRepo;
            _osServRepo = osServRepo;
            _osLogRepo = osLogRepo;
            _uow = uow;
            _validacaoAcessoExterno = validacaoAcessoExterno;
            _veiculoRepo = veiculoRepo;
            _clienteRepo = clienteRepo;
        }

        private OrdemServicoResponseDto MapToDto(OrdemServico os)
        {
            var orcamentos = os.Orcamentos.Select(o =>
            {
                var totalProdutos = o.Produtos.Sum(p => p.Quantidade * p.PrecoPraticado);
                var totalServicos = o.Servicos.Sum(s => s.PrecoPraticado);

                return new OrdemServicoOrcamentoResponseDto
                {
                    OSOrcamentoId = o.Id,
                    Descricao = o.Descricao,
                    StatusOrcamento = o.StatusOrcamento.ToString(),
                    PrecoTotal = totalProdutos + totalServicos,
  
                    ServicosOrcamentoOS = o.Servicos.Select(s => new OrdemServicoServicoResponseDto
                    {
                        ServicoOrcadoId = s.ServicoId,
                        SkuServicoOrcado = s.Servico.Sku,
                        DescricaoServicoOrcado = s.Servico.Descricao,
                        PrecoServicoOrcado = s.PrecoPraticado
                    }).ToList(),

                    ProdutosOrcamentoOS = o.Produtos.Select(p => new OrdemServicoProdutoResponseDto
                    {
                        ProdutoOrcadoId = p.ProdutoId,
                        SkuProdutoOrcado = p.Produto.Sku,
                        QtdProdutoOrcado = p.Quantidade,
                        PrecoUnitarioProdutoOrcado = p.PrecoPraticado,
                        PrecoTotalProduto = p.Quantidade * p.PrecoPraticado
                    }).ToList()
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

            return new OrdemServicoResponseDto
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
                CpfCnpjCliente = os.Cliente!.CpfCnpj.Value,

                PlacaVeiculo = os.Veiculo.Placa,
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

        public async Task<int> AdicionarOSAsync(CriarOrdemServicoRequestDto dto)
        {
            var veiculoExiste = await _veiculoRepo.VeiculoExisteAsync(dto.VeiculoId);

            if (!veiculoExiste)
                throw new InvalidOperationException("Veículo informado não existe.");

            var clienteExiste = await _clienteRepo.ClienteExisteAsync(dto.ClienteId);

            if (!clienteExiste)
                throw new InvalidOperationException("Cliente informado não existe.");

            var os = OrdemServico.Criar(
                dto.Titulo,
                dto.Descricao,
                dto.ClienteId,
                dto.VeiculoId
            );

            await _osRepo.AdicionarAsync(os);
            await _osRepo.SalvarAsync();

            return os.Id;
        }

        public async Task<List<OrdemServicoResponseDto>> ListarTodosAsync(ListarOrdemServicoParamsDto dto)
        {
            var lista = await _osRepo.ListarAsync(dto);

            return lista.Select(MapToDto).ToList();
        }

        public async Task<OrdemServicoResponseDto?> ListarPorIdAsync(int id)
        {
            var os = await _osRepo.ObterPorIdAsync(id);

            return os is null ? null : MapToDto(os);
        }

        public async Task<OrdemServicoResponseDto?> ListarPorHashExternoAsync(string hashExterno, string docFinal)
        {
            if (string.IsNullOrWhiteSpace(docFinal) || docFinal.Length != 3)
                return null;

            var os = await _osRepo.ObterPorComHashAsync(hashExterno);

            if (os is null)
                return null;

            var documento = os.Cliente?.CpfCnpj?.Value;

            if (!_validacaoAcessoExterno.ValidarDocumentoFinal(
                    documento!,
                    docFinal))
            {
                throw new Exception("OS não encontrada.");
            }

            return MapToDto(os);
        }

        public async Task IniciarDiagnosticoAsync(int osId)
        {
            var os = await _osRepo.ObterPorIdAsync(osId);

            if (os is null)
                throw new Exception("Ordem de Serviço não encontrada.");

            os.IniciarDiagnostico();

            await _osRepo.AtualizarAsync(os);
            await _osRepo.SalvarAsync();
        }

        public async Task EnviarOrcamentoAsync(int osId, CriarOrcamentoRequestDto dto)
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

                os.Orcamentos ??= new List<OrdemServicoOrcamento>();
                os.Orcamentos.Add(orcamento);

                os.EnviarOrcamento();

                foreach (var prod in dto.ProdutosOrcamentoOS)
                {
                    var produto = await _produtoRepo.ListarPorIdAsync(prod.ProdutoIdOrcamento);

                    if (produto is null)
                        throw new Exception("Produto não encontrado.");

                    var disponivel = produto.QuantidadeTotal - produto.QuantidadeReservada;

                    if (prod.QtdProdutoOrcamento > disponivel)
                        throw new Exception("Estoque insuficiente.");

                    produto.QuantidadeReservada += prod.QtdProdutoOrcamento;

                    await _produtoRepo.AtualizarAsync(produto);

                    var produtoEntity = new OrdemServicoProduto
                    {
                        OSId = os.Id,
                        OSOrcamentoId = orcamento.Id,
                        ProdutoId = prod.ProdutoIdOrcamento,
                        Quantidade = prod.QtdProdutoOrcamento,
                        PrecoPraticado = prod.PrecoUnitarioProdutoOrcamento,
                        StatusItem = StatusItemProduto.Reservado
                    };

                    await _osProdRepo.AdicionarAsync(produtoEntity);

                    orcamento.Produtos ??= new List<OrdemServicoProduto>();
                    orcamento.Produtos.Add(produtoEntity);
                }

                foreach (var serv in dto.ServicosOrcamentoOS)
                {
                    var servicoEntity = new OrdemServicoServico
                    {
                        OSId = os.Id,
                        OSOrcamentoId = orcamento.Id,
                        ServicoId = serv.ServicoIdOrcamento,
                        PrecoPraticado = serv.PrecoServicoOrcamento
                    };

                    await _osServRepo.AdicionarAsync(servicoEntity);

                    orcamento.Servicos ??= new List<OrdemServicoServico>();
                    orcamento.Servicos.Add(servicoEntity);
                }

                await _osRepo.AtualizarAsync(os);

                await _uow.CommitAsync();
            }
            catch
            {
                await _uow.RollbackAsync();
                throw;
            }
        }
        public async Task DecidirOrcamentoPorHashExternoAsync(
            string hashExterno,
            string docFinal,
            int orcamentoId,
            DecisaoOrcamentoRequestDto dto)
        {
            await _uow.BeginTransactionAsync();

            try
            {
                docFinal = new string(docFinal.Where(char.IsDigit).ToArray());

                if (docFinal.Length != 3)
                    throw new Exception("OS ou Orçamento não encontrado.");

                var os = await _osRepo.ObterPorComHashAsync(hashExterno);

                if (os is null)
                    throw new Exception("OS ou Orçamento não encontrado.");

                var documento = os.Cliente?.CpfCnpj?.Value;

                if (!_validacaoAcessoExterno.ValidarDocumentoFinal(
                        documento!,
                        docFinal))
                {
                    throw new Exception("OS não encontrada.");
                }

                var orcamento = await _orcRepo.ObterPorIdAsync(orcamentoId);

                if (orcamento is null || orcamento.OSId != os.Id)
                    throw new Exception("OS ou Orçamento não encontrado.");

                if (orcamento.StatusOrcamento != StatusOrcamento.Pendente)
                    throw new Exception("Este orçamento já foi processado.");

                var produtosDoOrcamento = await _osProdRepo.ListarPorOrcamentoIdAsync(orcamentoId);

                if (dto.Aprovar)
                {
                    orcamento.StatusOrcamento = StatusOrcamento.Aprovado;
                    orcamento.DataAprovacaoOrcamento = DateTime.UtcNow;

                    os.ExecutarOS();

                    foreach (var itemOS in produtosDoOrcamento)
                    {
                        itemOS.StatusItem = StatusItemProduto.Confirmado;
                        await _osProdRepo.AtualizarAsync(itemOS);

                        var produto = await _produtoRepo.ListarPorIdAsync(itemOS.ProdutoId);
                        if (produto != null)
                        {
                            if (produto.QuantidadeTotal < itemOS.Quantidade)
                                throw new Exception("Estoque insuficiente.");

                            produto.QuantidadeTotal -= itemOS.Quantidade;
                            produto.QuantidadeReservada -= itemOS.Quantidade;

                            await _produtoRepo.AtualizarAsync(produto);
                        }
                    }
                }
                else
                {
                    orcamento.StatusOrcamento = StatusOrcamento.Reprovado;

                    foreach (var itemOS in produtosDoOrcamento)
                    {
                        itemOS.StatusItem = StatusItemProduto.Cancelado;
                        await _osProdRepo.AtualizarAsync(itemOS);

                        var produto = await _produtoRepo.ListarPorIdAsync(itemOS.ProdutoId);
                        if (produto != null)
                        {
                            produto.QuantidadeReservada -= itemOS.Quantidade;
                            await _produtoRepo.AtualizarAsync(produto);
                        }
                    }
                }

                await _orcRepo.AtualizarAsync(orcamento);
                await _osRepo.AtualizarAsync(os);

                await _uow.CommitAsync();
            }
            catch
            {
                await _uow.RollbackAsync();
                throw;
            }
        }

        public async Task CancelarOrdemServicoPorHashExternoAsync(
            string hashExterno,
            string docFinal)
        {
            await _uow.BeginTransactionAsync();

            try
            {
                // 🔹 sanitiza doc
                docFinal = new string(docFinal.Where(char.IsDigit).ToArray());

                if (docFinal.Length != 3)
                    throw new Exception("OS não encontrada.");

                var os = await _osRepo.ObterPorComHashAsync(hashExterno);

                if (os is null)
                    throw new Exception("OS não encontrada.");

                var documento = os.Cliente?.CpfCnpj?.Value;

                if (!_validacaoAcessoExterno.ValidarDocumentoFinal(
                        documento!,
                        docFinal))
                {
                    throw new Exception("OS não encontrada.");
                }

                os.Cancelar();

                await _osRepo.AtualizarAsync(os);

                await _uow.CommitAsync();
            }
            catch
            {
                await _uow.RollbackAsync();
                throw;
            }
        }

        public async Task ExecutarServicoLogAsync(int osId, int orcId, int servId, ExecutarServicoLogRequestDto dto)
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

                StatusServicoLog.Terminar =>
                    ultimaAcao == StatusServicoLog.Iniciar ||
                    ultimaAcao == StatusServicoLog.Pausar,

                _ => false
            };

            System.Diagnostics.Debug.WriteLine($"Pode executar: {podeExecutar}");

            if (!podeExecutar)
                throw new Exception($"Ação inválida para o estado atual do serviço: {ultimaAcao}");

            try
            {
                var novoLog = new OrdemServicoServicoLog
                {
                    OSId = os.Id,
                    OSServicoId = servico.Id,
                    AcaoLog = dto.Acao,
                    DataCriacao = DateTime.UtcNow
                };

                await _osLogRepo.AdicionarAsync(novoLog);

                await _uow.CommitAsync();
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

            os.Cancelar();
            await _uow.CommitAsync();
        }

        public async Task FinalizarOSAsync(int osId)
        {
            var os = await _osRepo.ObterComServicosAsync(osId)
                ?? throw new Exception("OS não encontrada");

            os.Finalizar();

            await _osRepo.AtualizarAsync(os);
            await _uow.CommitAsync();
        }

        public async Task EntregarOSAsync(int osId)
        {
            var os = await _osRepo.ObterPorIdAsync(osId)
                ?? throw new Exception("OS não encontrada");

            os.Entregar();

            await _osRepo.AtualizarAsync(os);
            await _uow.CommitAsync();
        }

        private List<TempoMedioServicoResponseDto> CalcularTempoMedioPorServico(List<OrdemServicoServicoLog> logs)
        {
            var result = new List<TempoMedioServicoResponseDto>();

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
                            x.AcaoLog == StatusServicoLog.Terminar);

                    if (fim is null)
                        continue;

                    var minutos = (fim.DataCriacao - inicio).TotalMinutes;
                    pares.Add(minutos);
                }

                var servico = grupo.First().OrdemServicoServico.Servico;

                result.Add(new TempoMedioServicoResponseDto
                {
                    Servico = servico.Descricao,
                    MediaMinutos = pares.Count == 0 ? 0 : pares.Average(),
                    TotalExecucoes = pares.Count
                });
            }

            return result;
        }

        private async Task<TempoMedioOSResponseDto> CalcularTempoMedioPorOSAsync()
        {
            var osList = await _osRepo.ObterFinalizadasAsync();

            var tempos = osList
                .Where(x => x.DataFinalizacao != null)
                .Select(x => (x.DataFinalizacao!.Value - x.DataCriacao).TotalMinutes)
                .ToList();

            return new TempoMedioOSResponseDto
            {
                MediaMinutos = tempos.Count == 0 ? 0 : tempos.Average(),
                TotalOS = tempos.Count
            };
        }

        public async Task<RelatorioTempoMedioResponseDto> GetTempoMedioExecucaoAsync()
        {
            var logs = await _osLogRepo.ObterLogsServicosAsync();

            var porServico = CalcularTempoMedioPorServico(logs);
            var porOS = await CalcularTempoMedioPorOSAsync();

            return new RelatorioTempoMedioResponseDto
            {
                PorServico = porServico,
                PorOS = porOS
            };
        }
    }
}