# 🎉 v1.0.0 - Versão Inicial - Estrutura Base do Banco de Dados

## 📋 Descrição
Primeira versão do projeto Projeto-sql-banco com a estrutura completa do banco de dados SQL e scripts iniciais de população de dados.

## ✨ Novas Features

### 📊 Tabelas Criadas
- **estado** - Registro de estados brasileiros (SP, RJ, etc)
- **unidade** - Unidades de medida (Metro, Kilo, Peça, Unidade)
- **vendedor** - Cadastro de vendedores
- **transporte** - Tipos de transporte (Correios, etc)
- **pagamento** - Formas de pagamento (PIX, À vista, etc)
- **produto** - Catálogo de produtos com preço
- **cliente** - Dados de clientes com CNPJ
- **cliente_email** - Múltiplos emails por cliente
- **cliente_fone** - Múltiplos telefones por cliente
- **pedido** - Registro de pedidos dos clientes
- **pedido_produto** - Itens de cada pedido

### 🔧 Funcionalidades
- ✅ Relacionamentos com chaves estrangeiras
- ✅ Auto-incremento de IDs
- ✅ Suporte a múltiplos contatos por cliente (emails e telefones)
- ✅ Controle de pedidos e itens de pedidos
- ✅ Scripts DML prontos para testes

## 📝 Scripts Inclusos
- `projeto-sql-banco-de-dados.sql` - Script completo com DDL e DML
- `README.md` - Documentação do projeto

## 🧪 Como Usar
1. Importar o arquivo `projeto-sql-banco-de-dados.sql` no seu banco MySQL
2. Executar os comandos para visualizar os dados inseridos
3. Testar queries de select, insert, update e delete

## 📦 Recursos do Banco
- **Total de Tabelas**: 11
- **Relacionamentos**: Chaves estrangeiras configuradas
- **Dados de Exemplo**: Inclusos para testes

## 🐛 Notas Importantes
- Banco criado em MySQL
- Usar database: `dbpedido2sem2026_v2`
- Alguns campos permitem valores vazios (campos opcionais)
- Suporta múltiplos contatos por cliente

---

**Desenvolvedor**: João S. Jesus  
**Data de Criação**: 2026-09-01  
**Status**: ✅ Estável
