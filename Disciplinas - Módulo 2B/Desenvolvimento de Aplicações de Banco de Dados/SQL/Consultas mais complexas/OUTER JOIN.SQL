--OUTER JOIN
    --Motra as ligações nulos, além do que foi definido pelo comando ON

SELECT primeira_tabela.nome_da_coluna, segunda_tabela.nome_da_coluna
FROM schema.primeira_tabela FULL OUTER JOIN schema.segunda_tabela -- A palavra OUTER não é obrigatória
ON (primeira_tabela.colunaReferencia = segunda_tabela.colunaReferencia)