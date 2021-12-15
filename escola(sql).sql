CREATE DATABASE escola;
USE escola;

CREATE TABLE estudantes (
	matricula INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(20),
    idade INT,
    disciplina VARCHAR(15),
    nota DECIMAL(4, 2)
);

INSERT INTO estudantes (nome, idade, disciplina, nota) VALUES
("Regiane Gabriel", 12, "Português", 10.0),
("Lorraine Pereira", 13, "Matemática", 7.5),
("Josefina Santos", 14, "História", 6.5),
("Osdenil Alves", 12, "Geografia", 5.5),
("Cristina Melo", 14, "Artes", 10.0),
("Bruna Rodrigues", 13, "Educação Física", 5.5),
("Otávio Pereira", 15, "Física", 8.5),
("Jéssica Tobias", 16, "Química", 6.0);

SELECT * FROM estudantes WHERE nota > 7.0;

SELECT * FROM estudantes WHERE nota < 7.0;

SELECT * FROM estudantes;