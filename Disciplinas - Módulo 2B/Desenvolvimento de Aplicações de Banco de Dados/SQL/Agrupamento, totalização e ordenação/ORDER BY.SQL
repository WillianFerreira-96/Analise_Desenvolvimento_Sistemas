--ORDER BY determina a ordem de exibição do retorno do comando

--Ordem Crescente (ASC)
    SELECT coluna1, coluna2
    FROM nome_tabela
    ORDER BY coluna1 ASC; --ASC ordena na ordem crescente (A palavra ASC é a ordem padrão do ORDER BY, por isso ela não é obrigatória)

--Ordem decrescente (DESC)
    SELECT coluna1, coluna2
    FROM nome_tabela
    ORDER BY coluna1 DESC; 

--Ordenar com mais de uma coluna
    SELECT coluna1, coluna2, coluna3
    FROM nome_tabela
    ORDER BY coluna1 DESC, coluna2 ASC; --A palavra ASC é a ordem padrão do ORDER BY, por isso ela não é obrigatória
