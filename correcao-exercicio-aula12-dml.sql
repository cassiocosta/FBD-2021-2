-- bryan: Popular tabelas;

insert into CATEGORIAS(nome)
	VALUES('limpeza');
    
SELECT * from CATEGORIAS;
    
insert into PRODUTOS(descricao,valor_unitario,cod_categoria)
	VALUES
    ('detergente para louça',10,01),
    ('sabão',8,01),
    ('vassoura',25,01),
    ('rodo',40,01);
    
    SELECT * from PRODUTOS;
    
insert into FORNECEDORES(nome)
	VALUES('André');
    
    SELECT * from FORNECEDORES;

insert into PEDIDOS(quantidade,valor_unitario,cod_fornecedores,cod_produtos)
	VALUES(8,20,1,1);
    
  update PEDIDOS 
  	SET data_pedido='2021-10-15'
   WHERE codigo=1;
      
    SELECT * FROM PEDIDOS;

    -- ====================================================

-- Liste todos os produtos cadastrados
-- Liste todos os produtos e crie uma nova coluna que de o valor do produto acrescido de 10% 

-- Consulte os pedidos que foram feitos no mês de outubro
select  *
from    pedidos
where   data_pedido>='2021-10-01' and
        data_pedido<='2021-10-31'

select  *
from    pedidos
where   data_pedido between '2021-10-01' and '2021-10-31'

SELECT *
FROM   pedidos
WHERE  MONTH(data_pedido) = MONTH('2021-10-09');

-- quem é executado primeiro no banco de dados?
3 -select (sempre é a última)
1 - from 
2 - where 

-- Extrai um "pedaço" de uma data
DAY
MONTH
YEAR


SELECT 	codigo, descricao, valor_unitario, VALOR_UNITARIO * 1.10 as novo_valor
FROM	PRODUTOS
WHERE 	VALOR_UNITARIO > 10

update  PRODUTOS
	set valor_unitario = VALOR_UNITARIO * 1.10
WHERE 	VALOR_UNITARIO = 10

 select * 
 from 	PRODUTOS
 
 delete from PRODUTOS where valor_unitario>30
 delete from PRODUTOS where CODIGO=1
 
 SELECT * FROM PEDIDOS
 
 select day(CURRENT_DATE) as dia, month(CURRENT_DATE) as mes, year(CURRENT_date) as ano;
 -- alterar descrição do produto 2 para sabão cra cra
UPDATE PRODUTOS
	SET descricao='Sabão cra cra'
WHERE codigo=2;
    
-- Atualizar os preços dos produtos para + 10%.
-- somente os proudtos que custam acima de R$ 10

SELECT 	codigo, descricao, valor_unitario, VALOR_UNITARIO * 1.10 as novo_valor
FROM	PRODUTOS
WHERE 	VALOR_UNITARIO > 10

update  PRODUTOS
	set valor_unitario = VALOR_UNITARIO * 1.10
WHERE 	VALOR_UNITARIO = 10

 select * 
 from 	PRODUTOS
 
 delete from PRODUTOS where valor_unitario>30
 delete from PRODUTOS where CODIGO=1
 
 SELECT * FROM PEDIDOS
 
 select day(CURRENT_DATE) as dia, month(CURRENT_DATE) as mes, year(CURRENT_date) as ano;
 
 select *
 from 	PRODUTOS
 where 	descricao LIKE 'sabão%'
 
 insert into PRODUTOS (descricao, cod_categoria) values ('Sabão de roupa',1);
 