--Criar uma Função 
    CREATE OR REPLACE FUNCTION nome_função(parametro1 IN TIPO_DE_DADO)
    RETURN TIPO_DE_DADO
    IS 
        nome_variavel := 10;
    BEGIN 
        comandos1
        ...
        RETURN nome_variavel;
    END nome_função;

--Executar uma Função
    EXECUTE nome_função(parametro1)