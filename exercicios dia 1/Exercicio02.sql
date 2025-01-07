CREATE DATABASE db_ecommerce;
USE db_ecommerce;
CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT, 
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL (10,2),
    quantidade_estoque INT NOT NULL,
    categoria VARCHAR(100),
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, preco, quantidade_estoque,categoria) VALUES ("Smartphone XYZ", 1299.99, 50, "Eletrônicos");
INSERT INTO tb_produtos (nome, preco, quantidade_estoque,categoria) VALUES ("Camiseta Masculina Básica", 39.90, 200, "Roupas");
INSERT INTO tb_produtos (nome, preco, quantidade_estoque,categoria) VALUES ("Fone de Ouvido Bluetooth", 299.99, 50, "Eletrônicos");
INSERT INTO tb_produtos (nome, preco, quantidade_estoque,categoria) VALUES ("Cadeira de Escritório Ergonomica", 799.00, 40, "Mobiliário");
INSERT INTO tb_produtos (nome, preco, quantidade_estoque,categoria) VALUES ("Relógio Smartwatch", 459.00, 100, "Acessórios");
INSERT INTO tb_produtos (nome, preco, quantidade_estoque,categoria) VALUES ("Calça Jeans Feminina", 89.90, 150, "Roupas");
INSERT INTO tb_produtos (nome, preco, quantidade_estoque,categoria) VALUES ("Teclado Mecânico RGB", 179.90, 60, "Eletrônicos");
INSERT INTO tb_produtos (nome, preco, quantidade_estoque,categoria) VALUES ("Tênis Esportivo de Alta Performance", 599.90, 50, "Calçados");
INSERT INTO tb_produtos (nome, preco, quantidade_estoque,categoria) VALUES ("Luminária LED Decorativa", 119.90, 75, "Decoração");
INSERT INTO tb_produtos (nome, preco, quantidade_estoque,categoria) VALUES ("Kit de Maquiagem Completo", 129.00, 80, "Beleza");

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 550.00 WHERE id = 5;


