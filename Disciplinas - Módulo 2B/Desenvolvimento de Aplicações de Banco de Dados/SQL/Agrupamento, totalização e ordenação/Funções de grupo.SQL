--MAX
    --Retorna o maior valor de um grupo de dados
    SELECT MAX(nome_coluna) FROM nome_tabela

--MIN
    --Retorna o menor valor de um grupo de dados
    SELECT MIN(nome_coluna) FROM nome_tabela

--SUM
    --Retorna a soma de um grupo de dados
    SELECT SUM(nome_coluna) FROM nome_tabela

--AVG
    --retorna a média dos valores
    SELECT AVG(nome_coluna) FROM nome_tabela

--COUNT
    --COUNT(*) retona quantas linhas há na tabela em questão
    SELECT COUNT(*) FROM nome_tabela

    --COUNT(nome_Coluna) retorna quantas linhas estão preenchidas na coluna em questão, ou seja não nulas
    SELECT COUNT(nome_Coluna) FROM nome_tabela
