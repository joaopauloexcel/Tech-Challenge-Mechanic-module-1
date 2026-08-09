resource "kubernetes_manifest" "configmap" {
  manifest = yamldecode(file("${path.module}/../k8s/configmap.yaml"))
}

resource "kubernetes_manifest" "secret" {
  manifest = yamldecode(file("${path.module}/../k8s/secret.yaml"))

  computed_fields = [
    "metadata.labels",
    "metadata.annotations",
    "stringData"
  ]
}

# 🔹 PVC precisa vir antes do banco
resource "kubernetes_manifest" "pvc" {
  manifest = yamldecode(file("${path.module}/../k8s/pvc.yaml"))
}

# 🔹 Banco depende do secret e do PVC
resource "kubernetes_manifest" "db_deployment" {
  manifest = yamldecode(file("${path.module}/../k8s/db-deployment.yaml"))

  depends_on = [
    kubernetes_manifest.secret,
    kubernetes_manifest.pvc
  ]
}

resource "kubernetes_manifest" "db_service" {
  manifest = yamldecode(file("${path.module}/../k8s/db-service.yaml"))

  depends_on = [
    kubernetes_manifest.db_deployment
  ]
}

# 🔹 API depende de tudo que ela usa
resource "kubernetes_manifest" "api_deployment" {
  manifest = yamldecode(file("${path.module}/../k8s/api-deployment.yaml"))

  depends_on = [
    kubernetes_manifest.configmap,
    kubernetes_manifest.secret,
    kubernetes_manifest.db_service
  ]
}

resource "kubernetes_manifest" "api_service" {
  manifest = yamldecode(file("${path.module}/../k8s/api-service.yaml"))

  depends_on = [
    kubernetes_manifest.api_deployment
  ]
}

# 🔹 HPA sempre por último
resource "kubernetes_manifest" "hpa" {
  manifest = yamldecode(file("${path.module}/../k8s/hpa.yaml"))

  depends_on = [
    kubernetes_manifest.api_deployment
  ]
}