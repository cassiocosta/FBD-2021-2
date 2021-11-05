/*

Médicos (codmed, nome, endereço, telefone, crm, cpf, codcid)
	Codcid referencia cidade(codcid)
Pacientes (codpac, nome, endereço, telefone,codcid)
	Codcid referencia cidade(codcid)
Cidades(codcid, nome, UF)
Consultas(codconsulta, codmed, codpac, data, hora)
	Codmed referencia Medico (codmed)
	Codpac referencia Paciente (codpac)
Prescricaos(codconsulta, codmedicamento, posologia)
	Codconsulta referencia Consulta (codconsulta)
	Codmedicamento referencia medicamento (codmedicamento)
Medicamentos (codmedicamento, nome, composicao, preco)

*/

-- Listar os nomes das cidades do estado RS. 
select  codcid, nome, UF           -- por último ele executa o select
from    cidades     -- 1o
where   UF = 'RS'   -- 2o

-- Listar todos os nomes de medicamentos e preço.
select  nome, preco
from    medicamentos

-- Mostrar a média de preços dos medicamentos.
-- usar funções avg, count, max, min, sum 

select  avg(preco) as precos --alias (apelido para a coluna neste contexto)
from    medicamentos

precos
---
67.98

-- Mostrar o número total de consultas cadastradas.

select  count(codconsulta) as total_de_consultas
from    consultas

total_de_consultas
------
1500

-- Listar o nome do medicamento mais caro.
select  max(preco) mais_caro
from    medicamentos

mais_caro
----
590.98

-- Listar os nomes dos medicamentos que tem preço acima da média. 
select  nome
from    medicamentos
where   preco > (select  avg(preco) from    medicamentos)