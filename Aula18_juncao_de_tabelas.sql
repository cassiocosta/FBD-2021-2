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

-- * Listar o nome e telefone dos médicos da cidade de ‘Torres’.
select  m.nome as medico, m.telefone, c.nome as cidade
from    cidades c 
            inner join medicos m
                on m.id_cidade = c.id_cidade

nome    telefone    cidade
Julia   515515151   torres
maior   69*89898    Passo de torres
enio    null        capão da canoa


-- *Listar todas os nomes dos medicamentos, juntamente com a posologia,
    -- prescritos na consulta de código 1.

select  m.nome, m.posologia
from    medicamentos m
            inner join prescritos p
                on p.id_medicamento = m.id
where   p.id_consulta = 1

-- * Listar todas as consultas com nome do médico,
--      nome do paciente, data e hora.

medico
paciente
consulta

-- timestamp ou datetime = yy-MM-dd hh:mm:ss
select  m.nome as medico, p.nome as paciente, c.data, c.hora
FROM    Medicos M 
            INNER JOIN Consultas C ON M.id = c.id_medico
            INNER JOIN pacientes P ON p.id = c.id_paciente



já fez o join? quero os joins.. data e hora é select ... fica por último

             próximo com vcs..

estou com abstinencia de falar... vixxxxxxxxxxe
nops
bora completar... 
falta uma tabela ali no join

medico      paciente        data        hora
---------------------------------------------
Julia       enio            2021-11-01  11:00:00
Julia       cassio          2021-11-01  14:00:00
Julia       mari            2021-12-01  16:00:00
Luiz        alice           2021-11-01  11:00:00
Luiz        enio            2021-12-01  15:00:00


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

-- quais medicamentos a dr. julia utilizou nas suas consultas do mes de 
    -- outubro de 2021. O código da dr. júlia é 3999

SELECT M.nome as Medico, B.nome as Medicamento
FROM Prescricao P INNER JOIN Consultas C ON C.id = P.id_consulta 
                  INNER JOIN Medicos M ON M.id = C.id_medico
                  INNER JOIN Medicamentos B ON B.id = P.id_meds
WHERE M.id = 3999 AND C.data BETWEEN '2021/10/01' AND '2021/10/30';

medico       medicamento  
------------------------
aaaaa       safgfgfg
 nnn        gfgfgfgf
 wertwert   qsfgsfgsdfg