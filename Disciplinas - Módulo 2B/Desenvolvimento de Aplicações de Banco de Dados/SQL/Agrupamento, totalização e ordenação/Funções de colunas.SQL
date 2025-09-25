--SYSDATE é uma função que retorna a data do sistema operacional
    SELECT SYSDATE FROM dual;

--Formatar data    
    SELECT to_char(SYSDATE, 'dd/mm/yyyy') FROM dual;
    SELECT to_char(SYSDATE, 'dd/month/yy') FROM dual;

--TRUNC arredonda o número para a quantidade casas decimais informada após a virgula
    SELECT TRUNC(58.548,1) FROM dual;

--LOWER todas as letras minúsculas
    SELECT LOWER(nome_coluna) FROM nome_tabela;

--UPPER todas as letras maiúsculas  
    SELECT UPPER(nome_coluna) FROM nome_tabela;

--INITCAP a primeira letra maiúscula
    SELECT INITCAP(nome_coluna) FROM nome_tabela;
