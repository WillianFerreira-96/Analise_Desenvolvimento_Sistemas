--Questão Exemplo: Qual o nome e o cargo de quem ganha igual ou mais que o scott

SELECT nome, cargo
FROM funcionarios
WHERE salario >= (
    SELECT salario 
    FROM funcionarios
    WHERE nome = 'scott'
);

------------------------------------------------------------------------------------
--Operadores de sub-consulta 
    --Servem para dar coerência a consultas que retornam mais de um valor

        --ANY
            /*A sub-consulta a baixo irá retornar mais de um valor e o 'ANY' se comportará como um 'OU', 
                ou seja a consulta maior irá retornar os salarios que sejam menor que QUALQUER UM
                dos resultados apresentados pela sub-consulta*/
                SELECT nome, cargo
                FROM funcionarios
                WHERE salario < ANY (
                    SELECT salario 
                    FROM funcionarios
                    WHERE cargo = 'gerente'
                );

        --ALL     
            /*A sub-consulta a baixo irá retornar mais de um valor e o 'ALL' se comportará como um 'E',
                ou seja a consulta maior irá retornar os salarios que sejam menor que TODOS os
                resultados apresentados pela sub-consulta*/
                SELECT nome, cargo
                FROM funcionarios
                WHERE salario < ALL (
                    SELECT salario 
                    FROM funcionarios
                    WHERE cargo = 'gerente'
                );

        --EXISTS
            --Verifica se há valores em comum entre as duas tabelas
                SELECT coluna1
                FROM tabela1
                WHERE EXISTS (SELECT coluna1 FROM tabela2);

        --IN
            --O 'IN' se comporta como uma igualdade
                SELECT nome, cargo, salario
                FROM funcionarios
                WHERE salario 
                IN(
                    SELECT MAX(salario) 
                    FROM funcionarios
                    GROUP BY cargo
                ); /*Ou seja, retorne o nome, cargo e salario da tabela funcionarios 
                    onde o salario seja igual ao maior salario de cada cargo*/ 