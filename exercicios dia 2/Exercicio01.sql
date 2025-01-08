CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY, 
    nome_classe VARCHAR(100) NOT NULL,
    habilidade_principal VARCHAR (255) NOT NULL
);

DROP TABLE tb_classes;
DROP TABLE tb_personagens;

CREATE TABLE tb_personagens(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	nivel INT,
    pontos_vida INT,
    classe_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

ALTER TABLE tb_personagens ADD poder_ataque INT;

SELECT * FROM tb_classes;


INSERT INTO tb_classes (nome_classe, habilidade_principal) VALUES ("Guerreiro", "Ataques de curta distância com Espada Longa");
INSERT INTO tb_classes (nome_classe, habilidade_principal) VALUES ("Mago", "Magia poderosa com foco em dano de fogo");
INSERT INTO tb_classes (nome_classe, habilidade_principal) VALUES ("Arqueiro", "Tiros de precisão e ataques a distância com Arco");
INSERT INTO tb_classes (nome_classe, habilidade_principal) VALUES ("Assassino", "Ataques rápidos e furtivos com Adagas");
INSERT INTO tb_classes (nome_classe, habilidade_principal) VALUES ("Paladino", "Habilidades de Proteção e Cura Divina");

INSERT INTO tb_personagens (nome, nivel, pontos_vida, classe_id, poder_ataque) VALUES ("Thorin", 15, 1500, 1, 5000);
INSERT INTO tb_personagens (nome, nivel, pontos_vida, classe_id, poder_ataque) VALUES ("Pyro", 20, 1000, 2, 2040);
INSERT INTO tb_personagens (nome, nivel, pontos_vida, classe_id, poder_ataque) VALUES ("Aelar", 12, 1100, 3, 1500);
INSERT INTO tb_personagens (nome, nivel, pontos_vida, classe_id, poder_ataque) VALUES ("Kael", 18, 900, 4, 3200);
INSERT INTO tb_personagens (nome, nivel, pontos_vida, classe_id, poder_ataque) VALUES ("Valen", 22, 2000, 5, 1345);
INSERT INTO tb_personagens (nome, nivel, pontos_vida, classe_id, poder_ataque) VALUES ("Goran", 10, 1300, 1, 3255);
INSERT INTO tb_personagens (nome, nivel, pontos_vida, classe_id, poder_ataque) VALUES ("Elyn", 17, 950, 2, 4567);
INSERT INTO tb_personagens (nome, nivel, pontos_vida, classe_id, poder_ataque) VALUES ("Lori", 14, 1150, 3, 2347);

INSERT INTO tb_personagens (nome, nivel, pontos_vida, classe_id, poder_ataque) VALUES ("Alaric", 10, 1200, 1, 4500);
INSERT INTO tb_personagens (nome, nivel, pontos_vida, classe_id, poder_ataque) VALUES ("Aceron", 14, 1150, 2, 5000);
INSERT INTO tb_personagens (nome, nivel, pontos_vida, classe_id, poder_ataque) VALUES ("Cirion", 10, 1200, 3, 4500);
INSERT INTO tb_personagens (nome, nivel, pontos_vida, classe_id, poder_ataque) VALUES ("Cedric", 20, 1800, 5, 5200);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_ataque BETWEEN 1000 AND 2000; 

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT nome, nivel, pontos_vida, poder_ataque, tb_classes.nome_classe, tb_classes.habilidade_principal 
FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

SELECT nome, nivel, pontos_vida, poder_ataque, tb_classes.nome_classe, tb_classes.habilidade_principal 
FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id WHERE tb_classes.nome_classe = "Arqueiro"; 






