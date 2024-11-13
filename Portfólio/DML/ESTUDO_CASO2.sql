USE CASO2;

INSERT INTO PASSAGEIROS (PASS_CPF, PASS_NOME, PASS_TEL, PASS_PAIS, PASS_RUA, PASS_NUMRUA, PASS_BAIRRO, PASS_ESTADO, PASS_CODPOSTAL, PASS_EMAIL) VALUES
('123.456.789-00', 'Bruna Costa', '(85) 91234-8765', 'Brasil', 'Rua das Palmeiras', 42, 'Meireles', 'CE', '60165-121', 'bruna.costa@example.com'),
('123.456.789-01', 'Maria Oliveira', '(21) 99876-5432', 'Brasil', 'Av. Brasil', 85, 'Copacabana', 'RJ', '22050-002', 'maria.oliveira@example.com'),
('123.456.789-02', 'Carlos Santos', '(31) 91234-5678', 'Brasil', 'Rua dos Andradas', 300, 'Centro', 'MG', '30130-000', 'carlos.santos@example.com'),
('123.456.789-03', 'Ana Pereira', '(41) 98765-1234', 'Brasil', 'Av. Paraná', 77, 'Centro', 'PR', '80010-000', 'ana.pereira@example.com'),
('123.456.789-04', 'João da Silva', '(11) 98765-4321', 'Brasil', 'Rua das Flores', 120, 'Centro', 'SP', '01000-000', 'joao.silva@example.com');

INSERT INTO AEROPORTOS (AEROP_COD, AEROP_NOME, AEROP_ESTADO, AEROP_PAIS, AEROP_LONGITUDE, AEROP_LATITUDE) VALUES
(1, 'Aeroporto Internacional de Guarulhos', 'São Paulo', 'Brasil', -46.469511, -23.435556),
(2, 'Aeroporto Internacional de Brasília', 'Brasília', 'Brasil', -47.920833, -15.871111),
(3, 'Aeroporto Santos Dumont', 'Rio de Janeiro', 'Brasil', -43.164906, -22.910499),
(4, 'Aeroporto Internacional de Confins', 'Belo Horizonte', 'Brasil', -43.971942, -19.624443),
(5, 'Aeroporto Internacional de Salvador', 'Salvador', 'Brasil', -38.322502, -12.908611);

INSERT INTO AERONAVES (AERON_PREFIXO, AERON_MODELO, AERON_ANOFAB, AERON_FAB, AERON_CAPAC, AERON_AUTONOMIA) VALUES
('PR-GUI', 'Boeing 737', 2015, 'Boeing', 160, 5000),
('PT-MZO', 'Airbus A320', 2018, 'Airbus', 180, 6100),
('PP-LOG', 'Embraer E195', 2020, 'Embraer', 124, 4800),
('PS-ABC', 'Boeing 787', 2017, 'Boeing', 242, 14100),
('PT-XAA', 'Airbus A330', 2016, 'Airbus', 277, 13400);

INSERT INTO VOOS (VOO_ID, VOO_DATA, VOO_HORA, VOO_AEROP_ORIGEM, VOO_AEROP_DESTINO, VOO_AERON) VALUES
(1, '2024-11-15', '10:00:00', 1, 2, 'PR-GUI'),
(2, '2024-11-15', '14:30:00', 2, 3, 'PT-MZO'),
(3, '2024-11-16', '08:00:00', 3, 1, 'PP-LOG'),
(4, '2024-11-16', '18:45:00', 1, 3, 'PR-GUI'),
(5, '2024-11-17', '22:00:00', 2, 1, 'PT-MZO');

INSERT INTO FUNCIONARIOS (FUNC_ID, FUNC_NOME, FUNC_DATANASC, FUNC_CPF, FUNC_FUNCAO, FUNC_PAIS, FUNC_RUA, FUNC_NUMRUA, FUNC_BAIRRO, FUNC_ESTADO, FUNC_CODPOSTAL) VALUES
(1, 'Carlos Silva', '1985-02-15', '123.456.789-00', 'Gerente', 'Brasil', 'Rua das Acácias', 101, 'Centro', 'São Paulo', '01001-000'),
(2, 'Mariana Oliveira', '1990-05-20', '234.567.890-11', 'Analista', 'Brasil', 'Avenida Brasil', 250, 'Bairro Novo', 'Rio de Janeiro', '20021-010'),
(3, 'Felipe Souza', '1982-08-30', '345.678.901-22', 'Coordenador', 'Brasil', 'Rua dos Jacarandás', 323, 'Jardim Paulista', 'São Paulo', '01412-030'),
(4, 'Ana Costa', '1979-11-25', '456.789.012-33', 'Assistente', 'Brasil', 'Travessa do Sol', 150, 'Vila Mariana', 'São Paulo', '04140-120'),
(5, 'Rodrigo Almeida', '1995-03-10', '567.890.123-44', 'Supervisor', 'Brasil', 'Rua do Comercio', 70, 'Vila Progredir', 'São Paulo', '09810-210');

INSERT INTO RESERVAS (RESERVA_COD, RESERVA_VOO, RESERVA_PASS) VALUES
(1, 1, '123.456.789-00'),
(2, 2, '123.456.789-01'),
(3, 3, '123.456.789-02'),
(4, 4, '123.456.789-03'),
(5, 5, '123.456.789-04');

INSERT INTO EQUIPES (EQ_FUNC, EQ_VOO) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);