CREATE DATABASE DB_FARMACIA_BEM_ESTAR;

USE DB_FARMACIA_BEM_ESTAR;

CREATE TABLE TB_CATEGORIAS(
ID BIGINT AUTO_INCREMENT,
DESCRICAO VARCHAR(255) NOT NULL,
PRIMARY KEY(ID)
);

CREATE TABLE TB_PRODUTOS (
REFERENCIA BIGINT AUTO_INCREMENT,
NOME VARCHAR(255) NOT NULL,
PRECO FLOAT(6,2) NOT NULL,
CATEGORIA_ID BIGINT,
PRIMARY KEY (REFERENCIA),
FOREIGN KEY (CATEGORIA_ID) REFERENCES TB_CATEGORIAS (ID)
);

INSERT INTO TB_CATEGORIAS (DESCRICAO)
VALUES ("GESTANTE");
INSERT INTO TB_CATEGORIAS (DESCRICAO)
VALUES ("CACHEADAS");
INSERT INTO TB_CATEGORIAS (DESCRICAO)
VALUES ("HIGIENE PESSOAL");
INSERT INTO TB_CATEGORIAS (DESCRICAO)
VALUES ("REMÉDIOS");
INSERT INTO TB_CATEGORIAS (DESCRICAO)
VALUES ("ALIMENTOS");

SELECT * FROM TB_CATEGORIAS;

INSERT INTO TB_PRODUTOS (NOME, PRECO, CATEGORIA_ID)
VALUES ("OLEO DE AMENDÔAS", 27.45, 1);
INSERT INTO TB_PRODUTOS (NOME, PRECO, CATEGORIA_ID)
VALUES ("GELEIA CAPILAR", 23.50, 2);
INSERT INTO TB_PRODUTOS (NOME, PRECO, CATEGORIA_ID)
VALUES ("KIT SHAMPOO E CONDICIONADOR", 15, 3);
INSERT INTO TB_PRODUTOS (NOME, PRECO, CATEGORIA_ID)
VALUES ("BUSCOPAN COM 6 CÁPSULAS", 12.70, 4);
INSERT INTO TB_PRODUTOS (NOME, PRECO, CATEGORIA_ID)
VALUES ("BOMBOM SONHO DE VALSA", 1.50, 5);
INSERT INTO TB_PRODUTOS (NOME, PRECO, CATEGORIA_ID)
VALUES ("LÂMINA DE BARBEAR GILLETE", 7.50, 2);
INSERT INTO TB_PRODUTOS (NOME, PRECO, CATEGORIA_ID)
VALUES ("POMADA CONTRA RACHADURA DE SEIOS", 58.19, 1);
INSERT INTO TB_PRODUTOS (NOME, PRECO, CATEGORIA_ID)
VALUES ("DORFLEX", 12.29, 4);

SELECT * FROM TB_PRODUTOS;

SELECT * FROM TB_PRODUTOS WHERE PRECO > 50;
SELECT * FROM TB_PRODUTOS WHERE PRECO >= 5 AND PRECO <= 60;
SELECT * FROM TB_PRODUTOS WHERE NOME LIKE "%C%";
SELECT * FROM TB_PRODUTOS INNER JOIN TB_CATEGORIAS ON TB_PRODUTOS.CATEGORIA_ID = TB_CATEGORIAS.ID;
SELECT * FROM TB_PRODUTOS INNER JOIN TB_CATEGORIAS ON TB_PRODUTOS.CATEGORIA_ID = TB_CATEGORIAS.ID WHERE ID = 1;
