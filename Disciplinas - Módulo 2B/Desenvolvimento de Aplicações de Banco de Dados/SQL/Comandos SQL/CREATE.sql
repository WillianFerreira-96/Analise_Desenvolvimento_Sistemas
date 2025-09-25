cria uma tabela e suas colunas:

create table nome_da_tabela(
	id_exemplo number(5) primary key,
	nome_exemplo varchar2(20) not null,
	data_exemplo date default sysdate,
	cod_exemplo number(2)
	id_tabela2 number(2)
	constraint id_fk foreign key (id_tabela2) references tabela2(id)
);

