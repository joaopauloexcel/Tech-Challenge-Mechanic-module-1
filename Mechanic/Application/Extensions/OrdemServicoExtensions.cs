using Mechanic.Application.Enums;
using Mechanic.Domain.Entities;
using System.Linq.Expressions;

namespace Mechanic.Application.Extensions
{
    public static class OrdemServicoExtensions
    {
        public static Expression<Func<OrdemServico, int>> OrdenacaoStatusExpr =>
         x => x.Status == StatusOrdemServico.EmExecucao ? 1 :
           x.Status == StatusOrdemServico.EmAprovacao ? 2 :
           x.Status == StatusOrdemServico.EmDiagnostico ? 3 :
           x.Status == StatusOrdemServico.Recebida ? 4 :
           99;
    }
}