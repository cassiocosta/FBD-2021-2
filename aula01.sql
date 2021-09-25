CREATE TABLE clientes
(   
    id int not null,
    nome varchar(150) not null,
    whats varchar(17),
    PRIMARY KEY (id,nome) -- define a chave primária no final
);

CREATE TABLE clientes
(   
    id int not null auto_increment primary key, -- define a chave primária no inicio;    
    nome CHAR(150) not null,
    texto text,
    whats CHAR(17)
);

-- Qual a diferença entre CHAR(N) e VARCHAR(N)

/*

    termo char(10)
    termo_1 varchar(10)

    termo
    |||||||||| (char)
    oi||||||||
    alo|||||||
    chocol||||
    cassiocost

    termo_1

    oi
    alo
    chocol
    cassiocost

    estado char(2)
    estado varchar(2)
    RS
    SC
    PR
    PS
    MS
    SP

*/


/*
    51981263079 int
    (51) 9 8126-3079
    60.153 x 7,00
*/


-- criar a tabela vendas que relaciona
-- com os clientes
-- um cliente tem muitas vendas

CREATE TABLE vendas
(
    id int not null auto_increment primary key,
    data_emissao date not null,
    id_cliente int not null,
    constraint faz_venda
        foreign key(id_cliente)
            references clientes(id)
);

/*
tipo de dados de tempo

date:  yyyy-MM-dd
datetime:  yyyy-MM-dd hh:mm:ss
time hh:mm:ss
timeStamp: yyyy-MM-dd hh:mm:ss

*/


-- resumo da criação de clientes e vendas
CREATE TABLE clientes
(   
    id int not null auto_increment primary key, -- define a chave primária no inicio;    
    nome CHAR(150) not null,
    texto text,
    whats CHAR(17)
);
CREATE TABLE vendas
(
    id int not null auto_increment primary key,
    data_emissao date not null,
    id_cliente int not null,
    constraint cliente_vendas_fk
        foreign key(id_cliente)
            references clientes(id)
);

/*
    um produto percente a uma categoria e uma categoria tem muitos produtos
    um produto tem muitas fotos e uma foto pertence a mais de um produto

    quantas tabelas eu terei aqui?
    comandos DDL?   

*/

-- resposta do Douglas

CREATE TABLE categorias (
  id INT NOT NULL PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
);

CREATE TABLE produtos (
  id INT NOT NULL PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  valor FLOAT NOT NULL, 
  quantidade INT NOT NULL,
  id_categoria INT NOT NULL,
  CONSTRAINT categoria_do_produto
    FOREIGN KEY (id_categoria)
      REFERENCES categorias(id)
);

CREATE TABLE fotos (
  id INT NOT NULL PRIMARY KEY,
  url VARCHAR(255) NOT NULL
);

-- precisa ter uma tabela que referencie produtos e fotos (many to many)
CREATE TABLE fotos_produtos 
( 
  id_foto INT NOT NULL,
  id_produto INT NOT NULL,
  CONSTRAINT fotos_produtos_fotos_fk
    FOREIGN KEY (id_foto)
      REFERENCES fotos(id),
  CONSTRAINT fotos_produtos_produtos_fk
    FOREIGN KEY (id_produto)
      REFERENCES produtos(id)
);



produtos
id      nome            
100     notebook           
200     mala notebook   
300     notebook hp

fotos
id  url
1   ../1.jpg    
2   ../2.jpg    
3   ../3.jpg    

fotos_produtos
id_produto  id_foto
100         1
100         2
100         3
200         1
300         2
