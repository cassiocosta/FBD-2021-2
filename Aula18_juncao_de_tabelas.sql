-- Médicos (codmed, nome, endereço, telefone, crm, cpf, codcid)
-- 	Codcid referencia cidade(codcid)
-- Pacientes (codpac, nome, endereço, telefone,codcid)
-- 	Codcid referencia cidade(codcid)
-- Cidades(codcid, nome, UF)
-- Consultas(codconsulta, codmed, codpac, data, hora)
-- 	Codmed referencia Medico (codmed)
-- 	Codpac referencia Paciente (codpac)
-- Prescricaos(codconsulta, codmedicamento, posologia)
-- 	Codconsulta referencia Consulta (codconsulta)
-- 	Codmedicamento referencia medicamento (codmedicamento)
-- Medicamentos (codmedicamento, nome, composicao, preco)

-- Listar todos os médicos e sua respectiva cidade.

select  m.id, m.nome as medico, m.id_cidade, c.nome as cidade
from    cidades c, medicos m
where   c.id = m.id_cidade 

-- escrever com join

select  m.id, m.nome as medico, m.id_cidade, c.nome as cidade
from    cidades c inner join medicos m
            ON c.id = m.id

id  medico      id_cidade   cidade
-----------------------------------
1   cássio      1           torres
2   douglas     3           capão da canoa  
3   maior       4           passo de torres
4   Julia       1           torres

-- mostrar tabmém as consultas desses médicos destas cidades.
select  m.id, m.nome as medico, m.id_cidade, c.nome as cidade, c.data, c.valor
from    cidades c, medicos m, consultas cl
where   c.id = m.id_cidade and 
        cl.id_medico = m.id


--com join 
select  m.id, m.nome as medico, m.id_cidade, c.nome as cidade, c.data, c.valor
from    cidades c
            INNER JOIN medicos m
                ON  m.id_cidade = c.id_cidade 
            INNER JOIN consultas cl
                ON cl.id_medico = m.id

id  medico      id_cidade   cidade              data        valor              
-----------------------------------=------------------------------
1   cássio      1           torres              2021-11-01      100 
1   cássio      1           torres              2022-02-15      0 
2   douglas     3           capão da canoa      2021-11-15      99   
3   maior       4           passo de torres     2021-12-13      500