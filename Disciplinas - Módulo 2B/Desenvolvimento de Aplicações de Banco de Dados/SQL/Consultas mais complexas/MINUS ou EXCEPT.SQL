--MINUS
    -- MINUS ou EXCEPT elimina os dados da primeira tabela que são comuns as da segunda tabela

SELECT coluna1, coluna2, coluna3 FROM primeira_tabela
EXCEPT --Ou MINUS 
SELECT coluna1, coluna2, coluna3 FROM segunda_tabela