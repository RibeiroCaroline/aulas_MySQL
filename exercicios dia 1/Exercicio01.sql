CREATE DATABASE db_rh;
USE db_rh;
CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT, 
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255),
    data_admissao DATE,
    departamento VARCHAR(255),
    PRIMARY KEY (id)
);
INSERT INTO tb_colaboradores (nome, cargo, data_admissao, departamento) VALUES ("Caroline", "Desenvolvedora Junior", "2024-12-03","Tecnológia");
INSERT INTO tb_colaboradores (nome, cargo, data_admissao, departamento) VALUES ("Gabriel", "Staff Engenieer", "2024-10-21","Tecnologia");
INSERT INTO tb_colaboradores (nome, cargo, data_admissao, departamento) VALUES ("Heloísa", "Analista de RH", "2024-11-22","RH");
INSERT INTO tb_colaboradores (nome, cargo, data_admissao, departamento) VALUES ("Camile", "Analista de Marketing Digital", "2024-07-02","Marketing e Comunicação");
INSERT INTO tb_colaboradores (nome, cargo, data_admissao, departamento) VALUES ("Charles", "Recrutador", "2024-12-25","Tecnologia");
INSERT INTO tb_colaboradores (nome, cargo, data_admissao, departamento) VALUES ("Gustavo", "Desenvolvedor Pleno", "2024-12-05","Tecnologia");
INSERT INTO tb_colaboradores (nome, cargo, data_admissao, departamento) VALUES ("Miguel", "Designer Gráfico", "2024-12-06","Marketing e Comunicação");

ALTER TABLE tb_colaboradores ADD salario DECIMAL NOT NULL;

UPDATE tb_colaboradores SET salario = 3.000 WHERE id = 1;
UPDATE tb_colaboradores SET salario = 20.000 WHERE id = 2;
UPDATE tb_colaboradores SET salario = 6.000 WHERE id = 3;
UPDATE tb_colaboradores SET salario = 6.500 WHERE id = 4;
UPDATE tb_colaboradores SET salario = 2.000 WHERE id = 5;
UPDATE tb_colaboradores SET salario = 7.000 WHERE id = 6;
UPDATE tb_colaboradores SET salario = 1.900 WHERE id = 7;

ALTER TABLE tb_colaboradores MODIFY salario DECIMAL (10,2);

UPDATE tb_colaboradores SET salario = 3000.00 WHERE id = 1;
UPDATE tb_colaboradores SET salario = 20000.00 WHERE id = 2;
UPDATE tb_colaboradores SET salario = 6000.00 WHERE id = 3;
UPDATE tb_colaboradores SET salario = 6500.00 WHERE id = 4;
UPDATE tb_colaboradores SET salario = 2000.00 WHERE id = 5;
UPDATE tb_colaboradores SET salario = 7000.00 WHERE id = 6;
UPDATE tb_colaboradores SET salario = 1900.00 WHERE id = 7;

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET salario = 1800.00 WHERE id = 5;
USE db_rh;
UPDATE tb_colaboradores SET departamento = "Tecnologia" WHERE id = 1;


