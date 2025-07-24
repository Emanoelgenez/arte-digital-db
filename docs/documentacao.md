# Análise de Dados do Banco de Dados de Arte Digital

Este documento explora o banco de dados de arte digital através de diversas queries SQL, demonstrando como extrair e analisar informações valiosas sobre artistas, obras, estilos, categorias, ferramentas e feedbacks.

## Sumário

1.  [Queries Básicas (SELECT Simples)](#1-queries-b%C3%A1sicas-select-simples)
2.  [Queries com Filtros (WHERE)](#2-queries-com-filtros-where)
3.  [Queries com Ordenação (ORDER BY)](#3-queries-com-ordena%C3%A7%C3%A3o-order-by)
4.  [Queries com Junções (JOIN)](#4-queries-com-jun%C3%A7%C3%B5es-join)
5.  [Queries com Agregações (GROUP BY, COUNT, AVG)](#5-queries-com-agrega%C3%A7%C3%B5es-group-by-count-avg)
6.  [Outras Explorações](#6-outras-explora%C3%A7%C3%B5es)

---

## 1. Queries Básicas (SELECT Simples)

Estas queries são o ponto de partida para explorar os dados, permitindo a visualização simples de registros em tabelas.

### Listar todos os artistas

Esta query retorna todas as colunas e linhas da tabela `Artista`, fornecendo uma visão geral de todos os artistas registrados no banco de dados.

```sql
SELECT * FROM Artista;

Listar todos os títulos com as datas de criação
Esta query seleciona apenas as colunas titulo e data_criacao da tabela Obra, útil para obter um inventário básico das obras e suas respectivas datas de criação.

SQL

SELECT titulo, data_criacao FROM Obra;
Listar todos os estilos
Esta query busca todos os nomes de estilos presentes na tabela Estilo, permitindo conhecer a diversidade de estilos de arte digital suportados pelo sistema.

SQL

SELECT nome FROM Estilo;
2. Queries com Filtros (WHERE)
A cláusula WHERE permite refinar os resultados das queries, selecionando apenas os registros que satisfazem uma condição específica.

Encontrar obras criadas em 2024
Esta query filtra as obras para mostrar apenas aquelas cuja data_criacao começa com '2024', ou seja, obras criadas no ano de 2024.

SQL

SELECT titulo, data_criacao FROM Obra
WHERE data_criacao LIKE '2024%';
-- Ou: WHERE strftime('%Y', data_criacao) = '2024';
Listar artistas do Brasil
Esta query seleciona o nome e a bio de artistas cujo pais_origem é 'Brasil', útil para focar em talentos locais.

SQL

SELECT nome, bio FROM Artista
WHERE pais_origem = 'Brasil';
Quais ferramentas são softwares?
Esta query filtra a tabela Ferramenta para listar apenas as ferramentas cujo tipo é 'software', ajudando a categorizar os recursos disponíveis.

SQL

SELECT nome FROM Ferramenta
WHERE tipo = 'software';
3. Queries com Ordenação (ORDER BY)
A cláusula ORDER BY organiza os resultados de uma query em ordem crescente (ASC) ou decrescente (DESC) com base em uma ou mais colunas.

Listar obras ordenadas por data de criação (da mais antiga para a mais recente)
Esta query exibe o título e a data de criação das obras, ordenadas cronologicamente da mais antiga para a mais recente.

SQL

SELECT titulo, data_criacao FROM Obra
ORDER BY data_criacao ASC; -- ASC para ascendente (padrão, pode ser omitido)
Listar feedbacks ordenados pela nota de composição (da maior para a menor)
Esta query organiza os feedbacks exibindo o usuário, comentário e a nota de composição, com as notas mais altas aparecendo primeiro.

SQL

SELECT usuario, comentario, nota_composicao FROM Feedback
ORDER BY nota_composicao DESC; -- DESC para descendente
4. Queries com Junções (JOIN)
As junções (JOIN) são usadas para combinar linhas de duas ou mais tabelas com base em uma coluna relacionada entre elas, permitindo a recuperação de dados de múltiplas fontes.

Listar obras com o nome do artista
Esta query combina as tabelas Obra e Artista para exibir o título de cada obra junto ao nome do artista correspondente.

SQL

SELECT O.titulo, A.nome AS nome_artista
FROM Obra O
JOIN Artista A ON O.id_artista = A.id_artista;
Listar obras com seus estilos e categorias
Esta query conecta as tabelas Obra, Estilo e Categoria para mostrar o título de cada obra, seu estilo e sua categoria.

SQL

SELECT O.titulo, E.nome AS estilo, C.nome AS categoria
FROM Obra O
JOIN Estilo E ON O.id_estilo = E.id_estilo
JOIN Categoria C ON O.id_categoria = C.id_categoria;
Quais ferramentas foram usadas em cada obra?
Esta query utiliza a tabela de junção Obra_Ferramenta para listar as ferramentas associadas a cada obra, ordenando os resultados pelo nome da obra e da ferramenta.

SQL

SELECT O.titulo AS nome_obra, F.nome AS nome_ferramenta
FROM Obra_Ferramenta OF
JOIN Obra O ON OF.id_obra = O.id_obra
JOIN Ferramenta F ON OF.id_ferramenta = F.id_ferramenta
ORDER BY nome_obra, nome_ferramenta;
Comentários de feedback para cada obra
Esta query une as tabelas Feedback e Obra para mostrar os comentários, usuários e notas de composição de cada feedback, associando-os ao título da obra correspondente.

SQL

SELECT O.titulo AS nome_obra, F.usuario, F.comentario, F.nota_composicao
FROM Feedback F
JOIN Obra O ON F.id_obra = O.id_obra
ORDER BY nome_obra;
5. Queries com Agregações (GROUP BY, COUNT, AVG)
As funções de agregação, combinadas com GROUP BY, permitem realizar cálculos sobre conjuntos de linhas, como contagens, médias, somas, etc.

Contar quantas obras cada artista tem
Esta query agrupa as obras por artista e conta o total de obras para cada um. O LEFT JOIN garante que artistas sem obras também sejam listados, com uma contagem de zero.

SQL

SELECT A.nome AS nome_artista, COUNT(O.id_obra) AS total_obras
FROM Artista A
LEFT JOIN Obra O ON A.id_artista = O.id_artista
GROUP BY A.nome
ORDER BY total_obras DESC;
Média das notas de composição por obra
Esta query calcula a média das notas de composição para cada obra, agrupando os feedbacks pelo título da obra e ordenando pela média decrescente.

SQL

SELECT O.titulo AS nome_obra, AVG(F.nota_composicao) AS media_nota_composicao
FROM Obra O
JOIN Feedback F ON O.id_obra = F.id_obra
GROUP BY O.titulo
ORDER BY media_nota_composicao DESC;
6. Outras Explorações
Esta seção apresenta queries mais complexas que combinam as técnicas anteriores para obter insights específicos e mais aprofundados dos dados.

Top 3 estilos mais utilizados
Esta query identifica os três estilos de arte mais frequentemente utilizados nas obras, contando o número de obras por estilo e ordenando de forma decrescente.

SQL

SELECT e.nome, COUNT(*) AS total_obras
FROM Obra o
JOIN Estilo e ON o.id_estilo = e.id_estilo
GROUP BY e.nome
ORDER BY total_obras DESC
LIMIT 3;
Média de notas por obra (avaliação crítica)
Esta query calcula a média de diferentes aspectos da avaliação (composição, cor e mensagem) para cada obra, fornecendo uma visão detalhada da recepção crítica. Os valores são arredondados para duas casas decimais.

SQL

SELECT o.titulo,
        ROUND(AVG(f.nota_composicao),2) AS media_composicao,
        ROUND(AVG(f.nota_cor),2) AS media_cor,
        ROUND(AVG(f.nota_mensagem),2) AS media_mensagem
FROM Obra o
JOIN Feedback f ON o.id_obra = f.id_obra
GROUP BY o.titulo;
Ferramentas mais usadas em obras de Fotojornalismo
Esta query filtra as obras pela categoria 'Fotojornalismo' e, em seguida, conta quais ferramentas foram mais utilizadas nessas obras, ordenando pelo número de usos.

SQL

SELECT f.nome, COUNT(*) AS qtd_uso
FROM Obra o
JOIN Categoria c ON o.id_categoria = c.id_categoria
JOIN Obra_Ferramenta of ON o.id_obra = of.id_obra
JOIN Ferramenta f ON of.id_ferramenta = f.id_ferramenta
WHERE c.nome = 'Fotojornalismo'
GROUP BY f.nome
ORDER BY qtd_uso DESC;
