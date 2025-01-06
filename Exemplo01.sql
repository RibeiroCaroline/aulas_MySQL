CREATE DATABASE db_quitanda; -- cria o banco de dados

USE db_quitanda; -- seleciona o bando de dados 

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    quantidade INT,
    datavalidade DATE,
    preco DECIMAL NOT NULL, 
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) VALUES("tomate", 100, "2023-12-15", 8.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) VALUES ("maçã",20, "2023-12-15", 5.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) VALUES ("laranja",50, "2023-12-15", 10.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) VALUES ("banana",200, "2023-12-15", 12.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) VALUES ("uva",1200, "2023-12-15", 30.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) VALUES ("pêra",500, "2023-12-15", 2.99);

DELETE FROM tb_produtos WHERE id = 2;

SELECT * FROM tb_produtos;

-- Alterar estrutura da tabela
ALTER TABLE tb_produtos MODIFY preco DECIMAL (6,2);

-- Alterar os dados da tabela
UPDATE tb_produtos SET preco = 2.99 WHERE id = 7;