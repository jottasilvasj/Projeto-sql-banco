# Projeto SQL - Banco de Dados

## 📋 Descrição

Este projeto é um sistema de gerenciamento de pedidos implementado com SQL. Ele demonstra a criação de um banco de dados relacional completo com operações DML (Data Manipulation Language), incluindo inserção de dados em múltiplas tabelas com relacionamentos.

## 🎯 Objetivo

O projeto foi desenvolvido para praticar e demonstrar:
- Criação e manipulação de bancos de dados relacionais
- Uso de chaves estrangeiras
- Inserção de dados com e sem especificação de campos
- Auto-incremento de IDs
- Tratamento de tabelas com relacionamentos

## 🗂️ Estrutura do Projeto

```
Projeto-sql-banco/
├── README.md                              # Este arquivo
└── projeto-sql-banco-de-dados.sql        # Script principal com dados
```

## 📊 Arquitetura do Banco de Dados

### Tabelas Principais

#### 1. **ESTADO**
Armazena informações de estados/regiões
- `uf_id_est` (PK): Sigla do estado (ex: SP, RJ)
- `nome_est`: Nome completo do estado

#### 2. **UNIDADE**
Unidades de medida para produtos
- `sigla_id_un` (PK): Sigla da unidade (M, KG, PC, UN)
- `descricao_un`: Descrição da unidade

#### 3. **VENDEDOR**
Informações dos vendedores
- `id_vend` (PK, Auto-increment): ID do vendedor
- `nome_vend`: Nome do vendedor

#### 4. **TRANSPORTE**
Modalidades de transporte
- `id_trans` (PK, Auto-increment): ID do transporte
- `descricao_trans`: Descrição (ex: Correios)

#### 5. **PAGAMENTO**
Formas de pagamento
- `id_pag` (PK, Auto-increment): ID do pagamento
- `descricao_pag`: Descrição (ex: PIX, À Vista)

#### 6. **PRODUTO**
Catálogo de produtos
- `id_pro` (PK, Auto-increment): ID do produto
- `descricao_pro`: Descrição do produto
- `sigla_id_un` (FK): Referência à tabela UNIDADE
- `preco_pro`: Preço do produto

#### 7. **CLIENTE**
Informações de clientes
- `cnpj_id_cli` (PK): CNPJ do cliente
- `ie_cli`: Inscrição Estadual
- `nome_cli`: Nome da empresa
- `endereco_cli`: Rua e número
- `complemento_cli`: Complemento do endereço
- `bairro_cli`: Bairro
- `cidade_cli`: Cidade
- `uf_id_est` (FK): Referência à tabela ESTADO
- `telefone_cli`: Telefone principal

#### 8. **CLIENTE_EMAIL**
Email(s) dos clientes (relação 1:N)
- `cnpj_id_cli` (FK): Referência ao CLIENTE
- `email_cli_email`: Email do cliente

#### 9. **CLIENTE_FONE**
Telefone(s) dos clientes (relação 1:N)
- `cnpj_id_cli` (FK): Referência ao CLIENTE
- `ddd_cli_fone`: DDD
- `numero_cli_fone`: Número do telefone

#### 10. **PEDIDO**
Pedidos de clientes
- `id_ped` (PK, Auto-increment): ID do pedido
- `cnpj_id_cli` (FK): Referência ao CLIENTE
- `data_ped`: Data do pedido
- `id_vend` (FK): Referência ao VENDEDOR
- `id_trans` (FK): Referência ao TRANSPORTE
- `id_pag` (FK): Referência ao PAGAMENTO

#### 11. **PEDIDO_PRODUTO**
Itens de cada pedido (relação N:N)
- `id_ped` (FK): Referência ao PEDIDO
- `id_pro` (FK): Referência ao PRODUTO
- `quantidade_ped_pro`: Quantidade do produto no pedido
- `valor_unitario_ped_pro`: Valor unitário do produto no pedido

## 📝 Como Usar

### Pré-requisitos
- MySQL/MariaDB instalado
- Banco de dados `dbpedido2sem2026_v2` criado
- Acesso ao banco de dados com permissões de escrita

### Executar o Script

1. Abra seu cliente MySQL (ex: MySQL Workbench, PHPMyAdmin, etc.)
2. Selecione o banco de dados:
   ```sql
   USE dbpedido2sem2026_v2;
   ```
3. Execute o arquivo `projeto-sql-banco-de-dados.sql`
4. Verifique os dados inseridos com:
   ```sql
   SELECT * FROM estado;
   SELECT * FROM cliente;
   SELECT * FROM pedido;
   ```

## 🔍 Exemplos de Dados Inseridos

### Estados
- SP (São Paulo)
- RJ (Rio de Janeiro)

### Unidades de Medida
- M (Metro)
- KG (Quilo)
- PC (Peça)
- UN (Unidade)

### Clientes
- Empresa XYZ (CNPJ: 12186915000112)
- Loja da Vida (CNPJ: 78630279000184)
- Fabrica de Bolas x (CNPJ: 45691576000180)

### Produtos
- Barbante (3.50 R$ por Metro)
- Lápis (2.10 R$ por Unidade)

### Pedidos
- Pedido #1: Cliente Empresa XYZ com 2 produtos diferentes

## 💡 Conceitos Demonstrados

✅ **Inserção sem especificar campos**: Os campos seguem a ordem da criação da tabela
```sql
INSERT INTO estado VALUES ('SP','SÃO PAULO');
```

✅ **Inserção com AUTO-INCREMENT**: O valor NULL gera um ID automático
```sql
INSERT INTO vendedor VALUES (null, 'Jose da Silva');
```

✅ **Inserção especificando campos**: Maior controle e clareza
```sql
INSERT INTO pagamento (descricao_pag) VALUES ('A vista');
```

✅ **Chaves Estrangeiras**: Mantêm integridade referencial
```sql
INSERT INTO produto VALUES (null, 'Barbante','M', 3.50);
```

✅ **Relações 1:N**: Um cliente pode ter múltiplos emails e telefones
```sql
INSERT INTO cliente_email VALUES ('12186915000112','jose@empx.com.br');
INSERT INTO cliente_email VALUES ('12186915000112','pedro@empx.com.br');
```

✅ **Relações N:N**: Um pedido pode ter múltiplos produtos
```sql
INSERT INTO pedido_produto VALUES (1,2,2, 4.20);
INSERT INTO pedido_produto VALUES (1,1,1, 3.50);
```

## 🔗 Diagrama de Relacionamentos

```
ESTADO ──┐
         │
         └──── CLIENTE ──┬──── CLIENTE_EMAIL
                        │
                        └──── CLIENTE_FONE
                        │
                        └──── PEDIDO ──────┬──── VENDEDOR
                                          ├──── TRANSPORTE
                                          ├──── PAGAMENTO
                                          └──── PEDIDO_PRODUTO ──┬── PRODUTO
                                                                 │
                                                                 └── UNIDADE
```

## 📚 Comandos SQL Utilizados

- `INSERT INTO ... VALUES` - Inserção de registros
- `INSERT INTO ... SELECT` - Consultas de verificação
- `SELECT * FROM` - Visualização de dados
- `USE` - Seleção do banco de dados

## ✨ Melhorias Futuras

- [ ] Implementar UPDATE e DELETE
- [ ] Adicionar validações e constraints
- [ ] Criar stored procedures
- [ ] Adicionar índices para performance
- [ ] Implementar triggers
- [ ] Criar views para relatórios

## 📄 Licença

Este projeto é de código aberto e pode ser utilizado livremente para fins educacionais.

## 👤 Autor

**João S. Jesus**

---

*Última atualização: 2026-09-01*
