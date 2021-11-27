/* FAça as seguintes consultas SQL levando em conta a modelagem das notas que trabalhamos em aula.
 
1-  FUS que calcule a média de valor unitário dos produtos vendidos num mês de sua escolha.
2 - FUS que mostre os a quantidade de produtos que foram comprados pelos clientes cujo o nome começa com Maria. Pode mostrar o nome do produto, o nome da Maria (similar) e a quantidade comprada. Similar porque podem ter várias Marias.
3 - NA consulta anterior, acrescente saber qual foi o produto que mais foi comprado.
4 - qual o produto mais caro quem um cliente comprou num determinado período (sua escolha).
 
 
 */ 


 -- revisando
 -- quantas notas por cliente e quem tem mais notas? e quais os 3 primeiros que tem mais notas?
SELECT 	id_cliente, COUNT(ID) AS QUANTAS
from notas
group by id_cliente
order by count(id) DESC
LIMIT 3 

select *;
SELECT COUNT(ID) FROM NOTAS WHERE id_cliente=652

-- 1-  FUS que calcule a média de valor unitário dos 
-- produtos vendidos num mês de sua escolha.
-- onde eu tenho os produtos que foram vendidos? notas_itens 
-- onde está gravado o dado que temporiza um produto vendido? notas no data_emissao
SELECT 		NI.id_produto, AVG(valor_unit) as media_valor_unitario
from		notas_itens NI
              inner join notas N
                  ON N.ID = NI.ID_NOTA
WHERE		N.data_emissao>= '2021-11-01' AND N.data_emissao<='2021-11-30'
GROUP BY	NI.id_produto
ORDER BY	media_valor_unitario DESC


-- 2 - FUS que mostre os a quantidade de produtos que foram comprados pelos clientes cujo o nome começa com Maria. 
-- Pode mostrar o nome do produto, o nome da Maria (similar) e a quantidade comprada. 
-- Similar porque podem ter várias Marias.
-- 2 - FUS que mostre os a quantidade de produtos que foram comprados pelos clientes cujo o nome começa com Maria. 
-- Pode mostrar o nome do produto, o nome da Maria (similar) e a quantidade comprada. 
-- Similar porque podem ter várias Marias.

-- requisito adiciona para utilizar o HAVING
    -- mostrar somente os produtos quantidades agrupadas maior que 1000 - linha 55
SELECT	     c.nome as cliente, p.descricao as produto, sum(ni.quantidade) as quantidade_produtos
FROM 	    notas n
                JOIN clientes c
                    on n.id_cliente = c.id
                JOIN notas_itens ni
                    on ni.id_nota = n.id
                JOIN produtos p
                    on ni.id_produto = p.id
where 	    c.nome ilike 'maria%'
GROUP BY    c.nome, p.descricao
HAVING		sum(ni.quantidade) >1000
order by 	c.nome asc

-- 3 - NA consulta anterior, 
-- acrescente saber qual foi o produto que mais foi comprado.
SELECT	     c.nome as cliente, p.descricao as produto, sum(ni.quantidade) as quantidade_produtos
FROM 	    notas n
                JOIN clientes c
                    on n.id_cliente = c.id
                JOIN notas_itens ni
                    on ni.id_nota = n.id
                JOIN produtos p
                    on ni.id_produto = p.id
GROUP BY    c.nome, p.descricao
order by 	quantidade_produtos desc
limit 		1


-- 4 - qual o produto mais caro que um cliente comprou num determinado período
-- (sua escolha).
SELECT produtos.descricao, MAX(produtos.valor_unit) as max_value  
FROM notas 
    JOIN notas_itens
        on notas_itens.id_nota = notas.id
    JOIN produtos
        on notas_itens.id_produto = produtos.id
WHERE notas.data_emissao >= '2020-12-01' AND notas.data_emissao <= '2020-12-31'
GROUP BY produtos.id
ORDER BY max_value DESC
LIMIT 1


-- 4 - qual o produto mais caro que um cliente comprou num determinado período
-- (sua escolha).
SELECT produtos.id, produtos.descricao, MAX(notas_itens.valor_unit) as max_value  
FROM notas 
    JOIN notas_itens
        on notas_itens.id_nota = notas.id
    JOIN produtos
        on notas_itens.id_produto = produtos.id
WHERE notas.data_emissao >= '2020-12-01' AND notas.data_emissao <= '2020-12-31'
GROUP BY produtos.id, produtos.descricao
ORDER BY max_value DESC
LIMIT 1