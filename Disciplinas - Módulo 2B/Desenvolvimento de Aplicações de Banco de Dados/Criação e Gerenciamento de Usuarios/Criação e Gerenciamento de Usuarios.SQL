--*** SQL Plus ***--

--1°: Entrar com usuário (sys ou system) e senha

--Criação de Usuário:
    create user nome_do_usuario
    identified by senha_do_usuario 
    default tablespace system --tablespace system é o local padrão de gravação
    quota unlimited on system -- definição do espaço disponivel pro usuário
    password expired; --Após o usuário se conectar a senha expira e é pedido outra senha por questão de segurança

--Concessão de Privilégio:
    grant create session, create table to nome_do_usuario; 
        --Concede o privilégio de se conectar ao banco de dados(create session)
        --E o privilégio de criar tabelas(create table)
    
--Exclusão de Usuário:
    select username, account_status, default_tablespace, create from dba_users where username='nome_do_usuario'; --Verifica as informa~ções do usuário 

    drop user nome_do_usuario; --Esse comando só deleta se o Schema do usuário estiver vazio

    drop user nome_do_usuario cascade; --Exclui em cascada, ou seja exclui todos os arquivos criados e o usuário 

--Bloqueio de conta do usuário:
    alter user nome_do_usuario account lock;

--Desbloqueio de conta do usuário:
    alter user nome_do_usuario account unlock;

--Criação de profile:
    create profile nome_do_profile limit FAILED_LOGIN_ATTEMPTS 2; --FAILED_LOGIN_ATTEMPTS controla o numero de tentativas de conexão
        --profile controla alguns recursos de senha é de máquina

--Associar o profile ao usuario:
    alter user nome_do_usuario profile nome_do_profile;

--Exclusão de profile:
    drop profile nome_do_profile; --Esse comando só deleta se o profile não estiver associado a nenhum usuário

    drop profile nome_do_profile cascade; --Exclui em cascada, ou seja desassocia a os usuários e depois exclui o profile

