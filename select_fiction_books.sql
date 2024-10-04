SELECT Livro.titulo, Livro.ano, Livro.editora
FROM Livro
JOIN Categoria ON Livro.categoria_id = Categoria.categoria_id
WHERE Categoria.descricao = 'Ficção';
