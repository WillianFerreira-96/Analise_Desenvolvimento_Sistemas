--GOTO é uma estrutura de repetição que cria um loop assim como o while

DECLARE 
    fatorial NUMBER := 1;
    n NUMBER;
    i NUMBER := 0;
BEGIN
    n := 6;
    i := n;

    <<incio_loop>> --Marcação do ponto de inicio do loop
    IF i >= 1 THEN
        fatorial := fatorial*i;
        i := i - 1;
        GOTO incio_loop;
    END IF;
END;