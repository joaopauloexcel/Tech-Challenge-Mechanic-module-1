# 🛠️ Sistema de Oficina Mecânica - API .NET

Este projeto é uma API REST desenvolvida em .NET para gerenciamento de uma oficina mecânica, com foco em boas práticas de arquitetura de software, separação de responsabilidades e escalabilidade.

---

## 🎯 Objetivo do Projeto

O sistema tem como objetivo gerenciar todo o fluxo de uma oficina mecânica, incluindo:

- Cadastro de clientes
- Cadastro de veículos
- Controle de ordens de serviço (OS)
- Gestão de orçamentos
- Controle de produtos e serviços
- Fluxo completo de atendimento (diagnóstico → orçamento → execução → entrega)

---

## 🧱 Arquitetura

O projeto foi desenvolvido utilizando uma arquitetura em camadas (Clean Architecture simplificada):

- Presentation → Endpoints (Minimal APIs)
- Application → Serviços e DTOs
- Domain → Entidades e regras de negócio
- Infrastructure → Acesso a dados (Entity Framework Core)

---

## 🔐 Autenticação

O sistema utiliza autenticação baseada em JWT (JSON Web Token).

- Login via endpoint: /api/auth/login
- Proteção de endpoints com RequireAuthorization()

---

## 📚 Documentação da API

A API está documentada com Swagger / OpenAPI.

Após executar o projeto, acesse:

http://localhost:5195/swagger

---

## 🧰 Tecnologias utilizadas

- .NET 8
- ASP.NET Core Minimal APIs
- Entity Framework Core
- SQL Server
- JWT Authentication
- Swagger / OpenAPI
- C#

---

## 🚀 Como executar o projeto

### 1. Clonar o repositório

git clone https://github.com/joaopauloexcel/Tech-Challenge-Mechanic-module-1.git

### 2. Acessar a pasta do projeto

cd Tech-Challenge-Mechanic-module-1

### 3. Restaurar dependências

dotnet restore

### 4. Configurar o banco de dados

Edite o arquivo appsettings.json:

{
  "ConnectionStrings": {
    "DefaultConnection": "Host=localhost;Database=mechanic;Username=postgres;Password=sua_senha"
  }
}

### 5. Executar migrations

dotnet ef database update

### 6. Executar o projeto

dotnet run

### 7. Acessar a aplicação

API:
http://localhost:5195

Swagger:
http://localhost:5195/swagger

---

## 🧪 Testes das rotas

O projeto pode ser testado também via arquivos .http (REST Client no VS Code ou Rider).

---

## 👨‍💻 Autor

Desenvolvido por João Paulo Seixas da Silva  
Projeto acadêmico focado em arquitetura de software e desenvolvimento backend com .NET
