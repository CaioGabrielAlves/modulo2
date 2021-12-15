CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;
CREATE TABLE tb_classe(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(20),
ataque BOOLEAN
);

INSERT INTO tb_classe (nome, ataque) VALUES
("GUERREIRO",TRUE),
("ATIRADOR",TRUE), 
("CORREDOR", FALSE),
("ARQUEIRO",TRUE),
("CURADOR", TRUE);

CREATE TABLE tb_personagem(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(20),
    ataque INT,
    defesa INT,
    id_classe INT,
    FOREIGN KEY (id_classe) REFERENCES tb_classe(id)
);

INSERT INTO tb_personagem (nome, ataque, defesa, id_classe)VALUES
("flash", 799, 900, 2),
("saitama", 2999, 5000, 4),
("borsalino", 2000, 1500, 5),
("koro sensei", 3423,4543,3),
("minato", 2345, 1233, 3),
("superman", 4543,4545, 1),
("yoimiya", 545, 436, 4),
("wolverine", 2345, 6666, 5);
SELECT * FROM tb_personagem WHERE ataque >2000;
SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND  2000;
SELECT * FROM tb_personagem WHERE nome LIKE "S%";
SELECT * FROM tb_personagem INNER JOIN tb_classe ON tb_personagem.id_classe = tb_classe.id;
SELECT * FROM tb_personagem INNER JOIN tb_classe ON tb_personagem.id_classe = tb_classe.ids WHERE tb_classe.nome = "ARQUEIRO";




