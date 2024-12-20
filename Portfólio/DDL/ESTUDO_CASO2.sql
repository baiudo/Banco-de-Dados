CREATE DATABASE CASO2;

USE CASO2;

CREATE TABLE IF NOT EXISTS PASSAGEIROS(
PASS_CPF INT PRIMARY KEY,
PASS_NOME VARCHAR(70) NOT NULL,
PASS_TEL INT NOT NULL,
PASS_PAIS VARCHAR(50) NOT NULL,
PASS_RUA VARCHAR(50) NOT NULL,
PASS_NUMRUA INT,
PASS_BAIRRO VARCHAR(50) NOT NULL,
PASS_ESTADO VARCHAR(50) NOT NULL,
PASS_CODPOSTAL VARCHAR(10) NOT NULL,
PASS_EMAIL VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS AEROPORTOS(
AEROP_COD INT PRIMARY KEY,
AEROP_NOME VARCHAR(50) NOT NULL,
AEROP_CIDADE VARCHAR(50) NOT NULL,
AEROP_PAIS VARCHAR(50) NOT NULL,
AEROP_LONGITUDE DECIMAL(10,8) NOT NULL,
AEROP_LATITUDE DECIMAL(10,8) NOT NULL
);

CREATE TABLE IF NOT EXISTS AERONAVES(
AERON_PREFIXO INT PRIMARY KEY,
AERON_MODELO VARCHAR(50) NOT NULL,
AERON_ANOFAB INT NOT NULL,
AERON_FAB VARCHAR(50) NOT NULL,
AERON_CAPAC INT NOT NULL,
AERON_AUTONOMIA VARCHAR(50) NOT NULL
);
CREATE TABLE IF NOT EXISTS VOOS(
VOO_ID INT PRIMARY KEY,
VOO_DATA DATE NOT NULL,
VOO_HORA TIME NOT NULL,
VOO_AEROP_ORIGEM INT NOT NULL,
VOO_AEROP_DESTINO INT NOT NULL,
VOO_AERON INT NOT NULL,
CONSTRAINT FK_AERON FOREIGN KEY (VOO_AERON) REFERENCES AERONAVES(AERON_PREFIXO),
CONSTRAINT FK_AEROP_ORIGEM FOREIGN KEY (VOO_AEROP_ORIGEM) REFERENCES AEROPORTOS(AEROP_COD),
CONSTRAINT FK_AEROP_DESTINO FOREIGN KEY (VOO_AEROP_DESTINO) REFERENCES AEROPORTOS(AEROP_COD)
);

CREATE TABLE IF NOT EXISTS FUNCIONARIOS(
FUNC_ID INT PRIMARY KEY,
FUNC_NOME VARCHAR(70) NOT NULL,
FUNC_DATANASC VARCHAR(10) NOT NULL,
FUNC_CPF INT NOT NULL,
FUNC_FUNCAO VARCHAR(50) NOT NULL,
FUNC_PAIS VARCHAR(50) NOT NULL,
FUNC_RUA VARCHAR(50) NOT NULL,
FUNC_NUMRUA INT,
FUNC_BAIRRO VARCHAR(50) NOT NULL,
FUNC_ESTADO VARCHAR(50) NOT NULL,
FUNC_CODPOSTAL VARCHAR(10) NOT NULL
);

CREATE TABLE IF NOT EXISTS RESERVAS(
RESERVA_COD INT PRIMARY KEY,
RESERVA_VOO INT NOT NULL,
RESERVA_PASS INT NOT NULL,
CONSTRAINT FK_VOO FOREIGN KEY (RESERVA_VOO) REFERENCES VOOS(VOO_ID),
CONSTRAINT FK_PASS FOREIGN KEY (RESERVA_PASS) REFERENCES PASSAGEIROS(PASS_CPF)
);

CREATE TABLE IF NOT EXISTS EQUIPES(
EQ_FUNC INT NOT NULL,
EQ_VOO INT NOT NULL,
PRIMARY KEY (EQ_FUNC, EQ_VOO),
CONSTRAINT EQ_PKFK_FUNC FOREIGN KEY (EQ_FUNC) REFERENCES FUNCIONARIOS(FUNC_ID),
CONSTRAINT EQ_PKFK_VOO FOREIGN KEY (EQ_VOO) REFERENCES VOOS(VOO_ID)
);

ALTER TABLE PASSAGEIROS ADD APAGAR VARCHAR(10);
ALTER TABLE PASSAGEIROS MODIFY APAGAR INT;
ALTER TABLE PASSAGEIROS CHANGE APAGAR APAGADO INT;
ALTER TABLE PASSAGEIROS DROP COLUMN APAGADO;

ALTER TABLE AEROPORTOS ADD APAGAR VARCHAR(10);
ALTER TABLE AEROPORTOS MODIFY APAGAR INT;
ALTER TABLE AEROPORTOS CHANGE APAGAR APAGADO INT;
ALTER TABLE AEROPORTOS DROP COLUMN APAGADO;

ALTER TABLE AERONAVES ADD APAGAR VARCHAR(10);
ALTER TABLE AERONAVES MODIFY APAGAR INT;
ALTER TABLE AERONAVES CHANGE APAGAR APAGADO INT;
ALTER TABLE AERONAVES DROP COLUMN APAGADO;

ALTER TABLE VOOS ADD APAGAR VARCHAR(10);
ALTER TABLE VOOS MODIFY APAGAR INT;
ALTER TABLE VOOS CHANGE APAGAR APAGADO INT;
ALTER TABLE VOOS DROP COLUMN APAGADO;

ALTER TABLE FUNCIONARIOS ADD APAGAR VARCHAR(10);
ALTER TABLE FUNCIONARIOS MODIFY APAGAR INT;
ALTER TABLE FUNCIONARIOS CHANGE APAGAR APAGADO INT;
ALTER TABLE FUNCIONARIOS DROP COLUMN APAGADO;

ALTER TABLE RESERVAS ADD APAGAR VARCHAR(10);
ALTER TABLE RESERVAS MODIFY APAGAR INT;
ALTER TABLE RESERVAS CHANGE APAGAR APAGADO INT;
ALTER TABLE RESERVAS DROP COLUMN APAGADO;

ALTER TABLE EQUIPES ADD APAGAR VARCHAR(10);
ALTER TABLE EQUIPES MODIFY APAGAR INT;
ALTER TABLE EQUIPES CHANGE APAGAR APAGADO INT;
ALTER TABLE EQUIPES DROP COLUMN APAGADO;

CREATE TABLE APAGAR(
APAGA ENUM('FUI') PRIMARY KEY
);

DROP TABLE APAGAR;