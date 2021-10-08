CREATE TABLE colaboradores
(
    id int not null PRIMARY KEY,
    nome varchar(100) not null,
    n_matricula int not null,
    endereco_email varchar(100) not null,
    senha_login int not null
);

CREATE TABLE participantes_projetos
(
    id int not null PRIMARY key,
  	id_colaborador int not null,
    constraint colaborador_participante_fk
        foreign key(id_colaborador)
            references colaboradores(id)    
);

CREATE TABLE projetos
(
    id int not null PRIMARY KEY,
    estimativa_horas float not null,
    descricao varchar(200) not null,
    nome varchar(70) not null,
  	id_admin int not null,
  	CONSTRAINT projetos_colaboradores_fk
  		FOREIGN key (id_admin)
  			REFERENCES colaboradores(id)
);

CREATE TABLE projetos_participantes
(
  	id_participante int not null,
  	id_projeto int not null, 
  	CONSTRAINT projetos_participantes_participantes_projetos_fk
  		FOREIGN key (id_participante)
  			REFERENCES participantes_projetos(id),
  	CONSTRAINT projetos_participantes_projetos_fk
  		FOREIGN KEY (id_projeto)
  			REFERENCES projetos(id) 			
);

CREATE TABLE projetos_sociais
(
    id int not null PRIMARY KEY,
    publico_beneficiario varchar(100) not null,
  	id_projeto int not null,
  	CONSTRAINT projetos_sociais_projetos_fk
  		FOREIGN KEY(id_projeto)
  			REFERENCES projetos(id)
);

CREATE TABLE projetos_melhoria_de_processo
(
    id int not null PRIMARY key,
    resultados_esperados int not null,
    departamento varchar(100) not null,
  	id_projeto int not null,
  	CONSTRAINT projetos_melhoria_de_processo_projetos_fk
  		FOREIGN KEY(id_projeto)
  			REFERENCES projetos(id)
);

CREATE TABLE comentarios
(
    id int not null,
    conteudo varchar(200) not null,
    data_hora datetime not null,
  	id_colaborador int not null,

    constraint comentarios_colaborador_comentarios_fk
        FOREIGN key(id_colaborador)
            references colaboradores(id)
);

-- incluir o campo CPF na tablea colaboradores


ALTER table colaboradores 
	add COLUMN CPF varchar(14);


  -- deletar o campo n_matricula da tab colaboradores
    ALTER table colaboradores 
	drop COLUMN n_matricula;

-- alterar o tamanho do campo endereco de e-mail
    
ALTER table colaboradores
	MODIFY endereco_email varchar(200);

-- incluindo e deletando constraints

ALTER TABLE projetos_sociais
        DROP FOREIGN KEY projetos_sociais_projetos_fk;

ALTER TABLE projetos_sociais 
			ADD  CONSTRAINT projetos_sociais_projetos_fk
			FOREIGN KEY(id_projeto)
				REFERENCES projetos(id);