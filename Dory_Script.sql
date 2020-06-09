CREATE DATABASE IF NOT EXISTS dory;
USE dory;


CREATE TABLE IF NOT EXISTS end_endereco (
	end_id integer primary key not null auto_increment,
    end_logradouro varchar(180) not null,
    end_numero varchar(10) not null,
    end_bairro varchar(180) not null,
    end_cidade varchar(180) not null,
    end_municipio char(2) not null,
    end_pais varchar(50)
)engine= innoDB;

CREATE TABLE IF NOT EXISTS pes_pessoas(
	pes_id integer not null primary key auto_increment,
    pes_cpf varchar(14),
    pes_nome varchar(180) not null,
    pes_dataNascimento datetime not null,
    pes_sexo char(1) not null,
    pes_rg varchar(12),
    pes_cutis varchar(50),
    end_id integer not null,
    
    foreign key  (end_id) references end_endereco (end_id) 
)engine = innoDB;

CREATE TABLE IF NOT EXISTS con_contato(
	con_id integer not null auto_increment primary key,
    con_contato varchar(180) not null,
    con_tipo enum("TelefoneResidencial","TelefoneComercial","Celular"),
	pes_id integer not null,
    
    foreign key (pes_id) references pes_pessoas (pes_id)
)engine = innoDB;

CREATE TABLE IF NOT EXISTS res_responsaveis(
	res_id integer not null auto_increment primary key,
    res_email varchar(180) not null,
    res_senha varchar(50),
    pes_id integer not null,
    
    foreign key (pes_id) references pes_pessoas (pes_id)
)engine = innoDB;

CREATE TABLE IF NOT EXISTS vul_vulneraveis(
	vul_id integer not null auto_increment primary key,
    vul_observacoes varchar(180) not null,
    vul_status tinyint not null,
    pes_id integer not null,
    
    foreign key (pes_id) references pes_pessoas (pes_id)
)engine = innoDB;

CREATE TABLE IF NOT EXISTS des_desaparecidos(
	des_id integer not null auto_increment primary key,
    des_encontrado datetime,
    pes_id integer not null,
    vul_id integer,
    
    foreign key (pes_id) references pes_pessoas (pes_id),
    foreign key (vul_id)  references vul_vulneraveis (vul_id)
)engine = innoDB;

CREATE TABLE IF NOT EXISTS min_mais_informacoes(
	min_codigo integer not null auto_increment primary key,
    min_cor_cabelo varchar(50),
    min_cor_olhos varchar(50),
    min_altura varchar(4),
    min_peso varchar(10),
    min_descricao varchar(150),
    min_tipo_sanguineo enum("A+","B+","O+","AB+","A-","B-","O-","AB-"),
    min_doencas varchar(150),
    min_deficiencia_mental varchar(100),
    min_deficiencia_fisica varchar(100),
    min_restricao_alimentar varchar(100),
    min_restricao_medicamento varchar(100),
    des_id integer,
    vul_id integer,
    
    foreign key (des_id) references des_desaparecidos (des_id),
    foreign key (vul_id) references vul_vulneraveis (vul_id)
    
)engine = innoDB;

CREATE TABLE IF NOT EXISTS cde_caso_de_desaparecimento(
	cde_id integer not null auto_increment primary key,
    cde_ultima_roupa varchar(50),
    cde_ultima_localizacao varchar(50),
    cde_ultimo_local_encontrado varchar(50),
    cde_ultimo_horario_visto datetime,
    des_id integer not null,
    
    foreign key (des_id) references des_desaparecidos (des_id)
    
)engine = innoDB;

CREATE TABLE IF NOT EXISTS tut_tutorias(
	res_id INT NOT NULL,
    pes_id INT NOT NULL,
    
    tut_cadastro DATETIME NOT NULL,
    tut_ativo TINYINT NOT NULL,
    
    CONSTRAINT pk_tut_tutorias PRIMARY KEY (res_id, pes_id),
    CONSTRAINT fk_tut_tutorias2 FOREIGN KEY (res_id) REFERENCES res_responsaveis (res_id),
    CONSTRAINT fk_tut_tutorias3 FOREIGN KEY (pes_id) REFERENCES pes_pessoas (pes_id)
);

/* drop table cde_caso_de_desaparecimento;
drop table con_contato;
drop table des_desaparecidos;
drop table end_endereco;
drop table min_mais_informacoes;
drop table pes_pessoas;
drop table res_responsaveis;
drop table vul_vulneraveis;
/*




