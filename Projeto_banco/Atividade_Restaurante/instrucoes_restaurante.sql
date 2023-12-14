--TABELA PEDIDOS--
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE "tb_pedido" (
	"pedido_tb"	INTEGER,
	"mesa_id"	INTEGER,
	"produto_id"	INTEGER,
	"quantidade"	INTEGER,
	"total"	INTEGER,
	FOREIGN KEY("mesa_id") REFERENCES ,
	FOREIGN KEY("produto_id") REFERENCES ,
	PRIMARY KEY("pedido_tb" AUTOINCREMENT)
);


INSERT INTO tb_pedidos (nome, tipo, preco, descricao),
VALUES

  INSERT INTO "tb_produto" (nome, tipo, precos, descricao)
VALUES
	('Pizza Margherita', 'Salgado', '$25,00', 'A Pizza Margherita é uma pizza italiana clássica. Ela é coberta com molho de tomate, mussarela fresca, folhas de manjericão fresco e um fio de azeite de oliva. Ela é conhecida por sua simplicidade e sabores frescos.'),
	('Sushi', 'Salgado', '$30,00', 'O Sushi é uma iguaria japonesa que consiste em arroz de sushi, peixe cru ou cozido, legumes e outros ingredientes, todo enrolado em algas nori. Pode ser servido em pedaços individuais ou em rolos.'),
	('Taco', 'Salgado', '$15,00', 'Taco é um prato mexicano composto por uma tortilha de milho ou  farinha recheada com pedaços de carne de frango, porco ou moída, que contém alface, queijo, tomate e molhos variados acompanhado com guacamole e salsa.'),
	('Torta de Maçã (fatia)', 'Doce', '$6,50', 'É uma sobremesa clássica feita com fatias de maçã cozidas em uma massa de torta. As maçãs são geralmente temperadas com canela e açucar, e a torta é assada até que a massa fique dourada e as maçãs fiquem macias.'),
	('Brownie de Chocolate', 'Doce', '$4,50', 'É um pequeno bolo denso e rico em chocolate é servido em pedaços quadrados e pode conter nozes ou pedaços de chocolate, e a parte externa é crocante enquanto o interior é macio e úmido'),
	('Hamburguer', 'Prato', '$30,00', 'Um hambúrguer, ou simplesmente hambúrguer, é um sanduíche que consiste em recheios geralmente uma empada de carne moída, geralmente bovina colocada dentro de um pão fatiado ou pão.'),
	('Mousse de Chocolate', 'Doce', '$6,50', 'É uma sobremesa leve e aerada feitacom chocolate derretido, gemas de ovo e claras batidas em neve. Ela tem um sabor intenso de chocolate e uma textura suave e espumosa'),
	('Sopa de Feijão', 'Salgado', '$9,00', 'É feita de feijões cozidos, geralmente feijão-preto ou carioca, que são misturados com cebola, alho, tomate, bacon ou linguiça.');

INSERT INTO tb_mesas (numero, capacidade)
VALUES
    ('1', '4'),
    ('2', '6'),
    ('3', '3'),
    ('4', '7'),
    ('5', '2'),
    ('6', '5'),
    ('7', '10'),
    ('8', '2');
    
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO "tb_pedidos" (mesa_id, produto_id, quantidade, total) 
VALUES
	('1', '1', '1', '40,00'),
	('2', '2', '1', '7,00'),
	('3', '3', '2', '10,00'),
	('4', '4', '2', '30,00'),
	('5', '5', '3', '45,00'),
	('6', '6', '3', '22,00'),
	('7', '7', '2', '35,00'),
	('8', '8', '2', '15,00');