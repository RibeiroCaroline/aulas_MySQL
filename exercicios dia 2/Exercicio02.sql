CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

DROP TABLE tb_pizzas;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(50) NOT NULL,
    descricao TEXT
);

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT  PRIMARY KEY,
    nome VARCHAR (250) NOT NULL, 
    descricao TEXT,
    preco DECIMAL (6,2),
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, descricao) VALUES ("Tradicional", "Pizzas clássicas com sabores tradicionais");
INSERT INTO tb_categorias (tipo, descricao) VALUES ("Vegetariana", "Pizzas feitas com ingredientes vegetais e sem carne");
INSERT INTO tb_categorias (tipo, descricao) VALUES ("Premium", "Pizzas com ingredientes exclusivos e receitas especiais");
INSERT INTO tb_categorias (tipo, descricao) VALUES ("Doce", "Pizzas doces perfeitas para sobremesas");
INSERT INTO tb_categorias (tipo, descricao) VALUES ("Vegana", "Pizzas sem ingredientes de origem animal");

INSERT INTO tb_pizzas (nome, descricao, preco, id_categoria) VALUES ("Margarita", "Molho de tomate, mussarela e manjericão fresco", 30.00, 1);
INSERT INTO tb_pizzas (nome, descricao, preco, id_categoria) VALUES ("Calabresa", "Molho de tomate, mussarela, calabresa e cebola.", 35.00, 1);
INSERT INTO tb_pizzas (nome, descricao, preco, id_categoria) VALUES ("Quatro Queijos", "Mussarela, parmesão, gorgonzola e provolone.", 40.00, 1);
INSERT INTO tb_pizzas (nome, descricao, preco, id_categoria) VALUES ("Pizza Veggie", "Molho de tomate, abobrinha, berinjela e cogumelos.", 38.00, 2);
INSERT INTO tb_pizzas (nome, descricao, preco, id_categoria) VALUES ("Pizza Vegana", "Molho de tomate, queijo vegano, tomate e rúcula.", 46.00, 5);
INSERT INTO tb_pizzas (nome, descricao, preco, id_categoria) VALUES ("Chocolate com Morango", "Cobertura de chocolate e morangos frescos.", 52.00, 4);
INSERT INTO tb_pizzas (nome, descricao, preco, id_categoria) VALUES ("Nutella com Banana", "Cobertura de creme de avelã e fatias de banana.", 60.00, 4);
INSERT INTO tb_pizzas (nome, descricao, preco, id_categoria) VALUES ("Pizza Trufada", "Mussarela, cogumelos e azeite trufado.", 50.00, 3);

SELECT * FROM tb_pizzas WHERE preco > 45;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT nome, tb_pizzas.descricao, preco, tb_categorias.tipo, tb_categorias.descricao FROM tb_pizzas
INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.id_categoria;

SELECT nome, tb_pizzas.descricao, preco, tb_categorias.tipo, tb_categorias.descricao FROM tb_pizzas
INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.id_categoria WHERE tipo = "Doce";




