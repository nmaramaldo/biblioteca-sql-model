CREATE TABLE Categoria (
    categoria_id INT PRIMARY KEY,
    descricao VARCHAR(255) NOT NULL
);

CREATE TABLE Autor (
    autor_id INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    nacionalidade VARCHAR(100)
);

CREATE TABLE Livro (
    isbn VARCHAR(13) PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    ano INT,
    editora VARCHAR(255),
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES Categoria(categoria_id)
);

CREATE TABLE Livro_Autor (
    livro_isbn VARCHAR(13),
    autor_id INT,
    PRIMARY KEY (livro_isbn, autor_id),
    FOREIGN KEY (livro_isbn) REFERENCES Livro(isbn),
    FOREIGN KEY (autor_id) REFERENCES Autor(autor_id)
);

CREATE TABLE Usuario (
    matricula INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    telefone VARCHAR(15)
);

CREATE TABLE Locacao (
    locacao_id INT PRIMARY KEY,
    data_locacao DATE NOT NULL,
    data_devolucao DATE,
    matricula INT,
    FOREIGN KEY (matricula) REFERENCES Usuario(matricula)
);

CREATE TABLE Locacao_Livro (
    locacao_id INT,
    livro_isbn VARCHAR(13),
    PRIMARY KEY (locacao_id, livro_isbn),
    FOREIGN KEY (locacao_id) REFERENCES Locacao(locacao_id),
    FOREIGN KEY (livro_isbn) REFERENCES Livro(isbn)
);
