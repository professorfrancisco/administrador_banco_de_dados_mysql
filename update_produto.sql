Elabore uma query que retorne os dados dos fornecedores: Nome, CPF_CNPJ,
INSCRICAO_Estadual, data_cadastro;
Tipo_fornecedor: nome, descricao;
produto: nome_produto, descricao, qtd_estoque, valor_venda, valor_compra;

update produto set VALOR_COMPRA = 1.25 , VALOR_VENDA = 2.5 , QTD_ESTOQUE = 50 where id = 1;
update produto set VALOR_COMPRA = 1 , VALOR_VENDA = 2 , QTD_ESTOQUE = 100 where id = 2;
update produto set VALOR_COMPRA = 3 , VALOR_VENDA = 5.5 , QTD_ESTOQUE = 70 where id = 3;
update produto set VALOR_COMPRA = 2.5 , VALOR_VENDA = 4 , QTD_ESTOQUE = 90 where id = 4;

update produto set VALOR_COMPRA = 24000 , VALOR_VENDA = 26500 , QTD_ESTOQUE = 1 where id = 5;

update produto set VALOR_COMPRA = 28000 , VALOR_VENDA = 29700 , QTD_ESTOQUE = 1 where id = 6;
insert into fornecedor_produto (FORNECEDOR_ID,PRODUTO_ID) values (1,1),(1,2),(1,3),(1,4),(3,5),(4,6);
update fornecedor set cpf_cnpj = "33.564.543/0001-90" where id = 1;
update fornecedor set nome = "SENAI ATACADISTA E VAREJO" where id = 1;

