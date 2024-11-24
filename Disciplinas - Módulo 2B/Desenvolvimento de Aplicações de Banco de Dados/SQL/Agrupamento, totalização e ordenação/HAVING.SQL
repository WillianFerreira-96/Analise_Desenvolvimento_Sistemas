--HAVING
    --o HAVING nos permite usar condições no GROUP BY
    SELECT coluna_classificativa, SUM(coluna2)
    FROM nome_tabela
    GROUP BY coluna_classificativa
    HAVING SUM(sal) > 5000