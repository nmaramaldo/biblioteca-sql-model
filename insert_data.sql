-- Inserindo categorias
INSERT INTO Categoria (categoria_id, descricao) VALUES
(1, 'Ficção'),
(2, 'Ciência'),
(3, 'História');

-- Inserindo autores
INSERT INTO Autor (autor_id, nome, nacionalidade) VALUES
(1, 'George Orwell', 'Britânico'),
(2, 'Isaac Asimov', 'Russo-Americano'),
(3, 'Yuval Noah Harari', 'Israelense');

-- Inserindo livros
INSERT INTO Livro (isbn, titulo, ano, editora, categoria_id) VALUES
('9780451524935', '1984', 1949, 'Secker & Warburg', 1),
('9780385514231', 'Fundação', 1951, 'Gnome Press', 2),
('9780062316110', 'Sapiens', 2011, 'Harper', 3);

-- Inserindo relacionamento Livro_Autor
INSERT INTO Livro_Autor (livro_isbn, autor_id) VALUES
('9780451524935', 1),
('9780385514231', 2),
('9780062316110', 3);

-- Inserindo usuários
INSERT INTO Usuario (matricula, nome, telefone) VALUES
(1001, 'João Silva', '123456789'),
(1002, 'Maria Oliveira', '987654321'),
(1003, 'Pedro Costa', '567890123');

-- Inserindo locações
INSERT INTO Locacao (locacao_id, data_locacao, data_devolucao, matricula) VALUES
(1, '2024-10-01', '2024-10-10', 1001),
(2, '2024-10-03', NULL, 1002),
(3, '2024-10-05', '2024-10-15', 1003);

-- Inserindo relação Locacao_Livro
INSERT INTO Locacao_Livro (locacao_id, livro_isbn) VALUES
(1, '9780451524935'),
(2, '9780385514231'),
(3, '9780062316110');
