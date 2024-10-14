
CREATE TABLE pagamento (
    pagamento_id NUMBER GENERATED BY SEQUENCE PAGAMENTO_SEQ PRIMARY KEY,
    pagamento_metodo VARCHAR2(255) NOT NULL,
    pagamento_vlr_total NUMBER(10, 2) NOT NULL
);

CREATE SEQUENCE PAGAMENTO_SEQ
START WITH 1
INCREMENT BY 1
NOCACHE;

CREATE TABLE pedido (
    pedido_id NUMBER GENERATED BY SEQUENCE PEDIDO_SEQ PRIMARY KEY,
    cliente_id NUMBER NOT NULL,
    data_pedido DATE NOT NULL,
    valor_total NUMBER(10, 2) NOT NULL,
    pagamento_id NUMBER,
    CONSTRAINT fk_cliente FOREIGN KEY (cliente_id) REFERENCES cliente(cliente_id),
    CONSTRAINT fk_pagamento FOREIGN KEY (pagamento_id) REFERENCES pagamento(pagamento_id)
);

CREATE SEQUENCE PEDIDO_SEQ
START WITH 1
INCREMENT BY 1
NOCACHE;

CREATE TABLE produto (
    produto_id NUMBER GENERATED BY SEQUENCE PRODUTO_SEQ PRIMARY KEY,
    produto_nome VARCHAR2(255) NOT NULL,
    produto_descricao VARCHAR2(255),
    produto_preco NUMBER(10, 2) NOT NULL,
    produto_qtd_estoque NUMBER,
    produto_categoria VARCHAR2(255),
    produto_marca VARCHAR2(255)
);

CREATE SEQUENCE PRODUTO_SEQ
START WITH 1
INCREMENT BY 1
NOCACHE;

CREATE TABLE cliente (
    cliente_id NUMBER GENERATED BY SEQUENCE CLIENTE_SEQ PRIMARY KEY,
    cliente_nome VARCHAR2(255) NOT NULL,
    cliente_email VARCHAR2(255) NOT NULL,
    cliente_telefone VARCHAR2(20)
);

CREATE SEQUENCE CLIENTE_SEQ
START WITH 1
INCREMENT BY 1
NOCACHE;

CREATE TABLE item_pedido (
    item_pedido_id NUMBER GENERATED BY SEQUENCE ITEM_PEDIDO_SEQ PRIMARY KEY,
    pedido_id NUMBER NOT NULL,
    produto_id NUMBER NOT NULL,
    quantidade NUMBER NOT NULL,
    valor_unitario NUMBER(10, 2) NOT NULL,
    CONSTRAINT fk_pedido FOREIGN KEY (pedido_id) REFERENCES pedido(pedido_id),
    CONSTRAINT fk_produto FOREIGN KEY (produto_id) REFERENCES produto(produto_id)
);

CREATE SEQUENCE ITEM_PEDIDO_SEQ
START WITH 1
INCREMENT BY 1
NOCACHE;