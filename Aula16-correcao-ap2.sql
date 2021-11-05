/*

tabelas exercício 1

--
clientes (id, nome)
marcas (id, nome), 
carros(id, nome, id_marca, placa),
alugueis(id, id_cliente, id_carro, valor, data_aluguel)
*/
-- Consultas para fazer também:
-- Quais carros foram locados no mês de setembro de 2021. (*)

-- Quais clientes que tem silva no nome.
    select  *
    from    clientes
    where   nome like '%silva%'

--  Faça uma atualização para acrescentar 20% nos valores dos aluguéis.

update alugueis
set    valor = valor * 1.20


/*
 exercício 2

 Editoras (id, nome)
 Pesquisadores (id, nome)
 periodico (id, titulo)
 artigos (id, id_pesquisador, id_editora, id_periodico ...)

*/
-- listar o artigo com código 1234
select  *
from    artigos
where   id = 1234

-- listar os artigos da editora Saraiva.
select  *
from    artigos
where   nome = 'saraiva';

select  *
from    artigos
where   id = 10 -- editora saraiva tem o codigo 10


-- Listar os pesquisadores onde o nome inicia com João.
   select  *
    from    clientes
    where   nome like 'joão%'


/*
exercício 3

tabelas

tipo_socios (id, nome)
socios (id, id_tipo_socio, endereco)
servicos (id, id_socio, data, valor_pago)

*/

-- Consultas
-- Listar os serviços onde o valor pago é maior que 500.
select  *
from    servicos
where   valor_pago >500

-- Listar os pedidos onde o mês de referência é janeiro de 2020.
select  *
from    servicos
where   data>= '2020-01-01' and data<='2020-01-31'

where   data between '2020-01-01' and '2020-01-31'

where   month(data)=01 and year(data)=2020

-- Listar os sócios que moram na rua que tem o nome Barão do Rio Branco.

select  *
from    socios
where   endereco like '%barão do rio branco%'