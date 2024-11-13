USE CASO5;

INSERT INTO CLIENTES (CLIENTE_CPF, CLIENTE_NOME, CLIENTE_DATANASC, CLIENTE_RUA, CLIENTE_NRUA, CLIENTE_BAIRRO, CLIENTE_CIDADE, CLIENTE_CODPOSTAL, CLIENTE_PAIS, CLIENTE_STATUS)
VALUES 
('123.456.789-01', 'João Silva', '1985-03-15', 'Rua das Flores', 123, 'Centro', 'São Paulo', '01234-567', 'Brasil', 'Ativo'),
('987.654.321-00', 'Maria Oliveira', '1990-07-22', 'Avenida Brasil', 456, 'Jardim das Palmeiras', 'Rio de Janeiro', '98765-432', 'Brasil', 'Inativo'),
('112.233.445-56', 'Carlos Pereira', '1982-12-01', 'Rua da Paz', 789, 'Vila Nova', 'Belo Horizonte', '34567-890', 'Brasil', 'Ativo'),
('223.344.556-67', 'Ana Souza', '1995-05-10', 'Travessa do Sol', 321, 'Itaipava', 'Curitiba', '67890-123', 'Brasil', 'Ativo'),
('334.455.667-78', 'Ricardo Lima', '1988-09-30', 'Rua das Acácias', 654, 'Morumbi', 'São Paulo', '12345-678', 'Brasil', 'Ativo');

INSERT INTO PRODUTOS (PROD_ID, PROD_CATEGORIA, PROD_PRECO, PROD_QUANT)
VALUES 
(1, 'Eletrônicos', 999.99, 50),
(2, 'Roupas', 129.90, 200),
(3, 'Alimentos', 10.50, 100),
(4, 'Móveis', 299.00, 30),
(5, 'Livros', 45.99, 150);

INSERT INTO FORNECEDORES (FORN_CNPJ, FORN_CONTATO, FORN_NOME)
VALUES 
('12.345.678/0001-99', 'Carlos Silva', 'Fornecedor 1'),
('98.765.432/0001-88', 'Maria Oliveira', 'Fornecedor 2'),
('11.223.344/0001-77', 'José Souza', 'Fornecedor 3'),
('55.667.788/0001-66', 'Ana Pereira', 'Fornecedor 4'),
('99.887.766/0001-55', 'Ricardo Lima', 'Fornecedor 5');

INSERT INTO VENDAS (VENDA_ID, VENDA_CLIENTE_ID) 
VALUES 
(1, '123.456.789-01'),
(2, '987.654.321-00'),
(3, '112.233.445-56'),
(4, '223.344.556-67'),
(5, '334.455.667-78');

INSERT INTO PAGAMENTOS (PAG_ID, PAG_DATA, PAG_VALOR, PAG_STATUS, PAG_FORMA, PAG_VENDA_ID)
VALUES 
(1, '2024-11-10', 150.00, 'A PAGAR', 'BOLETO', 1),
(2, '2024-11-11', 300.00, 'PAGO', 'CARTAO DE CREDITO', 2),
(3, '2024-11-12', 50.00, 'PAGO', 'PIX', 3),
(4, '2024-11-13', 120.00, 'ATRASADO', 'BOLETO', 4),
(5, '2024-11-14', 200.00, 'PAGO', 'CARTAO DE CREDITO', 5);

INSERT INTO FORNECEDORES_PRODUTOS (FP_FORN_ID, FP_PROD_ID) 
VALUES
('12.345.678/0001-99', 1),
('98.765.432/0001-88', 2),
('11.223.344/0001-77', 3),
('55.667.788/0001-66', 4),
('99.887.766/0001-55', 5);

INSERT INTO PRODUTOS_VENDAS (PV_PROD_ID, PV_VENDA_ID, PV_QUANT, PV_VALOR_VENDA)
VALUES 
(1, 1, 2, 200.00),
(2, 2, 1, 150.00),
(3, 3, 3, 450.00),
(4, 4, 5, 500.00),
(5, 5, 4, 600.00);