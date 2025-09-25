--UNION
    -- Com  o UNION os valores repetidos é mostrado apenas uma vez
SELECT coluna1, coluna2, coluna3 FROM primeira_tabela
UNION
SELECT coluna1, coluna2, coluna3 FROM segunda_tabela

--UNION ALL
    -- O UNION ALL mostra todos os elementos e os valores repetidos
SELECT coluna1, coluna2, coluna3 FROM primeira_tabela
UNION
SELECT coluna1, coluna2, coluna3 FROM segunda_tabela

