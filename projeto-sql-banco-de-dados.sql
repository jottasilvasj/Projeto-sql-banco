use dbpedido2sem2026_v2;

-- Comandos DML - o

/* 1 - inserir dados em todos os campos, não é necessário informar os 
nomes dos campos*/
-- incluir 5 estado
insert into estado values ('SP','SÃO PAULO');
insert into estado values ('RJ','RIO DE JANEIRO');

-- visualizar os registros
select * from estado;

/* 2 - inserir no minimo 3 dados na tabela Unidade */
insert into unidade values ('M', 'METRO');
insert into unidade values ('KG', 'Quilo');
insert into unidade values ('PC', 'PEÇA');
insert into unidade values ('UN','UNIDADE');

/*3 - inserir registro em todos os campos com auto-incremento*/
-- inserir no minimo 3 registros na tabela vendedor
insert into vendedor values (null, 'Jose da Silva');
insert into vendedor values (null, 'Ana da Costa');


/*4 - inserir 3 registros na tabela transporte */
insert into transporte values (null, 'correios');

/*5 - inserir 3 registros na tabela pagamento*/
insert into pagamento values (null, 'pix');

/*6 - inserir 1 registros na tabela pagamento informando os campos */
insert into pagamento (descricao_pag) values ('A vista');

select * from pagamento;


/* 6 - inserir registro na tabela com chave estrangeira informando */
-- incluir 2 registros sem informar campos
insert into produto values (null, 'Barbante','M', 3.50);
-- incluir 2 registros informando os campos
insert into produto (descricao_pro, sigla_id_un, preco_pro) values ('Lapis','UN', 2.10);

/*7 - inserir  registros na tabela cliente , todos os campos */
-- inserir em todos os campos sem informar o nome dos campos
insert into cliente values 
           ('12186915000112',
			'334343',
            'Empresa XYZ',
            'rua das Flores,110',
            'bloco 10',
            'vila Jardim',
            'Santo André',
            'SP',
            '10555555');
   

            
-- 8 -inserir em alguns campos sem informar o nome dos campos
insert into cliente values 
           ('78630279000184',
			'',
            'Loja da Vida',
            'rua das Oliveira, 100',
            '',
            'vila Aurora',
            'Mogi das Cruzes',
            'SP',
            '10555666');
            

 -- 9 inserir os campos informando o nome dos campos
 insert into cliente 
     (cnpj_id_cli,
	  ie_cli,
      nome_cli,
      cidade_cli,
      uf_id_est) values
      ('45691576000180',
       '4454545',
      'Fabrica de Bolas x',
	   'São Paulo',
       'SP');
      
select * from cliente;    

/* 10 - inserir 2 emails para um mesmo cliente' */
insert into cliente_email values ('12186915000112','jose@empx.com.br');
insert into cliente_email values ('12186915000112','pedro@empx.com.br');
      
/* 11 -inserir 3 telefones para um mesmo cliente' */
insert into cliente_fone values ('12186915000112','11','987564572');
insert into cliente_fone values ('12186915000112','11','2335566');
insert into cliente_fone values ('12186915000112','11','945677734');


/* 12 -inserir 1 pedido para um cliente */
insert into pedido values(
           null,
           '12186915000112',
           '2026-08-31',
           '2',
           '1',
           '1');

select * from pedido;

/* 13-inserir 2 itens do pedido */
   insert into pedido_produto values (1,2,2, 4.20);
   insert into pedido_produto values (1,1,1, 3.50);
       
select * from pedido_produto;


