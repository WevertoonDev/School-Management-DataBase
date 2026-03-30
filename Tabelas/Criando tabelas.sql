CREATE TABLE alunos (
  id_alunos INT PRIMARY KEY,
  nome VARCHAR(100),
  data_nascimento DATE,
  genero VARCHAR(100),
  endereco TEXT,
  telefone TEXT,
  email VARCHAR(100)
  );
CREATE TABLE professores (
  id_professor INT PRIMARY KEY,
  nome VARCHAR(100),
  data_nascimento DATE,
  genero VARCHAR(100),
  telefone TEXT,
  email VARCHAR(100)
  );
CREATE TABLE disciplinas (
  id_disciplinas INT PRIMARY KEY,
  nome_disciplina VARCHAR(100),
  descricao TEXT,
  carga_horaria DECIMAL(24,0),
  id_professor INT,
  FOREIGN key (id_professor) REFERENCES professores(id_professor)
  );
CREATE TABLE turmas(
  id_turmas INT PRIMARY KEY,
  nome_turma VARCHAR(100),
  ano_letivo DATE,
  id_orientador INT,
  FOREIGN KEY (id_orientador) REFERENCES professores(id_professor)
  );
CREATE TABLE turmadisciplinas(
  id_turmas INT,
  id_disciplinas INT,
  PRIMARY KEY (id_turmas , id_disciplinas),
  FOREIGN key (id_turmas) REFERENCES turmas(id_turmas),
  FOREIGN key (id_disciplinas) REFERENCES disciplinas(id_disciplinas)
  );
CREATE TABLE turmaalunos(
  id_turmas INT,
  id_alunos INT,
  PRIMARY KEY (id_turmas , id_alunos),
  FOREIGN key (id_turmas) REFERENCES turmas(id_turmas),
  FOREIGN key (id_alunos) REFERENCES alunos(id_alunos)
  );
  
CREATE TABLE notas(
  id_nota INT PRIMARY KEY,
  id_alunos INT,
  id_disciplinas INT,
  valor_nota INT,
  data_avaliacao DATE,
  FOREIGN KEY (id_alunos) REFERENCES alunos(id_alunos),
  FOREIGN key (id_disciplinas) REFERENCES disciplinas(id_disciplinas)
  );