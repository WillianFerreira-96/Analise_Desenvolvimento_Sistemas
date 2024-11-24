--JOIN 
    -- o JOIN faz a junção entre tabelas (ligadas ou não por FK e PK) tendo o ON como parâmetro para essa junção

SELECT primeira_tabela.nome_da_coluna, segunda_tabela.nome_da_coluna
FROM schema.primeira_tabela INNER JOIN schema.segunda_tabela -- A palavra INNER não é obrigatório
ON (primeira_tabela.colunaReferencia = segunda_tabela.colunaReferencia)
    -- o ON é a condição para a união das tabelas