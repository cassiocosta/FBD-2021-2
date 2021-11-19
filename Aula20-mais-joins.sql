-- modelagem controle de notas de venda
-- postgres

create table clientes(
	id serial not null primary key,
	nome varchar(100)
);

create table produtos(
	id serial not null primary key,
	descricao varchar(100), 
	valor_unit decimal(12,2) default 0
);

create table notas(
	id serial not null primary key,
	data_emissao date,
	id_cliente int not null,
	foreign key(id_cliente)
		references clientes(id)
			on delete restrict
			on update cascade
);

create table notas_itens(
	id serial not null primary key,
	id_nota int not null,
	id_produto int not null,
	quantidade decimal(12,2)  default 0,
	valor_unit decimal(12,2) default 0, 
	foreign key(id_nota)
		references notas(id)
			on delete cascade
			on update cascade,
	foreign key(id_produto)
		references produtos(id)
			on delete restrict
			on update cascade
);


INSERT INTO
  clientes (nome)
VALUES
  ('Júlia'),
  ('Margarida'),
  ('Fabrício'),
  ('César'),
  ('João Miguel'),
  ('Suélen'),
  ('Carlos'),
  ('Maria Eduarda'),
  ('Luiza'),
  ('Hugo'),
  ('Ígor'),
  ('Anthony'),
  ('Lorena'),
  ('Noah'),
  ('Maria Eduarda'),
  ('Célia'),
  ('Manuela'),
  ('Bryan'),
  ('Anthony'),
  ('Théo'),
  ('Hugo'),
  ('Valentina'),
  ('Emanuelly'),
  ('Beatriz'),
  ('Júlio'),
  ('Paulo'),
  ('Vitor'),
  ('Cauã'),
  ('Salvador'),
  ('Felícia'),
  ('Pablo'),
  ('Valentina'),
  ('César'),
  ('Washington'),
  ('Noah'),
  ('Melissa'),
  ('João Pedro'),
  ('Yuri'),
  ('Sílvia'),
  ('Vitória'),
  ('Maria'),
  ('Eduardo'),
  ('Mércia'),
  ('Ricardo'),
  ('Maria'),
  ('Yango'),
  ('Alícia'),
  ('Lucas'),
  ('Félix'),
  ('Raul'),
  ('Felícia'),
  ('Bruna'),
  ('Daniel'),
  ('Suélen'),
  ('Sara'),
  ('Víctor'),
  ('Emanuel'),
  ('Aline'),
  ('Lorena'),
  ('Víctor'),
  ('Maria'),
  ('Alessandra'),
  ('Isabella'),
  ('Laura'),
  ('Raul'),
  ('Miguel'),
  ('Mariana'),
  ('Felipe'),
  ('Carla'),
  ('Morgana'),
  ('Marcos'),
  ('Alessandra'),
  ('Karla'),
  ('Célia'),
  ('Elísio'),
  ('Frederico'),
  ('Helena'),
  ('Luiza'),
  ('Morgana'),
  ('Kléber'),
  ('Lorraine'),
  ('Mércia'),
  ('Lorraine'),
  ('Vitor'),
  ('Ana Luiza'),
  ('Warley'),
  ('Gael'),
  ('João Pedro'),
  ('Ana Luiza'),
  ('Valentina'),
  ('Yuri'),
  ('Ana Luiza'),
  ('Lívia'),
  ('Rebeca'),
  ('Calebe'),
  ('Roberto'),
  ('Júlia'),
  ('Pedro Henrique'),
  ('Lucas'),
  ('Frederico');

INSERT INTO
  produtos (descricao, valor_unit)
VALUES
  ('Lindo Aço Bicicleta', 485.00),
  ('Lindo Granito Sapatos', 66.00),
  ('Incrível Fresco Sabonete', 475.00),
  ('Sem marca Metal Mesa', 566.00),
  ('Sem marca Plástico Salsicha', 98.00),
  ('Lindo Concreto Sabonete', 558.00),
  ('Licenciado Aço Bola', 539.00),
  ('Licenciado Borracha Bicicleta', 853.00),
  ('Pequeno Congelado Teclado', 705.00),
  ('Incrível Congelado Camiseta', 413.00),
  ('Refinado Madeira Mouse', 847.00),
  ('Impressionante Metal Teclado', 300.00),
  ('Fantástico Granito Sapatos', 276.00),
  ('Pequeno Algodão Atum', 930.00),
  ('Incrível Algodão Cadeira', 452.00),
  ('Impressionante Plástico Toalhas', 763.00),
  ('Refinado Aço Carro', 115.00),
  ('Sem marca Plástico Carro', 143.00),
  ('Rústico Plástico Teclado', 278.00),
  ('Lustroso Fresco Sabonete', 994.00),
  ('Ergonômico Algodão Bicicleta', 285.00),
  ('Impressionante Borracha Teclado', 745.00),
  ('Incrível Concreto Sapatos', 676.00),
  ('Lustroso Macio Sapatos', 772.00),
  ('Lustroso Algodão Toalhas', 728.00),
  ('Feito à mão Aço Toalhas', 922.00),
  ('Lustroso Metal Mesa', 215.00),
  ('Gostoso Borracha Mouse', 523.00),
  ('Ergonômico Aço Carro', 532.00),
  ('Gostoso Aço Teclado', 222.00),
  ('Licenciado Congelado Bicicleta', 12.00),
  ('Licenciado Metal Salsicha', 473.00),
  ('Lustroso Concreto Mouse', 609.00),
  ('Inteligente Algodão Salgadinhos', 18.00),
  ('Refinado Metal Luvas', 184.00),
  ('Feito à mão Plástico Salsicha', 537.00),
  ('Pequeno Concreto Carro', 189.00),
  ('Licenciado Concreto Bicicleta', 167.00),
  ('Lindo Metal Luvas', 491.00),
  ('Feito à mão Granito Bacon', 164.00),
  ('Pequeno Fresco Teclado', 448.00),
  ('Inteligente Plástico Salsicha', 387.00),
  ('Fantástico Concreto Luvas', 916.00),
  ('Lindo Algodão Atum', 736.00),
  ('Lustroso Plástico Toalhas', 98.00),
  ('Sem marca Borracha Carro', 778.00),
  ('Sem marca Algodão Bacon', 138.00),
  ('Sem marca Borracha Peixe', 79.00),
  ('Inteligente Metal Camiseta', 731.00),
  ('Ergonômico Macio Calças', 620.00),
  ('Prático Metal Computador', 822.00),
  ('Sem marca Algodão Sabonete', 617.00),
  ('Fantástico Algodão Teclado', 991.00),
  ('Rústico Metal Salada', 594.00),
  ('Ergonômico Granito Cadeira', 432.00),
  ('Gostoso Fresco Chapéu', 64.00),
  ('Incrível Macio Salgadinhos', 391.00),
  ('Inteligente Congelado Camiseta', 157.00),
  ('Ergonômico Aço Teclado', 769.00),
  ('Pequeno Plástico Pizza', 818.00),
  ('Licenciado Metal Salada', 565.00),
  ('Feito à mão Concreto Mesa', 442.00),
  ('Prático Aço Toalhas', 258.00),
  ('Fantástico Concreto Computador', 972.00),
  ('Impressionante Granito Teclado', 567.00),
  ('Lustroso Concreto Frango', 640.00),
  ('Gostoso Macio Bola', 305.00),
  ('Lustroso Metal Atum', 96.00),
  ('Feito à mão Concreto Salada', 853.00),
  ('Gostoso Madeira Salsicha', 922.00),
  ('Ergonômico Aço Salada', 633.00),
  ('Genérico Algodão Salada', 607.00),
  ('Inteligente Concreto Bicicleta', 962.00),
  ('Genérico Algodão Camiseta', 159.00),
  ('Lustroso Borracha Mouse', 226.00),
  ('Refinado Borracha Bacon', 670.00),
  ('Refinado Algodão Sapatos', 865.00),
  ('Fantástico Aço Queijo', 952.00),
  ('Prático Macio Camiseta', 514.00),
  ('Gostoso Concreto Queijo', 135.00),
  ('Genérico Metal Salsicha', 821.00),
  ('Licenciado Concreto Bacon', 447.00),
  ('Feito à mão Plástico Mesa', 216.00),
  ('Pequeno Borracha Salgadinhos', 472.00),
  ('Licenciado Borracha Computador', 416.00),
  ('Lustroso Borracha Salgadinhos', 570.00),
  ('Inteligente Algodão Salada', 636.00),
  ('Gostoso Fresco Carro', 589.00),
  ('Rústico Borracha Cadeira', 968.00),
  ('Rústico Algodão Queijo', 109.00),
  ('Incrível Aço Teclado', 544.00),
  ('Sem marca Madeira Salsicha', 238.00),
  ('Incrível Madeira Salgadinhos', 315.00),
  ('Prático Plástico Frango', 456.00),
  ('Fantástico Plástico Mesa', 552.00),
  ('Ergonômico Congelado Teclado', 890.00),
  ('Sem marca Madeira Frango', 201.00),
  ('Refinado Aço Peixe', 224.00),
  ('Inteligente Algodão Computador', 270.00),
  ('Sem marca Concreto Carro', 341.00);

  INSERT INTO
  notas (data_emissao, id_cliente)
VALUES
  ('2070-12-21 22:47:33', 98),
  ('2096-09-05 14:10:43', 83),
  ('2087-05-28 11:37:06', 26),
  ('2029-02-04 15:52:03', 25),
  ('2052-05-25 04:00:41', 58),
  ('2002-03-03 19:41:39', 100),
  ('2021-05-07 07:39:43', 28),
  ('2046-02-08 10:42:36', 58),
  ('2010-12-14 07:37:33', 25),
  ('2077-12-16 22:42:56', 38),
  ('2097-12-29 11:08:31', 91),
  ('2011-06-07 15:16:57', 23),
  ('2082-05-07 23:04:39', 55),
  ('2024-10-10 02:42:44', 95),
  ('2009-06-16 20:54:15', 44),
  ('2073-01-08 11:28:14', 35),
  ('2063-10-29 22:52:56', 28),
  ('2013-04-07 12:03:47', 11),
  ('2012-11-02 00:39:06', 69),
  ('2090-06-04 18:27:07', 92),
  ('2067-11-13 04:41:07', 56),
  ('2024-10-06 11:33:50', 32),
  ('2006-02-26 10:11:45', 73),
  ('2083-10-24 15:21:10', 63),
  ('2094-01-25 07:45:29', 73),
  ('2059-05-05 11:45:31', 88),
  ('2045-08-28 11:01:53', 51),
  ('2070-03-24 07:59:15', 79),
  ('2022-04-12 13:01:57', 24),
  ('2065-02-01 00:53:59', 67),
  ('2064-10-29 21:09:06', 9),
  ('2079-09-11 22:14:35', 23),
  ('2034-12-30 05:57:04', 93),
  ('1990-09-01 23:48:20', 26),
  ('2036-09-09 02:54:20', 17),
  ('2021-12-29 17:07:19', 59),
  ('1990-08-02 21:43:16', 60),
  ('2036-12-16 04:41:01', 73),
  ('2034-03-19 15:22:33', 69),
  ('2016-09-20 02:57:55', 96),
  ('2073-02-05 15:07:57', 97),
  ('2042-09-09 19:48:30', 55),
  ('1995-08-10 07:29:27', 6),
  ('2062-07-09 08:32:47', 70),
  ('2035-04-11 23:23:08', 61),
  ('2072-02-10 23:33:32', 19),
  ('2019-06-05 11:18:33', 30),
  ('2043-08-17 09:08:46', 32),
  ('2068-12-17 17:17:42', 36),
  ('2096-07-29 23:32:26', 54),
  ('2011-02-20 17:01:42', 98),
  ('2025-11-01 06:35:59', 1),
  ('2070-07-31 17:16:33', 54),
  ('2002-03-26 04:22:55', 18),
  ('2057-12-15 01:56:20', 66),
  ('2062-11-13 19:11:49', 43),
  ('2048-01-17 14:21:17', 100),
  ('2051-07-20 03:50:22', 2),
  ('2009-11-25 03:07:11', 37),
  ('2088-04-28 00:40:46', 23),
  ('2083-10-03 02:46:45', 10),
  ('2002-05-18 00:32:54', 31),
  ('2022-05-07 04:14:01', 77),
  ('2078-12-20 02:37:18', 56),
  ('1995-04-20 03:48:36', 69),
  ('1999-07-22 05:08:54', 71),
  ('2023-03-12 08:24:45', 83),
  ('2003-07-22 15:36:14', 47),
  ('2085-08-20 21:40:50', 77),
  ('2018-03-12 21:39:35', 55),
  ('1998-07-09 20:20:09', 60),
  ('2014-09-22 02:56:57', 60),
  ('2008-03-08 23:16:34', 38),
  ('2067-11-22 05:23:50', 42),
  ('2080-11-20 00:50:22', 67),
  ('2045-05-19 15:07:50', 7),
  ('2092-06-29 07:34:52', 45),
  ('2026-01-13 14:29:50', 2),
  ('2082-12-15 23:48:07', 86),
  ('2005-06-25 11:10:01', 84),
  ('2037-12-21 10:38:20', 6),
  ('1996-08-12 00:27:46', 14),
  ('2096-12-01 14:43:46', 4),
  ('2046-03-28 02:51:03', 17),
  ('2064-08-02 19:52:38', 26),
  ('2091-07-20 20:52:08', 69),
  ('2082-08-17 02:15:42', 37),
  ('2062-08-05 11:15:18', 68),
  ('1993-06-17 13:38:38', 10),
  ('2056-08-10 14:44:45', 35),
  ('2051-07-24 02:06:02', 68),
  ('2066-10-12 13:29:34', 66),
  ('2015-08-26 15:25:52', 76),
  ('2064-04-05 11:02:19', 54),
  ('2017-08-18 17:32:20', 67),
  ('2010-06-05 09:54:16', 43),
  ('2079-03-17 21:59:58', 71),
  ('2033-07-03 16:54:19', 90),
  ('2023-11-09 04:07:02', 85),
  ('2028-06-15 19:14:09', 12);
