provider "aws" {
  region = "us-east-1"
}

data "aws_eks_cluster" "cluster" {
  count      = var.is_local ? 0 : 1
  name       = module.eks.cluster_name
  depends_on = [module.eks]
}

data "aws_eks_cluster_auth" "cluster" {
  count      = var.is_local ? 0 : 1
  name       = module.eks.cluster_name
  depends_on = [module.eks]
}

provider "kubernetes" {
  # Modo Local (Minikube / Docker Desktop)
  config_path = var.is_local ? var.kubeconfig_path : null

  # Modo Nuvem (AWS EKS)
  host                   = var.is_local ? null : data.aws_eks_cluster.cluster[0].endpoint
  cluster_ca_certificate = var.is_local ? null : base64decode(data.aws_eks_cluster.cluster[0].certificate_authority[0].data)
  token                  = var.is_local ? null : data.aws_eks_cluster_auth.cluster[0].token
}
