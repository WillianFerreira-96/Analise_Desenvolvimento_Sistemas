--De 1 até 10
FOR i IN 1..10 LOOP
    INSERT INTO tabela1 values(i);
END LOOP;

--De 10 até 1
FOR i IN REVERSE 1..10 LOOP
    INSERT INTO tabela1 values(i);
END LOOP;