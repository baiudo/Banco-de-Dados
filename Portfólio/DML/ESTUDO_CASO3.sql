USE CASO3;

INSERT INTO EMPRESAS (CNPJ_EMPRESA, RAZAO_SOCIAL_EMPRESA, CONTATO_EMPRESA) VALUES
('12.345.678/0001-95', 'Alfa Soluções Ltda', 'Maria Silva'),
('98.765.432/0001-00', 'Beta Comercio de Produtos S.A.', 'Carlos Pereira'),
('45.678.912/0001-10', 'Gama Logística e Transporte LTDA', 'Fernanda Costa'),
('78.912.345/0001-32', 'Delta Tecnologia e Inovação ME', 'João Almeida'),
('32.165.487/0001-44', 'Epsilon Serviços Financeiros', 'Ana Souza');

INSERT INTO EMPREGADOS (COD_EMPREGADO, NOME_EMPREGADO, CARGO_EMPREGADO, SALÁRIO_EMPREGADO, QUALIFICACAO_EMPREGADO, DATA_ADMISSAO_EMPREGADO) VALUES
(1, 'José Silva', 'Gerente de Projetos', 8500.00, 'Engenheiro', '2021-02-15'),
(2, 'Ana Costa', 'Analista de Dados', 6500.00, 'Cientista de Dados', '2022-05-10'),
(3, 'Marcos Pereira', 'Desenvolvedor de Software', 7000.00, 'Programador', '2023-01-20'),
(4, 'Beatriz Souza', 'Assistente Administrativo', 3500.00, 'Administrador', '2020-08-25'),
(5, 'Lucas Rocha', 'Técnico de Suporte', 4000.00, 'Técnico em Informática', '2019-11-11');

INSERT INTO REGISTRO_MANUTENCAO (COD_MANUT, DATA_MANUT, DESCRICAO_MANUT) VALUES
(1, '2024-01-15', 'Substituição de peças desgastadas no motor principal'),
(2, '2024-02-10', 'Inspeção e lubrificação dos sistemas de ventilação'),
(3, '2024-03-05', 'Revisão completa do sistema elétrico'),
(4, '2024-04-20', 'Calibração dos equipamentos de medição'),
(5, '2024-05-15', 'Troca de filtros de ar e ajuste de válvulas');

INSERT INTO REGISTRO_SUPRIMENTO (COD_SUP, QUANT_SUP, DATA_NECESSIDADE) VALUES
(1, 100, '2024-06-01'),
(2, 200, '2024-06-15'),
(3, 50, '2024-07-10'),
(4, 300, '2024-07-20'),
(5, 150, '2024-08-05');

INSERT INTO TIPO_COMPONENTES (COD_TIPO_COMP, FUNCAO_COMP) VALUES
(1, 'Resfriamento de motor'),
(2, 'Sistema de iluminação'),
(3, 'Controle de pressão'),
(4, 'Proteção contra sobrecarga'),
(5, 'Filtragem de ar');

INSERT INTO CLIENTES (COD_CLIENTE, RAZAO_SOCIAL_CLIENTE, RAMO_ATIVIDADE, DATA_CADASTRO, CONTATO_CLIENTE, CNPJ_CLIENTE, COD_EMPRESA_CLIENTE) VALUES
(1, 'Tech Solutions LTDA', 'Tecnologia da Informação', '2024-01-10', 'Carlos Silva', '12.345.678/0001-99', '12.345.678/0001-95'),
(2, 'Consultoria Empresarial ABC', 'Consultoria', '2024-02-15', 'Fernanda Oliveira', '98.765.432/0001-98', '98.765.432/0001-00'),
(3, 'Indústria Metalúrgica XYZ', 'Indústria', '2024-03-05', 'Jorge Lima', '45.678.912/0001-50', '45.678.912/0001-10'),
(4, 'Agropecuária São João', 'Agronegócio', '2024-04-20', 'Maria Costa', '78.912.345/0001-32', '11.223.344/0001-77'),
(5, 'Loja de Roupas Fashion', 'Varejo', '2024-05-10', 'Paula Mendes', '99.887.766/0001-66', '32.165.487/0001-44');

INSERT INTO FORNECEDORES (COD_FORN, RAZAO_SOCIAL_FORN, CONTATO_FORN, CNPJ_FORN, COD_EMPRESA_FORN) VALUES
(1, 'Fornecedor ABC Ltda', 'Carlos Almeida', '12.345.678/0001-99', '12.345.678/0001-95'),
(2, 'Indústria de Peças XYZ', 'Fernanda Souza', '98.765.432/0001-98', '98.765.432/0001-00'),
(3, 'Distribuidora de Materiais PQR', 'Jorge Silva', '45.678.912/0001-50', '45.678.912/0001-10'),
(4, 'Fábrica de Equipamentos São João', 'Maria Costa', '11.223.344/0001-77', '78.912.345/0001-32'),
(5, 'Tecnologia Ltda', 'Paula Mendes', '99.887.766/0001-66', '32.165.487/0001-44');

INSERT INTO TIPO_LOCAL (COD_TIPO, TIPO_ESTABELECIMENTO, COD_TIPO_FORN, COD_TIPO_CLIENTE, COD_TIPO_EMPREGADO) VALUES
(1, 'Tipo 1', 1, 1, 1),
(2, 'Tipo 2', 2, 2, 2),
(3, 'Tipo 3', 3, 3, 3),
(4, 'Tipo 4', 4, 4, 4),
(5, 'Tipo 5', 5, 5, 5);

INSERT INTO TELEFONES (COD_TEL, TELEFONE, COD_TIPO_TEL) VALUES
(1, '(11) 98765-4321', 1),
(2, '(21) 99876-5432', 2),
(3, '(31) 91234-5678', 3),
(4, '(41) 92345-6789', 4),
(5, '(51) 93456-7890', 5);

INSERT INTO ENDERECOS (COD_ENDERECO, BAIRRO, RUA, NUM_RUA, CIDADE, ESTADO, COMPLEMENTO, CEP, COD_TIPO_ENDERECO) 
VALUES 
(1, 'Centro', 'Rua Principal', 100, 'São Paulo', 'SP', 'Apto 101', '01001-000', 1),
(2, 'Jardim das Flores', 'Avenida Flores', 200, 'Campinas', 'SP', 'Casa 5', '13020-000', 2),
(3, 'Vila Nova', 'Rua das Acácias', 300, 'Rio de Janeiro', 'RJ', 'Bloco A', '22040-000', 3),
(4, 'Bairro Industrial', 'Rua Industrial', 400, 'Curitiba', 'PR', 'Piso 3', '80050-000', 3),
(5, 'Zona Sul', 'Avenida Atlântica', 500, 'Porto Alegre', 'RS', 'Sala Comercial', '90010-000', 5);

INSERT INTO ENCOMENDAS (COD_ENCOMENDA, DATA_INCLUSAO_ENCOMENDA, VALOR_TOTAL_ENCOMENDA, VALOR_DESC_ENCOMENDA, VALOR_LIQ_ENCOMENDA, FORMA_PAG, QUANT_PARCELAS, COD_CLIENTE_ENCOMENDA)
VALUES 
(1, '2024-11-01', 1000.00, 100.00, 900.00, 'Cartão de Crédito', 3, 1),
(2, '2024-11-05', 500.00, 50.00, 450.00, 'Boleto', 1, 2),
(3, '2024-11-10', 1500.00, 200.00, 1300.00, 'Pix', 2, 3),
(4, '2024-11-12', 2500.00, 250.00, 2250.00, 'Transferência Bancária', 4, 4),
(5, '2024-11-15', 800.00, 80.00, 720.00, 'Dinheiro', 2, 5);

INSERT INTO COMPONENTES (COD_COMP, NOME_COMP, QUANT_COMP_ESTOQUE, PRECO_UNIT_COMP, UNIDADE_COMP, COD_SUP_COMP, COD_TIPO_COMP2)
VALUES
(1, 'Resistor 220 Ohm', 100, 0.05, '2mm', 1, 1),
(2, 'Capacitor 100uF', 200, 0.10, '5mm', 2, 2),
(3, 'Transistor NPN', 150, 1.50, '10mm', 3, 3),
(4, 'LED Vermelho', 500, 0.02, '5mm', 1, 1),
(5, 'Fonte 5V', 50, 10.00, '10cm', 4, 4);

INSERT INTO MAQUINAS (COD_MAQ, TEMPO_VIDA_MAQ, PRECO_UNIT_MAQ, DATA_COMPRA, FIM_GARANTIA, COD_MANUT_MAQ)
VALUES 
(1, '2026-12-31', 15000.00, '2023-03-15', '2025-03-15', 1),
(2, '2028-06-15', 20000.00, '2024-07-20', '2026-07-20', 2),
(3, '2027-09-10', 25000.00, '2022-11-30', '2024-11-30', 3),
(4, '2029-05-20', 18000.00, '2025-01-10', '2027-01-10', 4),
(5, '2030-01-15', 22000.00, '2026-02-25', '2028-02-25', 5);

INSERT INTO PRODUTOS (COD_PROD, NOME_PROD, COR_PROD, DIMENSOES_PROD, PESO_PROD, PRECO_PROD, TEMPO_FAB_PROD, DESENHO_PROD, HORAS_MAO_OBRA_PROD, COD_COMP_PROD, COD_MAQ_PROD)
VALUES
(1, 'Produto A', 'Vermelho', 25.50, 1.200, 150.00, '01:30:00', 'image_data_1', '02:00:00', 101, 201),
(2, 'Produto B', 'Azul', 30.75, 1.500, 180.00, '02:00:00', 'image_data_2', '01:45:00', 102, 202),
(3, 'Produto C', 'Verde', 20.10, 0.800, 120.00, '01:15:00', 'image_data_3', '02:30:00', 103, 203),
(4, 'Produto D', 'Amarelo', 40.00, 2.000, 200.00, '03:00:00', 'image_data_4', '03:00:00', 104, 204),
(5, 'Produto E', 'Preto', 35.60, 1.100, 170.00, '01:45:00', 'image_data_5', '02:15:00', 105, 205);

INSERT INTO REGISTRO_ESPECIFICO (RE_COD_COMP, RE_COD_MAQ, RE_QAUNT_NECESSARIA, RE_UNIDADE, RE_TEMPO_USO, RE_HORAS_MAO_OBRA)
VALUES
(1, 1, 50, '432g', '02:30:00', '10:00:00'),
(2, 2, 30, '188g', '03:15:00', '08:45:00'),
(3, 3, 100, '1.4kg', '01:45:00', '05:30:00'),
(4, 4, 75, '782g', '04:00:00', '12:15:00'),
(5, 5, 200, '3kg', '02:00:00', '07:00:00');

INSERT INTO PRODUTO_ENCOMENDA (PE_COD_ENCOMENDA, PE_COD_PROD)
VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 5);

INSERT INTO EMPREGADO_PRODUTO (EP_COD_EMPREGADO, EP_COD_PROD)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

INSERT INTO FORNECEDOR_COMPONENTE (FC_COD_FORN, FC_COD_COMP)
VALUES
(1, 01),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

INSERT INTO REGISTRO_SUP_TIPO_COMP (RSTC_COD_SUP, RSTC_COD_TIPO_COMP) 
VALUES 
(1, 1), 
(2, 2), 
(3, 3), 
(4, 4), 
(5, 5);