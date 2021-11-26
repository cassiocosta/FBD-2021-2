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
