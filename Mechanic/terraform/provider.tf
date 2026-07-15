provider "aws" {
  region = "us-east-1"
}

# Coleta dados da AWS apenas se NÃO estivermos no modo local
data "aws_eks_cluster" "cluster" {
  count      = var.is_local ? 0 : 1
  name       = "mechanic-cluster" # Nome direto evita nós cego de dependência
}

data "aws_eks_cluster_auth" "cluster" {
  count      = var.is_local ? 0 : 1
  name       = "mechanic-cluster"
}

# O provedor se adapta dinamicamente ao ambiente selecionado
provider "kubernetes" {
  # Modo Local (Minikube / Docker Desktop)
  config_path = var.is_local ? var.kubeconfig_path : null

  # Modo Nuvem (AWS EKS) - SINTAXE CORRETA COM ÍNDICE DA LISTA:
  host                   = var.is_local ? null : data.aws_eks_cluster.cluster[0].endpoint
  cluster_ca_certificate = var.is_local ? null : base64decode(data.aws_eks_cluster.cluster[0].certificate_authority[0].data)
  token                  = var.is_local ? null : data.aws_eks_cluster_auth.cluster[0].token
}