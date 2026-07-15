variable "is_local" {
  type        = bool
  description = "Define se o deploy é local (true) ou na AWS (false)"
  default     = true # Por padrão, roda local na sua máquina
}

variable "kubeconfig_path" {
  type        = string
  description = "Caminho do arquivo kubeconfig para o ambiente local"
  default     = "~/.kube/config"
}