
INSERT INTO CFOP (CFOP,DESCRICAO,APLICACAO) VALUES (1000,'ENTRADAS OU AQUISIÇÕES DE SERVIÇOS DO ESTADO','Classificam-se, neste grupo, as operações ou prestações em que o estabelecimento remetente esteja localizado na mesma unidade da Federação do destinatário'),(1100,'COMPRAS PARA INDUSTRIALIZAÇÃO, PRODUÇÃO RURAL, COMERCIALIZAÇÃO OU PRESTAÇÃO DE SERVIÇOS','(NR Ajuste SINIEF 05/2005) (DECRETO Nº 28.868, DE 31/01/2006)\r\n\r\n(Dec. 28.868/2006 – Efeitos a partir de 01/01/2006, ficando facultada ao contribuinte a sua adoção para fatos geradores ocorridos no período de 01 de novembro a 31 de dezembro de 2005)'),(1101,'Compra para industrialização ou produção rural (NR Ajuste SINIEF 05/2005) (Decreto 28.868/2006)','Compra de mercadoria a ser utilizada em processo de industrialização ou produção rural, bem como a entrada de mercadoria em estabelecimento industrial ou produtor rural de cooperativa recebida de seus cooperados ou de estabelecimento de outra cooperativa.\r\n\r\n(DECRETO Nº 28.868, DE 31/01/2006-– Efeitos a partir de 01/01/2006, ficando facultada ao contribuinte a sua adoção para fatos geradores ocorridos no período de 01 de novembro a 31 de dezembro de 2005).'),(1102,'Compra para comercialização','Classificam-se neste código as compras de mercadorias a serem comercializadas. Também serão classificadas neste código as entradas de mercadorias em estabelecimento comercial de cooperativa recebidas de seus cooperados ou de estabelecimento de outra cooperativa.');

INSERT INTO OPERADORA_CARTAO (BANDEIRA,NOME) VALUES ('VISA','0VISA'),('MASTERCARD','0MASTERCARD');

INSERT INTO PAIS (CODIGO,NOME,SIGLA2,SIGLA3) VALUES (1,'BRASIL','BR','BRA'),(2,'ESTADOS UNIDOS','EU','EUA'),(3,'ANGOLA','AN','ANG');

INSERT INTO PAPEL (NOME,DESCRICAO) VALUES ('ADM','ADMINISTRADO'),('USER','USUARIO'),('TESTE','TESTE');

INSERT INTO SITUACAO_FOR_CLI (NOME,DESCRICAO) VALUES ('NORMAL',NULL),('DEVEDOR',NULL),('OUTRO',NULL);

INSERT INTO GRUPO_PRODUTO (NOME,DESCRICAO) VALUES ('GRUPO 01',NULL),('GRUPO 02',NULL),('GRUPO 03',NULL);

INSERT INTO NIVEL_FORMACAO (NOME,DESCRICAO) VALUES ('MESTRADO',NULL),('ENSINO MEDIO',NULL),('ENSINO FUNDAMENTAL',NULL);

INSERT INTO TIPO_RELACIONAMENTO (NOME,DESCRICAO) VALUES ('FILHO',NULL);

INSERT INTO TIPO_TELEFONE (NOME,DESCRICAO) VALUES ('RESIDENCIAL',NULL);

INSERT INTO UNIDADE_PRODUTO (NOME,DESCRICAO) VALUES ('UND','UNIDADE'),('KG','KILO'),('CX','CAIXA'),('TESTE UND','TESTE UND');

INSERT INTO TIPO_FORNECEDOR (NOME,DESCRICAO) VALUES ('FORNECEDOR',NULL);

INSERT INTO TIPO_COLABORADOR (NOME,DESCRICAO) VALUES ('EMPREGADO',NULL),('REPRESENTANTE','REPRESENTANTE DA EMPRESA');

INSERT INTO TIPO_EMAIL (NOME,DESCRICAO) VALUES ('PESSOAL',NULL);

INSERT INTO TIPO_ENDERECO (NOME,DESCRICAO) VALUES ('RESIDENCIAL','Endereço moradia.'),('TRABALHO','Endereço do local de trabalho');

INSERT INTO CARGO (NOME,DESCRICAO,SALARIO) VALUES ('ANALISTA','ANALISTA DE SISTEMAS',8000.00),('PROGRAMADOR','AJUDA O ANALISTA',5500.00),('DBA','ADMINISTRADOR DE BANCO DE DADOS',6000.00),('TÉCNICO DE INFORMÁTICA','AJUDA O ANALISTA E O PROGRAMADOR',1900.00),('TÉCNICO','ADMINISTRATIVO',2500.00);

INSERT INTO EMPRESA (EMPRESA_ID,RAZAO_SOCIAL,NOME_FANTASIA,CNPJ,INSCRICAO_ESTADUAL,INSCRICAO_MUNICIPAL,MATRIZ_FILIAL,DATA_CADASTRO) VALUES (1,'SERVICO NACIONAL DE APRENDIZAGEM INDUSTRIAL - DEPARTAMENTO REGIONAL DO DISTRITO FEDERAL','SENAI DR/DF','03806360000173',NULL,NULL,NULL,CURRENT_TIMESTAMP);

INSERT INTO SETOR (EMPRESA_ID,NOME,DESCRICAO) VALUES (1,'INFORMATICA',NULL),(1,'VENDAS','SETOR DE VENDAS'),(1,'RECURSOS HUMANOS','RECURSOS HUMANOS');

INSERT INTO SUB_GRUPO_PRODUTO (ID_GRUPO,NOME,DESCRICAO) VALUES (1,'SUBGRUPO 1.01',NULL),(1,'SUBGRUPO 1.02',NULL),(1,'SUBGRUPO 1.03',NULL),(2,'SUBGRUPO 2.01',NULL),(2,'SUBGRUPO 2.02',NULL),(3,'SUBGRUPO 3.01',NULL);

INSERT INTO ESTADO (PAIS_ID,SIGLA,NOME,CODIGO_IBGE) VALUES (1,'DF','DISTRITO FEDERAL',53),(1,'CE','CEARA',19),(1,'MA','MARANHAO',21),(2,'NY','NEW YORK',NULL);

INSERT INTO CONVENIO (ID_EMPRESA,NOME,DESCRICAO,DESCONTO,DATA_VENCIMENTO,ENDERECO,CONTATO,TELEFONE,EXCLUIDO,DATA_CADASTRO) VALUES (1,'COCA COLA',NULL,20.00,NULL,NULL,NULL,NULL,NULL,CURRENT_TIMESTAMP);

INSERT INTO INDICE_ECONOMICO (PAIS_ID,SIGLA,NOME,DESCRICAO) VALUES (1,'IPCA','INDICE DE PRECOS CONSUMIDOR AMPLO',NULL);

INSERT INTO CLIENTE (SITUACAO_FOR_CLI_ID,ID_EMPRESA,NOME,CPF_CNPJ,RG,ORGAO_RG,INSCRICAO_ESTADUAL,INSCRICAO_MUNICIPAL,DESDE,TIPO_PESSOA,EXCLUIDO,DATA_CADASTRO) VALUES (1,1,'CLIENTE 01','61368455789','930152878','SSP-DF',NULL,'','2010-06-01','F','N',CURRENT_TIMESTAMP);

INSERT INTO PRODUTO (ID_SUB_GRUPO,ID_UNIDADE,GTIN,NOME_PRODUTO,DESCRICAO,DESCRICAO_PDV,VALOR_COMPRA,VALOR_VENDA,QTD_ESTOQUE,ESTOQUE_MIN,ESTOQUE_MAX,EXCLUIDO,DATA_CADASTRO) VALUES (1,1,NULL,'CANETA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CURRENT_TIMESTAMP),(1,1,NULL,'LAPIS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CURRENT_TIMESTAMP),(2,1,NULL,'CADERNO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CURRENT_TIMESTAMP),(2,1,NULL,'REGUA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CURRENT_TIMESTAMP),(4,1,NULL,'CELTA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CURRENT_TIMESTAMP),(4,1,NULL,'PALIO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CURRENT_TIMESTAMP);

INSERT INTO BANCO (CODIGO,NOME,URL) VALUES (1,'BANCO DO BRASIL','BB.COM'),(237,'BRADESCO','BRADESCO.COM'),(555,'ITAU','ITAU.COM');

INSERT INTO SETOR (EMPRESA_ID,NOME,DESCRICAO) VALUES (1,'INFORMATICA',NULL),(1,'VENDAS','SETOR DE VENDAS'),(1,'RECURSOS HUMANOS','RECURSOS HUMANOS');

INSERT INTO FORNECEDOR (SITUACAO_FOR_CLI_ID,TIPO_FORNECEDOR_ID,ID_EMPRESA,NOME,CPF_CNPJ,RG,ORGAO_RG,INSCRICAO_ESTADAL,INSCRICAO_MUNICIPAL,DESDE,TIPO_PESSOA,EXCLUIDO,DATA_CADASTRO) VALUES (1,1,1,'FORNECEDOR 01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CURRENT_TIMESTAMP),(1,1,1,'FORNECEDOR 02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,CURRENT_TIMESTAMP);

INSERT INTO COLABORADOR (NIVEL_FORMACAO_ID,TIPO_COLABORADOR_ID,CARGO_ID,ID_SETOR,NOME,CPF,RG,ORGAO_RG,DATA_NASCIMENTO,TIPO_SANGUINEO,FOTO_34,EXCLUIDO,DATA_CADASTRO) VALUES (1,1,1,1,'ALBERT','12345678910','123','SSP-CE','1977-04-22','A+',NULL,'N',CURRENT_TIMESTAMP);

INSERT INTO CIDADE (ESTADO_ID,NOME,CODIGO_IBGE) VALUES (1,'BRASILIA',53123),(2,'FORTALEZA',19123);

INSERT INTO USUARIO (PAPEL_ID,COLABORADOR_ID,LOGIN,SENHA,DATA_CADASTRO) VALUES (1,1,'ALBERT','123',NULL);

INSERT INTO CONTATO (EMPRESA_ID,COLABORADOR_ID,CLIENTE_ID,FORNECEDOR_ID,NOME,DONO) VALUES (NULL,NULL,1,NULL,'JOAO','C');

INSERT INTO CEP (CIDADE_ID,CEP,LOGRADOURO,BAIRRO) VALUES (1,'60763560','RUA 107','CENTRO'),(1,'60763561','RUA 108','CENTRO');

INSERT INTO AGENCIA_BANCO (CEP_ID,BANCO_ID,CODIGO,NOME,ENDERECO,TELEFONE,GERENTE,CONTATO,OBS) VALUES (1,1,1522,'AG AGUAS CLARAS',NULL,NULL,'NUNES',NULL,NULL),(1,2,666,'666','RUA 107','666','666','666','666'),(1,1,77,'77','RUA 107','77','77','77','77'),(1,1,66,'66','66','66','66','66','66'),(1,2,987,'987','RUA 107','987','987','987','987'),(1,2,789789,'789789','RUA 107','789789','789789','789789','789789'),(1,2,8787,'AGENCIA 87879','RUA 107','87878787','GERENTE 8787','CONTATO 8787','8787'),(1,3,8798,'ITAU555','RUA 107','ITAU555','ITAU555','ITAU555','ITAU555'),(1,2,474747,'47','RUA 107','47','47','47','47'),(1,1,445566,'445566','RUA 107','445566','445566','445566','445566'),(1,3,9966,'9966','RUA 107','9966','9966','9966','9966'),(1,3,555888,'555888','RUA 107','555888','555888','555888','555888');

INSERT INTO CONTATO_TELEFONE (TIPO_TELEFONE_ID,CONTATO_ID,TELEFONE) VALUES (1,1,'6154875487');

INSERT INTO CONTATO_EMAIL (TIPO_EMAIL_ID,CONTATO_ID,EMAIL) VALUES (1,1,'adm@senai.com');

INSERT INTO ENDERECO (EMPRESA_ID,COLABORADOR_ID,FORNECEDOR_ID,CLIENTE_ID,TIPO_ENDERECO_ID,CEP_ID,LOGRADOURO,NUMERO,COMPLEMENTO,BAIRRO,DONO) VALUES (NULL,NULL,NULL,1,1,1,'RUA 107',281,'','CENTRO','C'),(NULL,NULL,NULL,1,2,1,'RUA 108',291,NULL,'CENTRO','C');

insert into COLABORADOR (NIVEL_FORMACAO_ID,
  TIPO_COLABORADOR_ID, CARGO_ID, ID_SETOR,
  NOME, CPF, RG, ORGAO_RG, DATA_NASCIMENTO,
  TIPO_SANGUINEO, FOTO_34, EXCLUIDO,
  DATA_CADASTRO) VALUES (2,1,3,1,'JOÃO',
  '66546556','245435','SSP/DF','2002-10-02',
  'O+',NULL,'1','2022-12-22'),(1,1,2,1,'MARIA',
  '6465465','232123','SSP/DF','2008-11-09',
  'O+',NULL,'1','2022-12-22'),(1,1,2,1,'PAULO',
  '6576578548','2365655','SSP/SP','2000-06-23',
  'O+',NULL,'1','2022-12-22'),(1,1,4,1,'LUIZA',
  '767665','267432','SSP/RS','1990-04-13',
  'O+',NULL,'1','2022-12-22');

insert into endereco(EMPRESA_ID,COLABORADOR_ID,FORNECEDOR_ID,CLIENTE_ID,TIPO_ENDERECO_ID,CEP_ID,LOGRADOURO,NUMERO,COMPLEMENTO,BAIRRO,DONO)
values (1,1,1,1,1,1,'QUADRA 104','23','SETOR COMERCIAL SUL','TAGUATINGA','C'),
(1,2,1,1,1,1,'RUA NORTE','14','SETOR COMERCIAL NORTE','TAGUATINGA','C'),
(1,3,1,1,1,1,'QUADRA 21','105','SETOR HOTELEIRO','ASA NORTE','C'),
(1,4,1,1,1,1,'QUADRA 111','306','SQS','ASA SUL','C'),
(1,5,1,1,1,1,'RUA 07','27','SETOR DE CHACARA','SAMAMBAIA','C');

INSERT INTO CEP(CIDADE_ID,CEP,LOGRADOURO,BAIRRO) VALUES
(2,'73223440','RUA 13','PELORINHO'),(2,'71424432','RUA 13','JARDINS'),
(1,'75943743','QUADRA 115','ASA SUL'),(1,'70263721','QUADRA 202','ASA NORTE'),
(1,'71788320','QUADRA 302','SUDOESTE');


-- adiciona;
insert into fornecedor(SITUACAO_FOR_CLI_ID,TIPO_FORNECEDOR_ID,ID_EMPRESA,NOME,CPF_CNPJ,RG,ORGAO_RG,INSCRICAO_ESTADAL,INSCRICAO_MUNICIPAL,DESDE,TIPO_PESSOA,EXCLUIDO,DATA_CADASTRO)
values(1,1,1,'JOÃO','254543543','454543234','ssp/df','54545435','4554354',null,'1','1','2022-03-01'),
(1,1,1,'Maria','4636536','34343344','ssp/df','6345653','4555654',null,'1','1','2022-01-02');

insert into CONTATO(EMPRESA_ID,COLABORADOR_ID,
CLIENTE_ID,FORNECEDOR_ID,NOME,DONO) VALUES (1,1,1,1,'JUNDIAI',NULL);