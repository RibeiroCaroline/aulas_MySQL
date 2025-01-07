CREATE DATABASE db_escola;
use db_escola;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR (255) NOT NULL,
    data_nascimento DATE,
    endereco VARCHAR (255),
    turma INT,
    nota DECIMAL (5, 2),
    PRIMARY KEY (id)
);
INSERT INTO tb_estudantes (nome, data_nascimento, endereco, turma, nota) VALUES ("Caroline", "1996-01-02", "Rua Praia do Castelo, 210, São Paulo", 5, 8.75);
INSERT INTO tb_estudantes (nome, data_nascimento, endereco, turma, nota) VALUES ("Heloísa", "1996-04-14", "Rua Praia do Castelo, 210, São Paulo", 6, 7.90);
INSERT INTO tb_estudantes (nome, data_nascimento, endereco, turma, nota) VALUES ("Gabriel", "1996-04-24", "Rua Praia do Castelo, 210, São Paulo", 5, 9.50);
INSERT INTO tb_estudantes (nome, data_nascimento, endereco, turma, nota) VALUES ("Camile", "1996-01-17", "Rua Praia do Castelo, 210, São Paulo", 5, 6.80);
INSERT INTO tb_estudantes (nome, data_nascimento, endereco, turma, nota) VALUES ("Charles", "1996-07-19", "Rua Praia do Castelo, 210, São Paulo", 6, 8.20);
INSERT INTO tb_estudantes (nome, data_nascimento, endereco, turma, nota) VALUES ("Cláudio", "1996-07-11", "Rua Praia do Castelo, 210, São Paulo", 6, 9.00);
INSERT INTO tb_estudantes (nome, data_nascimento, endereco, turma, nota) VALUES ("Núbia", "1996-11-19", "Rua Praia do Castelo, 210, São Paulo", 6, 7.45);
INSERT INTO tb_estudantes (nome, data_nascimento, endereco, turma, nota) VALUES ("Henry", "1996-06-20", "Rua Praia do Castelo, 210, São Paulo", 5, 9.10);
INSERT INTO tb_estudantes (nome, data_nascimento, endereco, turma, nota) VALUES ("Pérola", "1996-07-05", "Rua Praia do Castelo, 210, São Paulo", 6, 8.60);
INSERT INTO tb_estudantes (nome, data_nascimento, endereco, turma, nota) VALUES ("Miguel", "1996-12-18", "Rua Praia do Castelo, 210, São Paulo", 5, 7.80);

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 6.45 WHERE id = 7;