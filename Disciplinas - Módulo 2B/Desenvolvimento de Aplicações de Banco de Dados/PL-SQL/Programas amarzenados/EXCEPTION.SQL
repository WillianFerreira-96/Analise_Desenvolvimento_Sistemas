--Tratamento de Erro

CREATE OR REPLACE FUNCTION diviir
RETURN NUMBER
IS
    x NUMBER := 10;
    y NUMBER := 5;
    resultado NUMBER;
BEGIN
    resultado := y / x;
    RETURN resultado;
EXCEPTION 
    WHEN ZERO_DIVIDE THEN
    Dbms_output.put_line('Não é possivel dividir por zero');
END dividir;
