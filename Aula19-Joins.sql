CREATE TABLE cidades
(
    ID serial NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    UF CHAR(2) NOT NULL
);



insert into cidades (nome, uf)
	values('Torres','RS'),('Capão','RS'),('Itapema','SC');
    
    Select * from cidades

CREATE TABLE medicos
(
    ID serial NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    fone VARCHAR(50),
    cidade_id INT NOT NULL,
    CONSTRAINT cidades FOREIGN KEY (cidade_id) REFERENCES cidades(ID)
  		on delete RESTRICT
  		on update CASCADE
);

CREATE TABLE pacientes
(
    ID serial NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cidade_id INT NOT NULL,
    CONSTRAINT cidades FOREIGN KEY (cidade_id) REFERENCES cidades(ID)
    	on delete RESTRICT
  		on update CASCADE
);

-- adicionar o campo endereço em pacientes??
alter table pacientes add COLUMN endereco varchar(70);
alter table pacientes add COLUMN telefone varchar(20);

CREATE TABLE consultas
(
    ID serial NOT NULL PRIMARY KEY,
    data_consulta DATE not null,
  	valor float default 0,
    medico_id INT NOT NULL,
    paciente_id INT NOT NULL,
    CONSTRAINT medicos FOREIGN KEY (medico_id) REFERENCES medicos(ID)
  		on delete RESTRICT
  		on update CASCADE,
    CONSTRAINT pacientes FOREIGN KEY (paciente_id) REFERENCES pacientes(ID)
    		on delete RESTRICT
  		on update CASCADE
);
select * from cidades
INSERT INTO cidades (nome, uf)
    VALUES ('Rondônia','RO'),('Acre','AC'),('Amazonas','AM'),('Roraima','RR'),('Pará','PA'),('Amapá','AP'),('Tocantins','TO'),('Maranhão','MA'),('Piauí','PI'),('Ceará','CE'),('Rio Grande do Norte','RN'),('Paraíba','PB'),('Pernambuco','PE'),('Alagoas','AL'),('Sergipe','SE'),('Bahia','BA'),('Minas Gerais','MG'),('Espírito Santo','ES'),('Rio de Janeiro','RJ'),('São Paulo','SP'),('Paraná','PR'),('Santa Catarina','SC'),('Rio Grande do Sul','RS'),('Mato Grosso do Sul','MS');


INSERT into medicos(nome, fone, cidade_id)
values
('Pedro', 'xxxxxxx', 1),
('Ana', 'xxxxxxx', 2),
('Tiago', 'xxxxxxx', 3),
('João', 'xxxxxxx', 1),
('Patricia', 'xxxxxxx', 3),
('Maria', 'xxxxxxx', 3);


INSERT INTO pacientes (nome,endereco,telefone,cidade_id)
 VALUES
    ('Marcos','Rua verde','05188557766', 01),
    ('Julia','Rua vermelha','05499887755', 02),
    ('Maria','Rua azul','05499112233', 03);
  
    select * from medicos 
       select * from pacientes
   
    INSERT INTO consultas(data_consulta, valor, medico_id, paciente_id)
VALUES
('2021/10/21', 120, 25, 1),
('2021/03/11', 170, 29, 2),
('2021/07/17', 120, 26, 1),
('2021/11/12', 170, 30, 3),
('2021/12/23', 250, 30, 3),
('2021/09/01', 150, 28, 2);

-- Pegar os médicos que moram em Torres.... O código de Torres é 2333
Select  *
From    medicos
where   CidadeId = 2333;

-- Pegar o nome da cidade do Dr. Carlos mora. O código do dr. Carlos é 5555. 
-- Mostre o nome do médico o fone e o nome da cidade que ele mora.

select  m.id as codigo, m.nome as medico, m.fone, c.nome as cidade
from    medicos m
         inner join  cidades c
                on m.CidadeId = c.id
where m.id = 5555

-- definição de aliases

codigo  medico        fone            cidade
5555    Carlos          34343434        Froripa

select  fi.* 
from    filialacesso fi 
            INNER JOIN filial f 
                ON fi.filial = f.id 
WHERE   usuario = 2252 and f.codigo = 5001;


-- ordem de execução dos comandos
10- select (último sempre)
1 - from
2 - where
group by
having
order by
limit 


-- 1 - todas todos os pacientes do médico RAfael hoje

-- 2 - todos os pacientes que temos para atender hoje

-- 3 - valor total das consultas do mês de junho 2021

-- 4- todos os pacientes da Médica Júlia e de qual cidade eles pertencem 
-- que tem consulta no mês de dezembro de 2021



-- 5 - Todos os médicos que já atenderam algum paciente da cidade de Torres.

-- 6 Médico: Atendente, pf. ve qual foi a última vez que eu atendi a Rafaela e 
-- de qual cidade ela é?




