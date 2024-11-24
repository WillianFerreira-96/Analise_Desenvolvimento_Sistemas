--GROUP BY
    --Neste caso será feito a somatória dos valores na 'coluna2' baseado no agrupamento da 'coluna_classificativa'
    SELECT coluna_classificativa, SUM(coluna2)
    FROM nome_tabela
    GROUP BY coluna_classificativa

--Sub_Grupo
    /*Neste caso a 'coluna_classificativa' será a base para o primeiro agrupamento e a 'coluna_classificativa_2' 
        será a base para o agrupamento do sub grupo.*/
    SELECT coluna_classificativa, SUM(coluna3)
    FROM nome_tabela
    GROUP BY coluna_classificativa, coluna_classificativa_2

--GROUP BY ROLLUP
    --Mostra os subtotais de cada grupo e o total geral 
    SELECT coluna_classificativa, SUM(coluna3)
    FROM nome_tabela
    GROUP BY ROLLUP coluna_classificativa, coluna_classificativa_2

    