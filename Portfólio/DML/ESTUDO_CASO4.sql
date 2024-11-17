USE CASO4;

INSERT INTO ALUNOS (ALUNO_ID, ALUNO_NOME, ALUNO_DATANASC, ALUNO_RUA, ALUNO_NRUA, ALUNO_BAIRRO, ALUNO_CIDADE, ALUNO_ESTADO, ALUNO_PAIS, ALUNO_CEP, ALUNO_MODALIDADE)
VALUES
(1, 'Carlos Silva', '2000-05-15', 'Rua A', 123, 'Centro', 'São Paulo', 'SP', 'Brasil', '12345-678', 'Futebol'),
(2, 'Maria Oliveira', '1998-08-22', 'Rua B', 456, 'Jardim das Flores', 'Rio de Janeiro', 'RJ', 'Brasil', '23456-789', 'Vôlei'),
(3, 'João Pereira', '2001-03-30', 'Rua C', 789, 'Vila Nova', 'Belo Horizonte', 'MG', 'Brasil', '34567-890', 'Basquete'),
(4, 'Ana Costa', '2000-11-12', 'Rua D', 101, 'Serrinha', 'Curitiba', 'PR', 'Brasil', '45678-901', 'Atletismo'),
(5, 'Pedro Santos', '1999-06-18', 'Rua E', 202, 'Centro', 'Salvador', 'BA', 'Brasil', '56789-012', 'Natação');

UPDATE ALUNOS SET ALUNO_MODALIDADE = 'Basquete' WHERE ALUNO_ID = 1;
UPDATE ALUNOS SET ALUNO_NOME = 'João Pereira da Silva' WHERE ALUNO_ID = 2;

DELETE FROM ALUNOS WHERE ALUNO_ID = 6;

INSERT INTO INSTRUTORES (INSTRUTOR_ID, INSTRUTOR_NOME) VALUES
(1, 'Carlos Silva'),
(2, 'Ana Oliveira'),
(3, 'João Santos'),
(4, 'Maria Costa'),
(5, 'Pedro Almeida');

UPDATE INSTRUTORES SET INSTRUTOR_NOME = 'Carla Mendes' WHERE INSTRUTOR_ID = 1;
UPDATE INSTRUTORES SET INSTRUTOR_NOME = 'na Oliveira Neves' WHERE INTRUTOR_ID = 2;

DELETE FROM INSTRUTORES WHERE INSTRUTOR_ID = 6;

INSERT INTO MODALIDADES (MODALIDADE_ID, MODALIDADE_NOME) VALUES
(1, 'Futebol'),
(2, 'Natação'),
(3, 'Vôlei'),
(4, 'Basquete'),
(5, 'Atletismo');

UPDATE MODALIDADES SET MODALIDADE_NOME = 'Natação' WHERE MODALIDADE_ID = 1;
UPDATE MODALIDADES SET MODALIDADE_NOME = 'Futebol' WHERE MODALIDADE_ID = 2;

DELETE FROM MODALIDADES WHERE MODALIDADE_ID = 6;

INSERT INTO PAGAMENTO (PAG_ID, PAG_DATA, PAG_VALOR, PAG_STATUS, PAG_ALUNO_ID) 
VALUES 
(1, '2024-11-01', 150.00, 'PAGO', 1),
(2, '2024-11-05', 200.00, 'A PAGAR', 2),
(3, '2024-11-10', 120.00, 'ATRASADO', 3),
(4, '2024-11-15', 150.00, 'PAGO', 4),
(5, '2024-11-20', 180.00, 'A PAGAR', 5);

UPDATE PAGAMENTOS SET PAG_STATUS = 'ATRASADO' WHERE PAG_ID = 1;
UPDATE PAGAMENTOS SET PAG_STATUS = 'PAGO' WHERE PAG_ID = 2;

DELETE FROM PAGAMENTOS WHERE PAG_ID = 6;

INSERT INTO MODALIDADES_INSTRUTORES (MI_INSTRUTOR_ID, MI_MODALIDADE_ID) 
VALUES
(1, 1), 
(2, 2), 
(3, 3), 
(4, 4), 
(5, 5);

UPDATE MODALIDADES_INSTRUTORES SET MI_MODALIDADE_ID = 2 WHERE MI_INSTRUTOR_ID = 1;
UPDATE MODALIDADES_INSTRUTORES SET MI_MODALIDADE_ID = 1 WHERE MI_INSTRUTOR_ID = 2;

DELETE FROM MODALIDADES_INSTRUTORES WHERE MI_INSTRUTOR_ID = 6;

INSERT INTO PLANO_TREINO (PLANO_ID, PLANO_ALUNO_ID, PLANO_INSTRUTOR_ID, PLANO_MODALIDADE_ID)
VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 1),
(4, 4, 4, 3),
(5, 5, 5, 2);

UPDATE PLANO_TREINO SET PLANO_MODALIDADE_ID = 2 WHERE PLANO_ID = 1;
UPDATE PLANO_TREINO SET PLANO_MODALIDADE_ID = 1 WHERE PLANO_ID = 2;

DELETE FROM PLANO_TREINO WHERE PLANO_ID = 6;

INSERT INTO AULAS (AULA_ID, AULA_HORA, AULA_CAPACIDADE, AULA_INSTRUTOR_ID, AULA_MODALIDADE_ID, AULA_PLANO_TREINO_ID)
VALUES
(1, '08:00:00', 20, 1, 1, 1),
(2, '10:00:00', 15, 2, 2, 2),
(3, '14:00:00', 25, 1, 2, 3),
(4, '16:00:00', 30, 3, 1, 4),
(5, '18:00:00', 20, 2, 3, 5);

UPDATE AULAS SET AULA_HORA = '08:15:00' WHERE AULA_ID = 1;
UPDATE AULAS SET AULA_CAPACIDADE = 20 WHERE AULA_ID = 2;

DELETE FROM AULAS WHERE AULA_ID = 6;

INSERT INTO AULAS_ALUNOS (AA_ALUNO_ID, AA_AULA_ID)
VALUES 
(1, 1), 
(2, 2), 
(3, 3), 
(4, 4), 
(5, 5);

UPDATE AULAS_ALUNOS SET AA_AULA_ID = 2 WHERE AA_ALUNO_ID = 1;
UPDATE AULAS_ALUNOS SET AA_AULA_ID = 1 WHERE AA_ALUNO_ID = 2;

DELETE FROM AULAS_ALUNOS WHERE AA_ALUNOS_ID = 6;
