* JOGOS *

INSERT INTO tb_jogos (titulo, genero, lancamento, cod_plataforma)
VALUES
	('Kirby Nightmare In Dream Land', 'Plataforma', '25/10/2002', '1'),
	('Silent Hill', 'Terror', '31/01/1999', '2'),
	('Resident Evil 4', 'Ação', '11/01/1005', '3'),
	('Cuphead', 'Plataforma', '29/09/2017', '4'),
	('Dark Souls', 'Aventura', '22/09/2011', '5'),
	('Project Zero', 'Aventura', '13/09/2001', '6'),
	('The Legend Of Zelda: Majoras Mask', 'Aventura', '27/04/2000', '7'),
	('Super Smash Bros. Ultimate', 'Luta', '7/09/2018', '8'),
	('Crash Bandicoot Remastered Collection', 'Plataforma', '30/07/2017', '9'),
	('Deltarune Chapter 1', 'RPG', '17/09/2021', '10');

--------------------------------------------------------------------------------------------------------------------------------

* CONSOLES *

INSERT INTO tb_plataforma (nome, fabricante)
VALUES
	('Xbox', 'Microsoft'),
	('Nintendo Wii U', 'Nintendo'),
	('Xbox Series X|S', 'Microsoft'),
	('PlayStation 2', 'Sony'),
	('Mega Drive', 'TecToy'),
	('Atari', 'Hasbro Interactive'),
	('Super Nintendo Entertainment System (SNES)', 'Nintendo'),
	('GameCube', 'Nintendo'),
	('PlayStation Portable (PSP)', 'Sony'),
	('Nintendo Switch', 'Nintendo');
	
---------------------------------------------------------------------------------------------------------------------------------

* TABELA JOGOS *

CREATE TABLE "tb_jogos"(
	"cod_jogo" INTEGER,
	"titulo" TEXT,
	"genero" TEXT,
	"lancamento" DATE, 
	"cod_plataforma" INTEGER,
	PRIMARY KEY ("cod_jogo" AUTOINCREMENT)
	CONSTRAINT "cod_plataforma" FOREIGN KEY("cod_plataforma") REFERENCES "tb_plataforma"("cod_plataforma")
	);
	
-----------------------------------------------------------------------------------------------------------------------------------

* TABELA PLATAFORMA *

CREATE TABLE "tb_plataforma" (
	"cod_plataforma" INTEGER,
	"nome" TEXT, 
	"fabricante" TEXT,
	PRIMARY KEY("cod_plataforma" AUTOINCREMENT)
	);
	
----------------------------------------------------------------------------------------------------------------------------------

* ATENDIMENTO *

SELECT * FROM tb_jogos WHERE cod_plataforma = 3;

SELECT 
	tb_plataforma.nome,
	tb_plataforma.fabricante,
	tb_jogos.genero,
	tb_jogos.lancamento,
	tb_jogos.titulo
FROM
	tb_jogos
INNER JOIN
	tb_plataforma ON tb_plataforma.cod_plataforma = tb_jogos.cod_jogo;

UPDATE tb_jogos
	SET lancamento = '31/01/1999'
	WHERE cod_jogo = 1;
UPDATE tb_jogos
	SET lancamento = '24/01/2018'
	WHERE cod_jogo = 7;
UPDATE tb_jogos
	SET lancamento = '11/01/2005'
	WHERE cod_jogo = 9;
UPDATE tb_jogos
	SET lancamento = '15/09/2015'
	WHERE cod_jogo = 4;

------------------------------------------------------------------------------------------------------------------------------------

* DELETE *

DELETE FROM tb_jogos WHERE cod_jogo = 1;
DELETE FROM tb_jogos WHERE cod _jogo = 4;
DELETE FROM tb_jogos WHERE cod_jogo = 8;
DELETE FROM tb_jogos WHERE cod_jogo = 5;

