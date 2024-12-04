-- criando meu primeiro banco de dados
CREATE DATABASE anna_castro;

-- criando minha primeira tabela/entidade
CREATE TABLE alunos (
	matricula INTEGER PRIMARY KEY,
    nome_aluno TEXT NOT NULL,
    genero TEXT NOT NULL
);

-- injeção de dados-teste
INSERT INTO alunos VALUE (1, 'Marina', 'F');
INSERT INTO alunos VALUE (2, 'Joana', 'F');

-- consultando as injeções realizadas
SELECT * FROM alunos WHERE matricula=1;

-- atividade: Crie uma nova tabela  chamada 'professor', com a mesma quantidade de característiccas de 'aluno', 
-- fazendo ao menos duas injeções de dados e uma consulta.

-- criando tabela/entidade e inserindo chave estrangeira (tabla não criada)
CREATE TABLE professores (
	matricula_professor INTEGER PRIMARY KEY,
    matricula INT,
    nome_professor TEXT NOT NULL,
    materia TEXT NOT NULL
		CONSTRAINT fk_alunos
        FOREIGN KEY (matricula)
        REFERENCES alunos(matricula)
);

-- tabela já foi criada
-- ALTER TABLE alunos
-- ADD CONSTRAINT fk_prfessores
-- FOREIGN KEY (MATRICULA_PROFESSOR)
-- REFERENCES PROFESSORES(MATRICULA_PROFESSOR);

-- injeção de dados
INSERT INTO professores VALUE (1, 1, 'Hilda Flores', 'Lingua Portuguesa');
INSERT INTO professores VALUE (2, 1, 'Daniel Pels', 'Design');

-- realizando consulta
SELECT * FROM professores WHERE matricula=1