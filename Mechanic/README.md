# 🛠️ Sistema de Oficina Mecânica - API .NET

Este projeto é uma API REST desenvolvida em .NET para gerenciamento de uma oficina mecânica, com foco em boas práticas de arquitetura de software, separação de responsabilidades e escalabilidade.

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
___


## 👨‍💻 Autor

- Desenvolvido por ***João Paulo Seixas da Silva***