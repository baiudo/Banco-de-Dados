USE CASO1;

INSERT INTO FORNECEDORES (FORN_COD, FORN_NOME, FORN_RUA, FORN_NUMRUA, FORN_BAIRRO, FORN_ESTADO, FORN_PAIS, FORN_CODPOSTAL, FORN_TEL, FORN_CONTATO) VALUES
(1, 'Fornecedor A', 'Rua das Flores', 123, 'Centro', 'São Paulo', 'Brasil', '01010-000', '(11) 1234-5678', 'Carlos Silva'),
(2, 'Fornecedor B', 'Avenida Brasil', 456, 'Jardim Paulista', 'São Paulo', 'Brasil', '01234-567', '(11) 2345-6789', 'Ana Costa'),
(3, 'Fornecedor C', 'Rua do Comércio', 789, 'Vila Progresso', 'Rio de Janeiro', 'Brasil', '02020-000', '(21) 3456-7890', 'Luiz Souza'),
(4, 'Fornecedor D', 'Travessa do Sol', 101, 'Vila Nova', 'Minas Gerais', 'Brasil', '03030-111', '(31) 4567-8901', 'Mariana Oliveira'),
(5, 'Fornecedor E', 'Rua dos Jacarandás', 202, 'Alphaville', 'São Paulo', 'Brasil', '04040-222', '(11) 5678-9012', 'Rodrigo Almeida');

INSERT INTO PRODUTOS (PROD_COD, PROD_NOME, PROD_DESC, PROD_ESPECTEC, PROD_QUANT, PROD_PRECOUNIT, PROD_UNIDMEDIDA, PROD_ESTOQ_MIN) VALUES
(1, 'Produto A', 'Produto de exemplo A', 'Especificação técnica A', 150.000, 10.50, 'kg', 50.000),
(2, 'Produto B', 'Produto de exemplo B', 'Especificação técnica B', 300.000, 20.00, 'unidade', 100.000),
(3, 'Produto C', 'Produto de exemplo C', 'Especificação técnica C', 200.000, 15.75, 'litro', 80.000),
(4, 'Produto D', 'Produto de exemplo D', 'Especificação técnica D', 500.000, 5.30, 'unidade', 200.000),
(5, 'Produto E', 'Produto de exemplo E', 'Especificação técnica E', 50.000, 7.90, 'kg', 20.000);

INSERT INTO FILIAIS (FILIAIS_COD, FILIAIS_NOME, FILIAIS_RUA, FILIAIS_NUMRUA, FILIAIS_BAIRRO, FILIAIS_CIDADE, FILIAIS_ESTADO, FILIAIS_PAIS, FILIAIS_COSPOSTAL, FILIAIS_CAPACIDADE) VALUES
(1, 'Filial A', 'Rua das Flores', 100, 'Centro', 'São Paulo', 'São Paulo', 'Brasil', '01010-000', '500 funcionários'),
(2, 'Filial B', 'Avenida Brasil', 200, 'Jardim Paulista', 'São Paulo', 'São Paulo', 'Brasil', '01234-567', '300 funcionários'),
(3, 'Filial C', 'Rua do Comércio', 150, 'Vila Progresso', 'Rio de Janeiro', 'Rio de Janeiro', 'Brasil', '02020-000', '350 funcionários'),
(4, 'Filial D', 'Avenida do Sol', 75, 'Vila Nova', 'Belo Horizonte', 'Minas Gerais', 'Brasil', '03030-111', '200 funcionários'),
(5, 'Filial E', 'Rua dos Jacarandás', 300, 'Alphaville', 'Barueri', 'São Paulo', 'Brasil', '04040-222', '150 funcionários');

INSERT INTO PEDIDOS (PEDIDOS_COD, PEDIDOS_DATA, PEDIDOS_HORA, PEDIDOS_PREV, PEDIDOS_STATUS, PEDIDOS_FORN) VALUES
(1, '2024-11-01', '10:30:00', '2024-11-05', 'Concluído', 1),
(2, '2024-11-02', '14:00:00', '2024-11-06', 'Concluído', 2),
(3, '2024-11-03', '09:00:00', '2024-11-07', 'Concluído', 3),
(4, '2024-11-04', '16:30:00', '2024-11-08', 'Concluído', 4),
(5, '2024-11-05', '13:15:00', '2024-11-09', 'Concluído', 5);

INSERT INTO RECEBIMENTOS (RECEB_DATA, RECEB_HORA, RECEB_QUANT_PROD, RECEB_CONDICAO, RECEB_PEDIDOS) VALUES
('2024-11-04', '10:00:00', 50.000, 'Recebimento em perfeitas condições', 1),
('2024-11-05', '14:30:00', 30.000, 'Recebimento com algumas avarias', 2),
('2024-11-06', '09:45:00', 100.000, 'Recebimento completo e em bom estado', 3),
('2024-11-07', '16:00:00', 20.000, 'Recebimento parcialmente danificado', 4),
('2024-11-08', '13:30:00', 60.000, 'Recebimento em ótimo estado', 5);

INSERT INTO PEDIDOS_PRODUTOS (PEPR_PEDIDOS, PEPR_PROD, PP_QUANT) VALUES
(1, 1, 50.000),
(1, 2, 30.000),
(2, 3, 100.000),
(3, 1, 20.000),
(4, 4, 60.000);

INSERT INTO FILIAIS_PRODUTOS (FIPR_FILIAIS, FIPR_PROD) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(2, 1);

INSERT INTO FORNECEDORES_PRODUTOS (FOPR_FORN, FOPR_PROD) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(2, 1);