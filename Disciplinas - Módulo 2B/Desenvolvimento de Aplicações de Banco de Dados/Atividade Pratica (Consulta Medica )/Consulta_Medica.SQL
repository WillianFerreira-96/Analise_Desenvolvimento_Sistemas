--Objetivo:
    --Criar uma view que retorne todos os dados da consulta com um unico comando.

create table consulta(
    id_consulta number(10) primary key,
    data date,
    medico_crm number not null,
    paciente_cpf number(11) not null,
    relatorio varchar2(4000),
    CONSTRAINT consulta_medico_fk FOREIGN KEY (medico_crm) REFERENCES medico(crm),
    CONSTRAINT consulta_paciente_fk FOREIGN KEY (paciente_cpf) REFERENCES paciente(cpf)
);

create table medico(
    crm number primary key,
    nome varchar2(80)
);

create table paciente(
    cpf number(11) primary key,
    nome varchar(80)
);

insert into medico values(
	654321,
    'Dr. Dorival'
);

insert into paciente values(
    12345678912,
    'Willian'
);

insert into consulta values(
    1,
    to_date('20/12/2024','dd/mm/yyyy'),
    654321,
    12345678912,
    'bipolaridade'    
);

create view dados_da_consulta as
select 
    c.id_consulta,
    c.data,
    m.nome as Dr_nome,
    m.crm,
    p.nome as paciente_nome,
    p.cpf as cpf_paciente,
    c.relatorio
from consulta c
natural join medico m, paciente p;

select * from dados_da_consulta