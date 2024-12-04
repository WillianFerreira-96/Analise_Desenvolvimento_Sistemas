--Cabeçalho do pacote
    CREATE OR REPLACE PACKAGE exemplo_package IS
    PROCEDURE nome_procedimento(parametro1 IN TIPO_DE_DADO, parametro2 OUT TIPO_DE_DADO);
    FUNCTION nome_função(parametro1 IN TIPO_DE_DADO)

--Corpo do pacote
    CREATE OR REPLACE PACKAGE BODY exemplo_package IS

        PROCEDURE nome_procedimento(parametro1 IN TIPO_DE_DADO, parametro2 OUT TIPO_DE_DADO)
        IS BEGIN 
            comandos1
            ...
        END nome_procedimento;

        FUNCTION nome_função(parametro1 IN TIPO_DE_DADO)
        RETURN TIPO_DE_DADO
        IS 
            nome_variavel := 10;
        BEGIN 
            comandos1
            ...
            RETURN nome_variavel;
        END nome_função;
        
    END exemplo_package;
