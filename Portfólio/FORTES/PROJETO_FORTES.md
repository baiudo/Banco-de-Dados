# Estrutura do Banco de Dados

Este documento descreve a estrutura do banco de dados para o gerenciamento de funcionários, donatários, editais, vistorias, reuniões e endereços.

## Criação do Banco de Dados

```sql
create database if not exists projeto_fortes;

use projeto_fortes;
```
- O banco de dados `projeto_fortes` é criado caso ainda não exista.
- Em seguida, ele é selecionado para ser utilizado como o banco de dados ativo.

## **Tabela: Funcionários**

A tabela `funcionarios` armazena os dados dos funcionários que estão envolvidos nos processos relacionados aos editais e vistorias.

```sql
create table if not exists funcionarios (
  func_id int primary key,
  func_nome varchar(100) not null,
  func_email varchar(50) not null,
  func_funcao varchar(50) not null,
  func_datanasc date not null,
  func_cpf varchar(11) not null,
  func_rg varchar(15) not null
);
```
- **Colunas:**
  - `func_id`: Identificador único do funcionário
  - `func_nome`: Nome completo do funcionário
  - `func_email`: E-mail do funcionário
  - `func_funcao`: Função ou cargo do funcionário
  - `func_datanasc`: Data de nascimento do funcionário
  - `func_cpf`: CPF do funcionário
  - `func_rg`: RG do funcionário

## **Tabela: Donatários**

A tabela `donatarios` armazena informações sobre os donatários responsáveis pelos editais e vistorias.

```sql
create table if not exists donatarios (
  donatario_id int primary key,
  donatario_cnpj varchar(14) not null,
  razao_social varchar(100) not null,
  donatario_contato varchar(100) not null
);
```

- **Colunas:**
  - `donatario_id`: Identificador único do donatário
  - `donatario_cnpj`: CNPJ do donatário
  - `razao_social`: Razão social do donatário
  - `donatario_contato`: Contato do donatário

## **Tabela: Editais**

A tabela `editais` armazena os dados dos editais, incluindo os donatários e funcionários responsáveis por cada edital.

```sql
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
```

- **Colunas:**
  - `edital_id`: Identificador único do edital
  - `edital_titulo`: Título do edital
  - `edital_desc`: Descrição do edital
  - `edital_tematica`: Tema do edital
  - `id_donatario_edital`: Referência ao donatário responsável pelo edital (chave estrangeira, associada à tabela `donatarios`)
  - `id_func_edital`: Referência ao funcionário responsável pelo edital (chave estrangeira, associada à tabela `funcionarios`)
  - 
## **Tabela: Vistorias**

A tabela `vistorias` armazena informações sobre as vistorias realizadas, incluindo os documentos, relatórios e os envolvidos.

```sql
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
```

- **Colunas:**
  - `vistoria_id`: Identificador único da vistoria
  - `vistoria_doc`: Documento da vistoria, armazenado em formato binário
  - `vistoria_data`: Data da vistoria
  - `vistoria_ralatorio`: Relatório detalhado da vistoria
  - `id_func_vistoria`: Referência ao funcionário responsável pela vistoria (chave estrangeira, associada à tabela `funcionarios`)
  - `id_donatario_vistoria`: Referência ao donatário envolvido na vistoria (chave estrangeira, associada à tabela `donatarios`)
 
## **Tabela: Reuniões**

A tabela `reunioes` armazena informações sobre as reuniões realizadas, associadas às vistorias.

```sql
create table if not exists reunioes (
  reuniao_id int primary key,
  reuniao_data date not null,
  reuniao_hora time not null,
  id_vistoria_reuniao int not null,
  constraint fk_id_vistoria_reuniao foreign key (id_vistoria_reuniao) references vistorias (vistoria_id)
);
```

- **Colunas:**
  - `reuniao_id`: Identificador único da reunião
  - `reuniao_data`: Data da reunião
  - `reuniao_hora`: Hora da reunião
  - `id_vistoria_reuniao`: Referência à vistoria associada à reunião (chave estrangeira, associada à tabela `vistorias`)
 
## **Tabela: Endereços**

A tabela `enderecos` armazena os endereços relacionados aos funcionários e donatários.

```sql
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
```

- **Colunas:**
  - `end_id`: Identificador único do endereço
  - `end_cep`: CEP do endereço
  - `end_rua`: Nome da rua do endereço
  - `end_numrua`: Número da rua
  - `end_cidade`: Cidade do endereço
  - `end_bairro`: Bairro do endereço
  - `end_UF`: Unidade federativa (estado) do endereço
  - `end_pais`: País do endereço
  - `id_func_end`: Referência ao funcionário responsável pelo endereço (chave estrangeira, associada à tabela `funcionarios`)
  - `id_donatario_end`: Referência ao donatário responsável pelo endereço (chave estrangeira, associada à tabela `donatarios`)
 
## Relacionamentos Entre as Tabelas

- **Funcionários e Editais**: Cada edital tem um funcionário responsável, referenciado pela chave estrangeira `id_func_edital`.
- **Donatários e Editais**: Cada edital está associado a um donatário, referenciado pela chave estrangeira `id_donatario_edital`.
- **Vistorias e Funcionários/Donatários**: Cada vistoria está associada a um funcionário e a um donatário.
- **Reuniões e Vistorias**: Cada reunião está associada a uma vistoria.
- **Endereços e Funcionários/Donatários**: Cada endereço está associado a um funcionário e a um donatário.

### **Resumo:**

Este banco de dados foi criado para gerenciar informações sobre funcionários, donatários, editais, vistorias, reuniões e endereços. Ele armazena dados essenciais como nomes, contatos, documentos, e registros de atividades. Cada entidade (como funcionário, donatário ou edital) está interligada com outras, garantindo um controle eficiente das informações e suas relações. Por exemplo, os editais estão associados a um funcionário responsável e a um donatário, enquanto as vistorias estão vinculadas a esses mesmos funcionários e donatários. Esse modelo facilita o gerenciamento e o rastreamento das ações e documentos relacionados a esses processos.
