# Wink API - Java 👀

Este repositório contém a aplicação **Wink**, uma API desenvolvida em Java, utilizando **Spring Boot**, com integração a um banco de dados Oracle.

## 📋 Requisitos

- **Java 17** ou superior
- **Maven 3.6+**
- **Oracle Database** (ou outra solução compatível)
- **Postman** ou ferramenta similar para testar as APIs (opcional)

## ⚙️ Configuração do Projeto

### 1. Clonando o repositório

Primeiro, você precisa clonar este repositório para sua máquina local:

```bash
git clone https://github.com/lucasrabd/Wink-Java-Deploy.git
```

### 2. Configurando o banco de dados

No arquivo `src/main/resources/application.properties`, configure a string de conexão e credenciais para o banco de dados Oracle:

```properties
spring.datasource.url=jdbc:oracle:thin:@oracle.fiap.com.br:1521:ORCL
spring.datasource.username=RM550519
spring.datasource.password=020403
spring.jpa.hibernate.ddl-auto=update
```

> **Nota:** Ajuste as informações de URL, username e senha de acordo com sua instância do Oracle.

### 3. Compilando o projeto

Após configurar o banco de dados, compile o projeto com Maven:

```bash
mvn clean install
```

### 4. Executando a aplicação

Execute a aplicação com o seguinte comando:

```bash
mvn spring-boot:run
```

A API estará disponível no endereço: `http://localhost:8080`.

## 🚀 Testando a API

Aqui estão alguns exemplos de como você pode testar os endpoints da API utilizando o **Postman** ou **cURL**.

### 1. Criar um pedido (POST)

```bash
POST http://localhost:8080/pedido/save
Content-Type: application/json

{
  "pedido_status": "Pendente",
  "pedido_data": "2024-09-13",
  "pedido_cliente_id": 12345,
  "pedido_vlr_total": 299.99
}
```

### 2. Listar todos os pedidos (GET)

```bash
GET http://localhost:8080/pedido/list
```

### 3. Atualizar um pedido (PUT)

```bash
PUT http://localhost:8080/pedido/atualiza_pedido/{pedido_id}
Content-Type: application/json

{
  "pedido_status": "Concluído",
  "pedido_data": "2024-09-13",
  "pedido_cliente_id": 12345,
  "pedido_vlr_total": 399.99
}
```

### 4. Deletar um pedido (DELETE)

```bash
DELETE http://localhost:8080/pedido/delete/{pedido_id}
```

## ☁️ Como realizar o deploy no Azure

### Passos para Deploy:

1. **Crie um serviço App Service no Azure:**
   - Escolha **Java 17** como runtime.
   - Selecione **Maven** para a build.

2. **Configurar o Deploy contínuo:**
   - Conecte o **Azure App Service** ao seu repositório no GitHub.
   - Configure o deploy automático a partir do branch principal do repositório.

3. **Publicação:**
   - Após a configuração, o deploy será feito automaticamente cada vez que você fizer o push para o repositório GitHub.

Para mais detalhes sobre como realizar o deploy, consulte a [documentação oficial do Azure App Service](https://learn.microsoft.com/en-us/azure/app-service/quickstart-java?tabs=javase&pivots=platform-linux).

## 📂 Estrutura do Projeto

```bash
├── src
│   ├── main
│   │   ├── java
│   │   │   └── br
│   │   │       └── com
│   │   │           └── fiap
│   │   │               └── Wink
│   │   │                   ├── controller
│   │   │                   ├── model
│   │   │                   └── repository
│   └── test
├── pom.xml
└── README.md
```

## 💡 Dicas para o Professor/Testes

- Verifique as credenciais do banco de dados no arquivo `application.properties`.
- Utilize o Postman ou cURL para realizar as operações CRUD descritas acima.
- O banco de dados Oracle deve estar configurado e rodando.

## 📜 Licença

Este projeto é licenciado sob a [MIT License](LICENSE).

## 👥 Contribuidores

- **Lucas Carabolad** - [GitHub](https://github.com/lucasrabd)
