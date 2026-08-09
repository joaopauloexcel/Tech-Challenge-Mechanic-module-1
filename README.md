# 🛠️ Sistema de Oficina Mecânica - API .NET

Este projeto é uma API REST desenvolvida em .NET para gerenciamento de uma oficina mecânica, com foco em boas práticas de arquitetura de software, separação de responsabilidades e escalabilidade.

---

## 🎯 Usuário root API Auth

* **User:** admin
* **Password:** 123456

---

# 🚀 Tech Challenge - Mechanic API

Projeto desenvolvido como parte do Tech Challenge, com foco em boas práticas de engenharia de software, DevOps e arquitetura moderna.

---

## 🧱 Arquitetura do Projeto

O sistema foi estruturado com os seguintes pilares:

* **Containerização:** Docker
* **Orquestração:** Kubernetes (Minikube - ambiente local)
* **Infraestrutura como Código:** Terraform (Kubernetes Provider)
* **CI/CD:** GitHub Actions

> ⚠️ Optou-se por utilizar **cluster local (Minikube)** para evitar custos com cloud (AWS), mantendo a mesma arquitetura que seria usada em ambientes produtivos como EKS.

---

## 🐳 Containerização

A aplicação está totalmente containerizada utilizando Docker.

### ✔️ Dockerfile

Responsável por build e execução da API .NET.

### ✔️ docker-compose

Utilizado para desenvolvimento local com:

* API
* SQL Server

Executar:

```bash
docker-compose up --build
```

---

## ☸️ Kubernetes (Minikube)

Os manifestos Kubernetes estão na pasta:

```
/Mechanic/k8s
```

### Recursos criados:

* **Deployment**

  * API (`mechanic-api`)
  * Banco (`mechanic-db`)

* **Services**

  * API (NodePort)
  * Banco (ClusterIP)

* **ConfigMap**

  * Variáveis de ambiente

* **Secret**

  * Connection string

* **Persistent Volume Claim (PVC)**

  * Persistência de dados do banco

* **HPA (Horizontal Pod Autoscaler)**

  * Escala automática baseada em CPU e memória

---

## ⚙️ HPA (Escalabilidade)

O autoscaling da API é feito utilizando o Horizontal Pod Autoscaler.

### Requisitos para funcionamento:

No Minikube, é necessário habilitar o **metrics-server**:

```bash
minikube addons enable metrics-server
```

### Verificar funcionamento:

```bash
kubectl get hpa
```

---

## 🏗️ Infraestrutura como Código (Terraform)

Terraform é utilizado para gerenciar os recursos Kubernetes localmente.

📁 Localização:

```
/Mechanic/terraform
```

### Funcionalidades:

* Criação dos recursos Kubernetes via `kubernetes_manifest`
* Gerenciamento de:

  * Deployments
  * Services
  * ConfigMap
  * Secret
  * PVC
  * HPA
* Organização declarativa da infraestrutura
* Reprodutibilidade do ambiente

---

## ▶️ Execução Local Completa

Siga os passos abaixo para rodar toda a aplicação com Kubernetes local:

---

### 📌 Pré-requisitos

* Docker instalado
* Minikube instalado
* Kubectl instalado
* Terraform instalado

---

### 🚀 1. Iniciar o cluster Kubernetes

```bash
minikube start
```

---

### ⚙️ 2. Habilitar métricas (necessário para HPA)

```bash
minikube addons enable metrics-server
```

---

### 🏗️ 3. Provisionar infraestrutura com Terraform

```bash
cd Mechanic/terraform

terraform init
terraform apply -var="is_local=true"
```

---

### 🌐 4. Acessar a aplicação

```bash
minikube service mechanic-api-service
```

---

### 🛑 Parar o ambiente

```bash
minikube stop
```

---

### 🧹 Destruir recursos

```bash
terraform destroy -var="is_local=true"
```

---

## 🔄 CI/CD (GitHub Actions)

O pipeline foi dividido em 3 etapas:

---

### 🧪 1. CI (Build e Testes)

Arquivo: `ci.yaml`

Executa automaticamente a cada push na branch `main`.

Etapas:

* Restore do projeto
* Build da aplicação
* Execução dos testes automatizados

---

### 📦 2. Deploy (Simulado)

Arquivo: `deploy.yaml`

Executa após o CI.

Etapas:

* Build da imagem Docker
* Push para Docker Hub
* Simulação de deploy Kubernetes

```bash
kubectl apply -f ./Mechanic/k8s/
```

> ⚠️ Deploy real não é executado para evitar custos com cloud.

---

### 🏗️ 3. Infra (Terraform Local)

Arquivo: `infra.yaml`

Executado manualmente (`workflow_dispatch`).

Etapas:

* Terraform init
* Terraform validate
* Terraform plan

---

## 💰 Sobre custos (AWS)

Este projeto foi adaptado para rodar **100% local**, evitando:

* Custos com EKS
* NAT Gateway (principal fonte de cobrança 💸)
* EC2
* Load Balancer

A arquitetura permanece compatível com cloud, podendo ser migrada futuramente.

---

## 📌 Conclusão

O projeto atende aos requisitos do Tech Challenge:

✅ Containerização com Docker
✅ Orquestração com Kubernetes
✅ Infraestrutura como código com Terraform
✅ Pipeline CI/CD funcional
✅ Banco com persistência (PVC)
✅ Escalabilidade com HPA
✅ Arquitetura pronta para cloud (sem custos atuais)


---
# Fase 1

## 📘 Dicionário de Linguagem Ubíqua

Este documento define os principais termos do domínio utilizados no sistema, garantindo alinhamento entre negócio, código e comunicação.

### Termos do Sistema

#### 🔧 Ordem de Serviço (OS)

Representa um atendimento realizado pela oficina para um cliente.

- Possui cliente e veículo associados  
- Evolui por estados (status)  
- Pode conter múltiplos orçamentos  

#### 📊 Status da Ordem de Serviço

| Status           | Descrição                              |
|------------------|----------------------------------------|
| Recebida         | OS criada, aguardando diagnóstico      |
| EmDiagnostico    | Problema sendo analisado               |
| EmAprovacao      | Aguardando decisão do cliente          |
| EmExecucao       | Serviços sendo realizados              |
| Finalizada       | Serviços concluídos                    |
| Entregue         | Veículo entregue ao cliente            |
| Cancelada        | OS encerrada sem execução              |

#### 💰 Orçamento

Proposta de serviços e produtos para execução na OS.

- Pode ser **Pendente**, **Aprovado** ou **Reprovado**  
- Pode conter múltiplos serviços e produtos  

#### 📊 Status do Orçamento

| Status    | Descrição                         |
|-----------|----------------------------------|
| Pendente  | Aguardando decisão do cliente    |
| Aprovado  | Autorizado para execução         |
| Reprovado | Recusado pelo cliente            |

#### 🛠️ Serviço

Atividade executada na OS (ex: troca de óleo).

- Possui preço praticado no orçamento  
- Pode ter logs de execução  

#### 📦 Produto

Item físico utilizado na execução (ex: filtro de óleo).

- Pode ser reservado  
- Pode ser baixado do estoque após aprovação  

#### 📋 Item de Produto (na OS)

Representa um produto dentro de um orçamento.

| Status     | Descrição                |
|------------|--------------------------|
| Reservado  | Separado no estoque      |
| Confirmado | Baixado do estoque       |
| Cancelado  | Reserva desfeita         |

#### ⏱️ Log de Serviço

Registro de execução de um serviço.

| Ação     | Descrição                         |
|----------|----------------------------------|
| Iniciar  | Início da execução               |
| Pausar   | Interrupção temporária           |
| Terminar | Finalização do serviço           |

#### 🔐 Hash Público (PublicToken)

Identificador único da OS para acesso externo.

- Usado pelo cliente  
- Evita exposição de IDs internos  
- Permite consulta pública da OS  

#### 🎯 Regras de Negócio Importantes

- Uma OS só pode iniciar diagnóstico se estiver **Recebida**  
- Um orçamento só pode ser decidido se estiver **Pendente**  
- A OS só pode ser finalizada se:
  - Não houver orçamento pendente  
  - Todos os serviços estiverem finalizados  
- Produtos só são baixados do estoque após aprovação  
- O cliente interage via **hash público**, nunca via ID  

#### 🧠 Observação

Todos os nomes de:

- Entidades  
- DTOs  
- Endpoints  
- Testes  

seguem essa linguagem, garantindo consistência entre código e domínio.

---

## 🎯 Objetivo do Projeto

O sistema tem como objetivo gerenciar todo o fluxo de uma oficina mecânica, incluindo:

- **Gestão de Ordens de Serviço (OS):**
  - Fluxo completo de atendimento (diagnóstico → orçamento → execução → entrega)

- **Gestão de Orçamentos e Estoque:**
  - Gestão de orçamentos
  - Controle de produtos e serviços

- **Gestão Administrativa:**
  - Cadastro de clientes
  - Cadastro de veículos 
  - Monitoramento do tempo médio de execução dos serviços

---

## 🧱 Arquitetura

O projeto foi desenvolvido utilizando arquitetura em camadas (Clean Architecture simplificada):

- Presentation → Endpoints (Minimal APIs)
- Application → Serviços e DTOs
- Domain → Entidades e regras de negócio
- Infrastructure → Acesso a dados (Entity Framework Core)

---

## 🔐 Autenticação

O sistema possui dois níveis de acesso distintos.

- **Área Administrativa (Interna):**
  - Autenticação baseada em JWT (JSON Web Token) 
  - Proteção de endpoints com RequireAuthorization()
  - Login via endpoint: /api/auth/login
  - Apenas colaboradores acessem o painel da oficina.

- **Portal do Cliente (Externo):**
  - Identificação: PublicHash de 32 bits gerado automaticamente na criação da Ordem de Serviço (OS)
  - Acesso: Consulta via URL pública utilizando o hash como identificador único.
  - Ações: Aprovação/Reprovação realizada via método PATCH.
  - Segurança Adicional: Camada extra de proteção nas APIs públicas exigindo o envio dos 3 últimos dígitos do CPF/CNPJ do cliente no corpo da requisição para validar a operação.
 
---

## 🧰 Principais tecnologias utilizadas

- .NET 10
- ASP.NET Core Minimal APIs
- Entity Framework Core
- SQL Server
- JWT Authentication
- Swagger / OpenAPI
- Docker
- SonarQube
- Coverage

---

## 🚀 Como executar o projeto

### 1. Clonar o repositório

- git clone https://github.com/joaopauloexcel/Tech-Challenge-Mechanic-module-1.git

### 2. Acessar a pasta do projeto

```
cd Tech-Challenge-Mechanic-module-1
cd Mechanic
```

### 3. Restaurar dependências

```
dotnet restore
```

### 4. Configurar o banco de dados

- Edite o arquivo appsettings.json:

```
{
  "ConnectionStrings": {
    "DefaultConnection": "Host=localhost;Database=mechanic;Username=SEU_USUARIO;Password=SUA_SENHA"
  }
}
```

### 5. Executar migrations

```
dotnet ef database update
```

### 6. Executar o projeto

```
dotnet run
```

### 7. Acessar a aplicação

http://localhost:5195

### 8. Documentação das APIs

- As APIs estão documentadas com Swagger / OpenAPI.
- Após executar o projeto, acesse: http://localhost:5195/swagger/index.html

### 9. SonarQube + Coverage

- Instale o SonarQube localmente ou utilize uma instância online.

```
dotnet tool install --global dotnet-sonarscanner
```

- Caso execute localmente, inicie a aplicação do SonarQube com docker:

```

run -d --name sonarqube -p 9000:9000 sonarqube:lts
```

- Em seguida, acesse: http://localhost:9000 (Geralmente, o login é default "admin/admin")
- Em My Account > Security > Generate Tokens, gere o _SEU_TOKEN_SONAR_ de acesso para autenticação do SonarScannner.

- Inicie a análise do projeto com o SonarScanner:

```
dotnet sonarscanner begin /k:"Mechanic" /d:sonar.host.url="http://localhost:9000" /d:sonar.login="SEU_TOKEN_SONAR" /d:sonar.cs.opencover.reportsPaths="CAMINHO_ABSOLUTO_DO_SEU_XML_COVERAGE.xml"
```

- Execute build do projeto:

```
dotnet build
```

- Execute o coverage para gerar/atualizar o xml de cobertura de testes unitários:

```
dotnet test /p:CollectCoverage=true /p:CoverletOutputFormat=opencover /p:CoverletOutput="CAMINHO_DE_NÍVEL_DO_SEU_XML_COVERAGE.xml"
```

- Finalize análise sonarQube local para análise na interface do Sonar:

```
dotnet sonarscanner end /d:sonar.login="SEU_TOKEN_SONAR"
```

---

## 📋 Qualidade e Segurança

### Testes unitários

```
dotnet test /p:CollectCoverage=true /p:CoverletOutputFormat=opencover /p:CoverletOutput=./coverage/coverage.xml
reportgenerator -reports:"coverage/coverage.xml" -targetdir:"coveragereport"
```

<img width="1657" height="581" alt="Captura de tela 2026-05-13 014954" src="https://github.com/user-attachments/assets/0073012c-3000-49a3-88e8-e935f148c5a5" />
<img width="1636" height="915" alt="Captura de tela 2026-05-13 015023" src="https://github.com/user-attachments/assets/92da0c41-77fb-4182-9a93-8dd6064c04e6" />

###  Scanning OWASP ZAP

```
dotnet run
docker run -t -v ${PWD}:/zap/wrk ghcr.io/zaproxy/zaproxy zap-full-scan.py -t http://host.docker.internal:5195 -r report.html
```

<img width="1139" height="854" alt="image" src="https://github.com/user-attachments/assets/99b70834-9ac0-410c-bb08-86aeeec45c2f" />
<img width="1138" height="905" alt="image" src="https://github.com/user-attachments/assets/66cf9177-4b3f-4b8b-8865-8bf0e37ed4cf" />

___


## 👨‍💻 Autor

- Desenvolvido por ***João Paulo Seixas da Silva***
