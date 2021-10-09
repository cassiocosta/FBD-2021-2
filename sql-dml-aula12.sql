-- SQL DML
/*
INSERT
UPDATE
DELETE
SELECT

*/

-- inserir a categoria eletronico no bd
-- campo data formato: yyyy-MM-dd hh:mm:ss

/*
INSERT INTO TABELA (COLUNA1, COL2, COLN...) 
	VALUES(1,'NOME',12.97, '2021-09-01', '2021-09-01 11:00:00', '11:00:00')
*/
insert into CATEGORIAS (NOME)
	VALUES('Eletrônicos');
    
    insert into CATEGORIAS (NOME)
	VALUES('Acessórios');
    
    insert into CATEGORIAS (CODIGO,NOME)
	VALUES(3,'Monitores');
    
    insert into CATEGORIAS (NOME)
	VALUES('Teclados');
    
    
    
    
 
/*
select 
    
 SELECT col1, col2, col3, coln...
 FROM 	CATEGORIAS 
  ...
 WHERE
 
 */
 SELECT codigo, nome
 from 	CATEGORIAS
 
 
 /*
 delete
 */
    
    delete from CATEGORIAS;
    
    -- insert multiplos elementos com insert
    
    
    insert into CATEGORIAS (NOME)
		VALUES
        ('Acessórios'),
        ('Eletrônicos'),
        ('Monitores'),
        ('Teclados');
        
        
  -- deletar somente a categoria acessórios
  
  delete from CATEGORIAS where nome='Acessórios';
  delete from CATEGORIAS 
  where	codigo=9;
  
  select *
  from	 CATEGORIAS
  
  -- consultar a categoria com o código 6
  
  select	*
  from 		CATEGORIAS
  where	 	codigo=6
  
  select	*
  from 		CATEGORIAS
  where	 	nome='Eletrônicos'
  
  /*
  UPDATE tabela
  	SET col1='dado', col2=10, col3='2021-01-01'
  WHERE col0=100;
  
  */-- update - alterar o nome da categoria eletronicos para Super Eletronicos
  
  UPDATE CATEGORIAS 
  	set nome = 'Super Eletrônicos'
   where codigo = 6;
    
    select * from CATEGORIAS
  
  -- cadastrar um teclado
  
  insert into PRODUTOS (descricao, valor_unitario, cod_categoria)
  	values('teclado da microsoft', 255.99, 10);
    
  select * from PRODUTOS;
  
  -- delete from CATEGORIAS where codigo=10
  