--Criar um Procedimento (PROCEDURE) 
    CREATE OR REPLACE PROCEDURE nome_procedimento(parametro1 IN TIPO_DE_DADO, parametro2 OUT TIPO_DE_DADO)
    IS BEGIN 
        comandos1
        ...
    END nome_procedimento;

--Executar um Procedimento
    EXECUTE nome_procedimento(parametro1, parametro2)