-- --> 1. QUERIES BÁSICAS (SELECT SIMPLES)
-- Listar todos os artistas
SELECT * FROM Artista;

-- Listar todos os títulos com as datas de criação
SELECT titulo, data_criacao FROM Obra;

-- Listar todos os estilos
SELECT nome FROM Estilo;



-- --> 2. QUERIES COM FILTROS (WHERE):
-- Encontrar obras criadas em 2024:
SELECT titulo, data_criacao FROM Obra
WHERE data_criacao LIKE '2024%';
-- Ou: WHERE strftime('%Y', data_criacao) = '2024';

-- Listar artistas do Brasil
SELECT nome, bio FROM Artista
WHERE pais_origem = 'Brasil';

-- Quais ferramentas são softwares?
SELECT nome FROM Ferramenta
WHERE tipo = 'software';


-- --> 3. QUERIES COM ORDENAÇÃO (ORDER BY)
-- Listar obras ordenadas por data de criação (da mais antiga para a mais recente):
SELECT titulo, data_criacao FROM Obra
ORDER BY data_criacao ASC; -- ASC para ascendente (padrão, pode ser omitido)

-- Listar feedbacks ordenados pela nota de composição (da maior para a menor):
SELECT usuario, comentario, nota_composicao FROM Feedback
ORDER BY nota_composicao DESC; -- DESC para descendente



-- --> 4. QUERIES COM JUNÇÕES (JOIN)
-- Listar  obras com o nome do artista 
SELECT O.titulo, A.nome AS nome_artista
FROM Obra O
JOIN Artista A ON O.id_artista = A.id_artista;

-- Listar todos os artistas e suas obras
SELECT
    A.nome AS nome_artista,
    O.titulo AS titulo_obra
FROM
    Artista A
LEFT JOIN
    Obra O ON A.id_artista = O.id_artista
ORDER BY
    A.nome, O.titulo;

-- Listar todas as ferramentas e as obras em que foram usadas 
SELECT
    F.nome AS nome_ferramenta,
    O.titulo AS titulo_obra
FROM
    Obra_Ferramenta OF_join
RIGHT JOIN
    Ferramenta F ON OF_join.id_ferramenta = F.id_ferramenta
LEFT JOIN
    Obra O ON OF_join.id_obra = O.id_obra
ORDER BY
    F.nome, O.titulo;

-- FULL JOIN para listar todas as obras e todos os feedbacks
-- (Parte 1: LEFT JOIN - todas as obras e seus feedbacks)
SELECT
    O.titulo AS nome_obra,
    F.usuario,
    F.comentario
FROM
    Obra O
LEFT JOIN
    Feedback F ON O.id_obra = F.id_obra

UNION ALL

-- (Parte 2: RIGHT JOIN - todos os feedbacks e suas obras,
-- excluindo os já cobertos pelo LEFT JOIN)
SELECT
    O.titulo AS nome_obra,
    F.usuario,
    F.comentario
FROM
    Obra O
RIGHT JOIN
    Feedback F ON O.id_obra = F.id_obra
WHERE
    O.id_obra IS NULL -- Filtra apenas os feedbacks que NÃO tiveram correspondência na primeira parte
ORDER BY
    nome_obra, usuario;


-- --> 5. QUERIES COM AGREGAÇÕES (GROUP BY, COUNT, AVG)
-- Contar quantas obras cada artista tem
SELECT A.nome AS nome_artista, COUNT(O.id_obra) AS total_obras
FROM Artista A
LEFT JOIN Obra O ON A.id_artista = O.id_artista
GROUP BY A.nome
ORDER BY total_obras DESC; --Agrupa obras por artista e conta o total. O LEFT JOIN garante que artistas sem obras também apareçam (com 0 obras).

-- Média das notas de composição por obra
SELECT O.titulo AS nome_obra, AVG(F.nota_composicao) AS media_nota_composicao
FROM Obra O
JOIN Feedback F ON O.id_obra = F.id_obra
GROUP BY O.titulo
ORDER BY media_nota_composicao DESC; --Calcula a média de uma coluna numérica agrupada por obra



-- --> 6. OUTRAS EXPLORAÇÕES
-- Top 3 estilos mais utilizados
SELECT e.nome, COUNT(*) AS total_obras
FROM Obra o
JOIN Estilo e ON o.id_estilo = e.id_estilo
GROUP BY e.nome
ORDER BY total_obras DESC
LIMIT 3;

-- Média de notas por obra (avaliação crítica)
SELECT o.titulo,
       ROUND(AVG(f.nota_composicao),2) AS media_composicao,
       ROUND(AVG(f.nota_cor),2) AS media_cor,
       ROUND(AVG(f.nota_mensagem),2) AS media_mensagem
FROM Obra o
JOIN Feedback f ON o.id_obra = f.id_obra
GROUP BY o.titulo;

-- Ferramentas mais usadas em obras de Fotojornalismo
SELECT f.nome, COUNT(*) AS qtd_uso
FROM Obra o
JOIN Categoria c ON o.id_categoria = c.id_categoria
JOIN Obra_Ferramenta of ON o.id_obra = of.id_obra
JOIN Ferramenta f ON of.id_ferramenta = f.id_ferramenta
WHERE c.nome = 'Fotojornalismo'
GROUP BY f.nome
ORDER BY qtd_uso DESC;
