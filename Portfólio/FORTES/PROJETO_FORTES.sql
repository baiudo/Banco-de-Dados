create database if not exists projeto_fortes;

use projeto_fortes;

create table if not exists funcionarios (
func_id int primary key,
func_nome varchar(100) not null,
func_email varchar(50) not null,
func_funcao varchar(50) not null,
func_datanasc date not null,
func_cpf varchar(11) not null,
func_rg varchar(15) not null
);

create table if not exists donatarios (
donatario_id int primary key,
donatario_cnpj varchar(14) not null,
razao_social varchar(100) not null,
donatario_contato varchar(100) not null
);

create table if not exists editais (
edital_id int primary key,
edital_titulo varchar(200) not null,
edital_desc text not null,
edital_tematica varchar(100) not null,
id_donatario_edital int not null,
id_func_edital int not null,
constraint fk_id_donatario_edital foreign key (id_donatario_edital) references donatarios(donatario_id),
constraint fk_id_func_edital foreign key (id_func_edital) references funcionarios (func_id)
);

create table if not exists vistorias (
vistoria_id int primary key,
vistoria_doc blob not null,
vistoria_data date not null,
vistoria_ralatorio text not null,
id_func_vistoria int not null,
id_donatario_vistoria int not null,
constraint fk_id_func_vistoria foreign key (id_func_vistoria) references funcionarios (func_id),
constraint fk_id_donatario_vistoria foreign key (id_donatario_vistoria) references donatarios (donatario_id)
);

create table if not exists reunioes (
reuniao_id int primary key,
reuniao_data date not null,
reuniao_hora time not null,
id_vistoria_reuniao int not null,
constraint fk_id_vistoria_reuniao foreign key (id_vistoria_reuniao) references vistorias (vistoria_id)
);

create table if not exists enderecos (
end_id int primary key,
end_cep varchar(9) not null,
end_rua varchar(50) not null,
end_numrua int,
end_cidade varchar(50) not null,
end_bairro varchar(50) not null,
end_UF char(2) not null,
end_pais varchar(50) not null,
id_func_end int not null,
id_donatario_end int not null,
constraint fk_id_func_end foreign key (id_func_end) references funcionarios (func_id),
constraint fk_id_donatario_end foreign key (id_donatario_end) references donatarios (donatario_id)
);