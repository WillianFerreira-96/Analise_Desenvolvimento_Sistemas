/* Logico_Auto-Peças: */

CREATE TABLE CLIENTE (
    cod_cliente number(5) PRIMARY KEY,
    nome_cliente varchar2(50),
    endereco_cliente varchar2(50),
    limite_credito number(10),
    faturamento_acumulado number(10)
);

CREATE TABLE VENDEDOR (
    cod_vendedor number(5) PRIMARY KEY,
    nome_vendedor varchar2(50),
    endereco_vendedor varchar2(50),
    percentual_comissao number(3)
);

CREATE TABLE PEÇA (
    cod_peca number(5) PRIMARY KEY,
    descricao varchar2(50),
    preco_unitario number(5),
    quant_estoque number(5),
    FK_DEPOSITO_cod_deposito number(5)
);

CREATE TABLE PEDIDO (
    cod_pedido number(5) PRIMARY KEY,
    data_pedido date,
    FK_VENDEDOR_cod_vendedor number(5),
    FK_CLIENTE_cod_cliente number(5)
);

CREATE TABLE DEPOSITO (
    cod_deposito number(5) PRIMARY KEY,
    endereco_deposito varchar2(50)
);

CREATE TABLE PEDIDO_PECA (
    fk_PEÇA_cod_peca number(5),
    fk_PEDIDO_cod_pedido number(5),
    quant_pecas_solicitadas number(5),
    preco_cotado number(10)
);
 
ALTER TABLE CLIENTE ADD CONSTRAINT FK_CLIENTE_2
    FOREIGN KEY (FK_VENDEDOR_cod_vendedor)
    REFERENCES VENDEDOR (cod_vendedor)
    ON DELETE CASCADE;
 
ALTER TABLE PEÇA ADD CONSTRAINT FK_PEÇA_2
    FOREIGN KEY (FK_DEPOSITO_cod_deposito)
    REFERENCES DEPOSITO (cod_deposito)
    ON DELETE CASCADE;
 
ALTER TABLE PEDIDO ADD CONSTRAINT FK_PEDIDO_2
    FOREIGN KEY (FK_VENDEDOR_cod_vendedor)
    REFERENCES VENDEDOR (cod_vendedor)
    ON DELETE CASCADE;
 
ALTER TABLE PEDIDO ADD CONSTRAINT FK_PEDIDO_3
    FOREIGN KEY (FK_CLIENTE_cod_cliente???)
    REFERENCES ??? (???);
 
ALTER TABLE PEDIDO_PECA ADD CONSTRAINT FK_PEDIDO_PECA_1
    FOREIGN KEY (fk_PEÇA_cod_peca)
    REFERENCES PEÇA (cod_peca)
    ON DELETE RESTRICT;
 
ALTER TABLE PEDIDO_PECA ADD CONSTRAINT FK_PEDIDO_PECA_2
    FOREIGN KEY (fk_PEDIDO_cod_pedido)
    REFERENCES PEDIDO (cod_pedido)
    ON DELETE SET NULL;