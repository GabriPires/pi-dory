CREATE DATABASE IF NOT EXISTS dory;
USE dory;

/*drop database dory;*/

CREATE TABLE IF NOT EXISTS end_endereco (
	end_id integer primary key not null auto_increment,
    end_logradouro varchar(180) not null,
    end_numero varchar(10) not null,
    end_bairro varchar(180) not null,
    end_cidade varchar(180) not null,
    end_estado char(2) not null,
    end_pais varchar(50) 
)engine= innoDB;

CREATE TABLE IF NOT EXISTS pes_pessoas(
	pes_id integer not null primary key auto_increment,
    pes_cpf varchar(14),
    pes_nome varchar(180) not null,
    pes_dataNascimento date not null,
    pes_sexo char(1) not null,
    pes_rg varchar(12),
    pes_cutis varchar(50),
    end_id int,
    
	foreign key (end_id) references end_endereco (end_id)
    
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
    res_senha varchar(50) not null,
    pes_id integer,
    
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
	tut_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,

	res_id INT NOT NULL,
    pes_id INT NOT NULL,
    
    tut_cadastro DATETIME NOT NULL,
    tut_ativo TINYINT NOT NULL,
    
    FOREIGN KEY (res_id) REFERENCES res_responsaveis (res_id),
    FOREIGN KEY (pes_id) REFERENCES pes_pessoas (pes_id)
);

/* drop table cde_caso_de_desaparecimento;
drop table con_contato;
drop table des_desaparecidos;
drop table end_endereco;
drop table min_mais_informacoes;
drop table pes_pessoas;
drop table res_responsaveis;
drop table vul_vulneraveis;
drop table tut_tutorias;



select * from pes_pessoas pessoas inner join res_responsaveis responsaveis using(pes_id) inner join con_contato using(pes_id);
select * from pes_pessoas pessoas inner join res_responsaveis responsaveis using(pes_id);
select con_contato, con_tipo from pes_pessoas pessoas inner join res_responsaveis responsaveis using(pes_id) inner join con_contato using(pes_id) where pes_id = 1;

select * from pes_pessoas where pes_id = last_insert_id();

INSERT INTO pes_pessoas(pes_nome, pes_sexo, pes_cutis) VALUES("Nome","M","Branca");
INSERT INTO min_mais_informacoes(min_cor_cabelo, min_cor_olhos, min_altura, min_peso, 
min_descricao, min_tipo_sanguineo, vul_id) VALUES();

select vul_id from min_mais_informacoes where min_codigo = 1;
select pes_id from vul_vulneraveis where vul_id = 2;

select * from vul_vulneraveis where vul_id = (select * from vul_vulneraveis order by pes_id desc limit 1);

select * from vul_vulneraveis order by pes_id desc limit 1;

select * from des_desaparecidos order by pes_id desc limit 1;

UPDATE min_mais_informacoes SET min_doencas = "Doenças", min_deficiencia_mental = "Mental" WHERE vul_id = 25;
*/

select * from end_endereco enderecos left join pes_pessoas pessoas using(end_id) where pes_id = 1;

select des_id, pes_nome, pes_dataNascimento from pes_pessoas inner join des_desaparecidos using (pes_id);

select * from pes_pessoas inner join des_desaparecidos using (pes_id) inner join min_mais_informacoes using (des_id) where des_id = 2;

insert into end_endereco (end_pais) values ("Brasil");

UPDATE pes_pessoas SET end_id = last_insert_id() WHERE pes_id = 1;

select * from des_desaparecidos order by des_id desc limit 1;

select des_id from des_desaparecidos where vul_id = 1 order by des_id desc limit 1;

select * from cde_caso_de_desaparecimento where des_id = 1 order by cde_id desc limit 3;

select res_id from des_desaparecidos inner join  pes_pessoas using (pes_id) inner join min_mais_informacoes using (des_id) inner join tut_tutorias using (pes_id) where des_id = 4;
select * from vul_vulneraveis inner join pes_pessoas using (pes_id) inner join min_mais_informacoes using (vul_id) inner join tut_tutorias using (pes_id) where vul_id = 2;

DELETE FROM min_mais_informacoes WHERE vul_id = 1;
DELETE FROM vul_vulneraveis WHERE vul_id = 1;
DELETE FROM pes_pessoas WHERE pes_id = 1;
DELETE FROM tut_tutorias WHERE pes_id = 1;
DELETE FROM des_desaparecidos WHERE vul_id = 1;