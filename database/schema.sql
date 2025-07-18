-- Ativar suporte a chaves estrangeiras no SQLite
PRAGMA foreign_keys = ON;

-- Tabela Artista
CREATE TABLE Artista (
  id_artista INTEGER PRIMARY KEY AUTOINCREMENT,
  nome TEXT NOT NULL,
  bio TEXT,
  pais_origem TEXT
);

-- Tabela Estilo
CREATE TABLE Estilo (
  id_estilo INTEGER PRIMARY KEY AUTOINCREMENT,
  nome TEXT NOT NULL,
  descricao TEXT
);

-- Tabela Categoria
CREATE TABLE Categoria (
  id_categoria INTEGER PRIMARY KEY AUTOINCREMENT,
  nome TEXT NOT NULL,
  descricao TEXT
);

-- Tabela Obra
CREATE TABLE Obra (
  id_obra INTEGER PRIMARY KEY AUTOINCREMENT,
  titulo TEXT NOT NULL,
  descricao TEXT,
  data_criacao TEXT, -- Armazenar no formato 'YYYY-MM-DD'
  id_artista INTEGER,
  id_estilo INTEGER,
  id_categoria INTEGER,
  FOREIGN KEY (id_artista) REFERENCES Artista(id_artista),
  FOREIGN KEY (id_estilo) REFERENCES Estilo(id_estilo),
  FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria)
);

-- Tabela Ferramenta
CREATE TABLE Ferramenta (
  id_ferramenta INTEGER PRIMARY KEY AUTOINCREMENT,
  nome TEXT NOT NULL,
  tipo TEXT -- software, hardware, IA etc.
);

-- Tabela associativa Obra_Ferramenta (N:N)
CREATE TABLE Obra_Ferramenta (
  id_obra INTEGER,
  id_ferramenta INTEGER,
  PRIMARY KEY (id_obra, id_ferramenta),
  FOREIGN KEY (id_obra) REFERENCES Obra(id_obra),
  FOREIGN KEY (id_ferramenta) REFERENCES Ferramenta(id_ferramenta)
);

-- Tabela Feedback
CREATE TABLE Feedback (
  id_feedback INTEGER PRIMARY KEY AUTOINCREMENT,
  id_obra INTEGER,
  usuario TEXT,
  comentario TEXT,
  nota_composicao INTEGER,
  nota_cor INTEGER,
  nota_mensagem INTEGER,
  FOREIGN KEY (id_obra) REFERENCES Obra(id_obra)
);
