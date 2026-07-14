# Infraestrutura e Deploy Kubernetes com Terraform

Este diretório contém os arquivos de configuração do Terraform responsáveis por automatizar de forma unificada o provisionamento e o deploy dos manifestos Kubernetes (YAML) no cluster.

---

## 📦 Recursos Criados e Gerenciados

O Terraform gerencia a criação de **6 recursos** principais no cluster Kubernetes (Namespace: `default`). Abaixo está a relação detalhada de cada componente mapeado no `main.tf`:

1. **ConfigMap (`configmap.yaml`)**
   * Armazena variáveis de ambiente globais e configurações não sensíveis utilizadas pela API.
2. **Secret (`secret.yaml`)**
   * Armazena de forma segura a string de conexão (`connectionString`) do banco de dados (gerenciado automaticamente pelo Terraform através do campo `computed_fields`).
3. **Database Deployment (`db-deployment.yaml`)**
   * Provisiona o Pod do banco de dados SQL Server (`mechanic-db`).
   * *Dependência:* Aguarda a criação do `Secret` para iniciar.
4. **Database Service (`db-service.yaml`)**
   * Expõe o banco de dados internamente no cluster para que a API possa se conectar.
   * *Dependência:* Aguarda o `Database Deployment` estar pronto.
5. **API Deployment (`api-deployment.yaml`)**
   * Provisiona os Pods da aplicação principal (API).
   * *Dependência:* Só inicia após o `ConfigMap`, o `Secret` e o `Database Service` estarem disponíveis, garantindo que a aplicação não quebre ao tentar conectar no banco de dados.
6. **API Service (`api-service.yaml`)**
   * Expõe a API publicamente ou internamente para consumo externo.
   * *Dependência:* Aguarda o `API Deployment`.
7. **Horizontal Pod Autoscaler - HPA (`hpa.yaml`)**
   * Gerencia a escalabilidade automática dos Pods da API com base no uso de recursos.
   * *Dependência:* Vinculado diretamente ao `API Deployment`.

---

## 📋 Pré-requisitos

Antes de iniciar, certifique-se de possuir instalado:
* **[Terraform](https://terraform.io)** (Versão 1.0 ou superior)
* **[kubectl](https://kubernetes.io)** (Opcional, para validação)
* **Cluster Kubernetes Ativo** (Minikube, Docker Desktop, Kind ou Nuvem) com o contexto configurado no seu arquivo `~/.kube/config`.

---

## 🚀 Como Aplicar (Passo a Passo)

Siga os comandos abaixo no terminal, de dentro desta pasta (`/terraform`), para inicializar e aplicar a infraestrutura:

### 1. Inicializar o Ambiente
Baixa o provedor oficial do Kubernetes da HashiCorp e inicializa os módulos:
```bash
terraform init
```

### 2. Planejar a Execução
Gera um plano de execução mostrando exatamente os 6 recursos que serão injetados no cluster. Excelente para auditoria antes de aplicar:
```bash
terraform plan
```

### 3. Aplicar e Realizar o Deploy
Aplica as configurações no cluster. O terminal exibirá o progresso respeitando a ordem de dependências estruturada. Digite `yes` quando solicitado para confirmar:
```bash
terraform apply
```

*(Caso o cluster possua resquícios de deploys manuais anteriores e ocorra erro de "Resource already exists", limpe o ambiente executando `kubectl delete -f ../k8s/` antes do apply).*

---

## 🔍 Como Validar o Deploy

Após o sucesso do comando do Terraform, você pode validar se todos os recursos foram criados corretamente rodando:

```bash
# Verificar se todos os Pods (API e Banco) estão em formato 'Running'
kubectl get pods

# Verificar os IPs e portas de comunicação criados
kubectl get services

# Verificar as regras do Autoscaler
kubectl get hpa
```

---

## 🗑️ Como Destruir a Infraestrutura

Para remover todos os recursos criados de forma limpa e automática, sem deixar resquícios no cluster, execute:
```bash
terraform destroy
```
---
## Como Testar a API (Swagger)

Após validar que os serviços estão de pé, a API estará exposta através do serviço `NodePort` na porta **30007**.

### Acesso Direto (Docker Desktop)
Se estiver utilizando o Docker Desktop, acesse diretamente pelo navegador:
* `http://localhost:30007/swagger/index.html`

### Acesso via Minikube
Caso esteja utilizando o Minikube ou a porta local não responda direto, crie um túnel de redirecionamento executando:
```bash
kubectl port-forward service/mechanic-api-service 8080:80
```
Em seguida, acesse a documentação da API em:
* 👉 `http://localhost:8080/swagger/index.html`

##### OBS: (Se o Swagger abrir, o problema era apenas a rede do Kubernetes/Minikube que não estava repassando a porta 30007 para a sua máquina física).
