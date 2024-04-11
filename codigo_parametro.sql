select
    f.nome as nome_fornecedor,
    f.CPF_CNPJ,
    f.DATA_CADASTRO,
    -- tf.DESCRICAO as descricao_fornecedor,
    tf.NOME as nome_descricao_fornecedor,
    p.NOME_PRODUTO,
    -- p.DESCRICAO as descricao_produto,
    p.DATA_CADASTRO as data_cadastro_produto,
    p.ESTOQUE_MAX,
    p.ESTOQUE_MIN,
    p.GTIN,
    p.QTD_ESTOQUE,
    up.NOME as nome_unidade_produto,
    up.DESCRICAO as descricao_unidade_produto,
    sg.NOME as nome_sub_grupo_produto,
    -- sg.DESCRICAO as descricao_sub_grupo_produto,
    -- gp.DESCRICAO as descricao_grupo_produto,
    gp.NOME as nome_grupo_produto
    from fornecedor as f
inner join tipo_fornecedor as tf on tf.ID = f.TIPO_FORNECEDOR_ID
inner join fornecedor_produto as fp on fp.FORNECEDOR_ID = f.id
inner join produto as p on p.ID = fp.PRODUTO_ID
inner join unidade_produto as up on up.ID = p.ID_UNIDADE
inner join sub_grupo_produto as sg on sg.ID = p.ID_SUB_GRUPO
inner join grupo_produto as gp on gp.ID = sg.ID_GRUPO
where f.nome =  $P{NOME_FORNECEDOR} 
