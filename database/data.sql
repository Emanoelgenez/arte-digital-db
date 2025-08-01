-- Artistas (40 artistas)
INSERT INTO Artista (nome, bio, pais_origem) VALUES
('Lúcia Andrade', 'Artista visual brasileira com foco em arte generativa.', 'Brasil'),
('Tobias Klein', 'Especialista em fotografia documental e IA criativa.', 'Alemanha'),
('Camila Morais', 'Fotojornalista premiada com trabalhos na Amazônia.', 'Brasil'),
('Rafael Almeida', 'Pintor e ilustrador digital com foco em fantasia.', 'Portugal'),
('Sofia Rossi', 'Escultora 3D e designer de personagens para jogos.', 'Itália'),
('Carlos Eduardo', 'Fotógrafo de paisagens e vida selvagem com uso de drones.', 'Brasil'),
('Maria Clara', 'Artista de colagem digital abstrata.', 'Espanha'),
('Chen Li', 'Designer gráfico e artista de pixel art.', 'China'),
('David Miller', 'Criador de arte generativa com enfoque em fractais.', 'EUA'),
('Ana Paula', 'Ilustradora de livros infantis digitais.', 'Brasil'),
('Kenji Tanaka', 'Fotógrafo de rua e retratos urbanos.', 'Japão'),
('Isabelle Dubois', 'Pintora digital de paisagens etéreas.', 'França'),
('Omar Hassan', 'Modelador 3D de cenários futuristas.', 'Egito'),
('Laura Santos', 'Especialista em arte conceitual para games.', 'Brasil'),
('Oliver Schmidt', 'Artista de data visualization e infográficos.', 'Alemanha'),
('Ricardo Neves', 'Artista de mídia mista e instalações digitais.', 'Brasil'),
('Sarah Jones', 'Fotógrafa de moda e retratos conceituais.', 'Reino Unido'),
('Ahmed Khan', 'Designer de interface e experiência do usuário (UI/UX) para arte interativa.', 'Índia'),
('Emma Dubois', 'Ilustradora de moda e criadora de personagens digitais.', 'França'),
('João Pedro', 'Artista de realidade virtual e aumentada.', 'Portugal'),
('Olivia Brown', 'Pintora de paisagens naturais em estilo digital realista.', 'Canadá'),
('Max Schneider', 'Criador de arte de vídeo e motion graphics.', 'Alemanha'),
('Lina Kim', 'Artista de arte generativa baseada em som.', 'Coreia do Sul'),
('Alexandre Costa', 'Designer de produtos e artista de renderização 3D.', 'Brasil'),
('Chloe Martin', 'Fotógrafa subaquática e de vida marinha.', 'Austrália'),
('Michael White', 'Artista de graffiti digital e arte de rua.', 'EUA'),
('Sophie Leclerc', 'Ilustradora botânica e de natureza em aquarela digital.', 'França'),
('Daniel Ramirez', 'Artista de storyboard e concept art para filmes.', 'México'),
('Nina Ivanova', 'Designer de tipografia e arte de letras.', 'Rússia'),
('Bruno Silva', 'Artista de paisagens sci-fi e veículos futuristas.', 'Brasil'),
('Yuki Nakamura', 'Criadora de arte de fibra digital e instalações interativas.', 'Japão'),
('Fatima Zahra', 'Calígrafa digital e artista de arte islâmica.', 'Marrocos'),
('Tom Evans', 'Artista de pixel art e desenvolvedor de jogos retrô.', 'Reino Unido'),
('Gabriela Torres', 'Escultora digital de figuras humanas e criaturas mitológicas.', 'Argentina'),
('Victor Hugo', 'Fotógrafo de arquitetura e paisagens urbanas.', 'Brasil'),
('Elena Petrova', 'Artista de fotomanipulação e retoque avançado.', 'Bulgária'),
('Oscar Sanchez', 'Ilustrador e criador de histórias em quadrinhos digitais.', 'Colômbia'),
('Sophia Lee', 'Designer de moda e criadora de vestuário digital.', 'EUA'),
('Leo Fischer', 'Artista de arte performática com projeções digitais.', 'Alemanha'),
('Beatriz Costa', 'Artista de arte generativa com foco em simulações biológicas.', 'Brasil');

-- Estilos (9 estilos)
INSERT INTO Estilo (nome, descricao) VALUES
('Arte Generativa', 'Criada com algoritmos e modelos computacionais.'),
('Fotografia Documental', 'Captura de momentos e realidades sociais.'),
('Surrealismo Digital', 'Imagens com composições oníricas e simbólicas.'),
('Fantasia Digital', 'Obras que exploram mundos imaginários e criaturas míticas.'),
('Voxel Art', 'Arte digital construída a partir de blocos tridimensionais (voxels).'),
('Pintura Acrílica Digital', 'Simulação de técnicas de pintura acrílica em ambiente digital.'),
('Pixel Art', 'Arte digital criada pixel a pixel, remetendo a gráficos antigos.'),
('Arte Abstrata Digital', 'Foco em formas, cores e texturas sem representação figurativa.'),
('Ciberpunk', 'Explora temas de alta tecnologia e baixa qualidade de vida em futuros distópicos.');

-- Categorias (7 categorias)
INSERT INTO Categoria (nome, descricao) VALUES
('Arte Digital', 'Obras criadas inteiramente com ferramentas digitais.'),
('Fotojornalismo', 'Imagens com apelo informativo e impacto social.'),
('Pintura Digital', 'Técnica de pintura realizada com softwares gráficos.'),
('Ilustração Conceitual', 'Arte criada para transmitir uma ideia ou conceito.'),
('Modelagem 3D', 'Criação de objetos e personagens tridimensionais.'),
('Animação Digital', 'Obras que envolvem movimento e tempo.'),
('Game Art', 'Arte criada especificamente para videogames.');

-- Ferramentas (11 ferramentas)
INSERT INTO Ferramenta (nome, tipo) VALUES
('Adobe Photoshop', 'software'),
('Stable Diffusion', 'IA'),
('Procreate', 'software'),
('Canon EOS R6', 'hardware'),
('Blender', 'software'),
('Midjourney', 'IA'),
('Wacom Cintiq', 'hardware'),
('ZBrush', 'software'),
('Unreal Engine', 'software'),
('Dall-E', 'IA'),
('Nikon Z9', 'hardware');

-- Obras (70 obras)
INSERT INTO Obra (titulo, descricao, data_criacao, id_artista, id_estilo, id_categoria) VALUES
('Códigos em Cores', 'Obra generativa que mistura paletas aleatórias com formas circulares.', '2024-05-12', 1, 1, 1),
('Rio Invisível', 'Fotojornalismo sobre comunidades ribeirinhas isoladas.', '2023-08-20', 3, 2, 2),
('Fragmentos do Sonho', 'Colagem surreal com toque de glitch e IA.', '2024-02-11', 2, 3, 1),
('Guardiões da Floresta', 'Ilustração de seres míticos protetores de uma floresta encantada.', '2024-01-15', 4, 4, 4),
('Cidade Flutuante', 'Cena de arquitetura Voxel Art de uma metrópole futurista.', '2023-11-01', 5, 5, 5),
('Aurora Boreal', 'Pintura digital vibrante de uma aurora sobre montanhas.', '2024-03-22', 1, 6, 3),
('Mercado de Rua de Bangcoc', 'Fotojornalismo detalhado da vida noturna em Bangcoc.', '2023-09-05', 3, 2, 2),
('Sonhos Subaquáticos', 'Cenário surrealista de criaturas marinhas luminescentes.', '2024-04-18', 2, 3, 1),
('Paisagem Cósmica', 'Cena de ficção científica gerada por IA.', '2024-06-01', 7, 1, 1),
('Retrato de um Ancião', 'Fotojornalismo de uma figura local em Pernambuco.', '2023-07-10', 9, 2, 2),
('Metrópole Dystópica', 'Pintura digital de uma cidade futurista sombria.', '2024-05-20', 8, 9, 3),
('A Lenda do Dragão', 'Ilustração conceitual para um jogo de fantasia.', '2024-01-25', 10, 4, 4),
('Cubo de Cores', 'Obra abstrata digital explorando gradientes.', '2023-12-05', 7, 8, 1),
('Ruas de Tóquio', 'Fotografia noturna de rua.', '2024-04-01', 11, 2, 2),
('Jardim Secreto', 'Cena de fantasia com elementos de flora e fauna místicas.', '2024-06-15', 12, 4, 4),
('Onda Sonora', 'Visualização abstrata gerada por dados de áudio.', '2024-05-01', 23, 1, 1),
('Conexões Humanas', 'Série de retratos digitais sobre a empatia.', '2024-02-28', 19, 3, 3),
('Ruínas Ciberpunk', 'Ilustração de um futuro decadente com tecnologia avançada.', '2023-10-10', 30, 9, 4),
('Memórias de Infância', 'Pintura digital inspirada em brincadeiras de criança.', '2024-01-05', 4, 6, 3),
('Portal Estelar', 'Cena 3D de um portal interdimensional.', '2024-03-15', 13, 5, 5),
('Vida Urbana', 'Fotografia documentária do cotidiano de grandes cidades.', '2023-11-20', 16, 2, 2),
('Sonhos Líquidos', 'Arte abstrata com fluidez e cores vibrantes.', '2024-04-05', 1, 8, 1),
('Rei dos Anões', 'Ilustração conceitual de personagem para RPG.', '2024-02-14', 10, 4, 4),
('Futuro Primitivo', 'Cenário sci-fi com elementos orgânicos e tecnologia rústica.', '2024-06-20', 30, 9, 4),
('O Despertar', 'Animação curta de uma flor desabrochando em pixel art.', '2024-05-25', 8, 7, 6),
('Mar Profundo', 'Fotografia subaquática de corais e vida marinha.', '2023-12-18', 25, 2, 2),
('A Dama do Lago', 'Pintura digital de conto de fadas.', '2024-01-30', 12, 6, 3),
('Cidade Submersa', 'Modelagem 3D de ruínas de uma cidade submersa.', '2024-03-01', 13, 5, 5),
('Voo Noturno', 'Ilustração de um dragão voando sob a lua cheia.', '2024-04-20', 4, 4, 4),
('Essência Cósmica', 'Arte generativa inspirada em nebulosas e galáxias.', '2024-05-08', 7, 1, 1),
('Fuga do Labirinto', 'Pintura digital com elementos surrealistas e mistério.', '2024-02-01', 2, 3, 1),
('Retratos da Alma', 'Série de fotografias documentais focadas em expressões humanas.', '2023-09-15', 9, 2, 2),
('Fantasia Geométrica', 'Arte abstrata digital com padrões geométricos complexos.', '2024-03-10', 1, 8, 1),
('Dragão Cibernético', 'Ilustração conceitual de um dragão robótico.', '2024-06-05', 30, 9, 4),
('Vida na Aldeia', 'Fotojornalismo sobre o cotidiano em uma pequena aldeia.', '2023-10-25', 3, 2, 2),
('Sonho de Primavera', 'Pintura digital de paisagem florida e vibrante.', '2024-04-10', 12, 6, 3),
('Despertar Cósmico', 'Animação digital abstrata.', '2024-05-15', 23, 1, 6),
('Labirinto de Espelhos', 'Cena 3D com ilusões de ótica e arquitetura complexa.', '2024-02-20', 5, 5, 5),
('A Grande Migração', 'Ilustração de animais fantásticos em uma jornada épica.', '2024-06-25', 10, 4, 4),
('O Grito da Natureza', 'Fotografia de vida selvagem expressiva.', '2023-11-10', 6, 2, 2),
('Fluxo Urbano', 'Pintura digital de uma cena de rua movimentada.', '2024-03-25', 8, 9, 3),
('Olhos do Universo', 'Arte generativa com padrões que simulam olhos cósmicos.', '2024-05-30', 7, 1, 1),
('Realidade Fragmentada', 'Fotografia conceitual com múltiplas exposições.', '2023-09-20', 9, 2, 2),
('Jardim Encantado', 'Pintura digital detalhada de um cenário de conto de fadas.', '2024-04-22', 19, 4, 3),
('Rei da Montanha', 'Modelagem 3D de um gigante de pedra.', '2024-01-18', 13, 5, 5),
('Cidade das Luzes', 'Ilustração de uma paisagem urbana futurista à noite.', '2024-06-10', 30, 9, 4),
('Contos de Fadas Modernos', 'Série de ilustrações digitais revisitando clássicos.', '2024-03-05', 4, 4, 4),
('Universo Paralelo', 'Arte generativa com formas geométricas complexas.', '2024-05-18', 23, 1, 1),
('Passagem do Tempo', 'Fotografia documental sobre envelhecimento.', '2023-12-01', 16, 2, 2),
('A Ponte dos Suspiros', 'Pintura digital de Veneza com um toque de fantasia.', '2024-04-28', 12, 6, 3),
('Espíritos da Floresta', 'Modelagem 3D de criaturas místicas e etéreas.', '2024-02-05', 5, 5, 5),
('Ritmos da Cidade', 'Fotojornalismo sobre a vida noturna em metrópoles.', '2023-08-01', 3, 2, 2),
('Sonho de Verão', 'Pintura digital leve e colorida.', '2024-06-08', 19, 6, 3),
('Complexidade Simples', 'Arte abstrata digital com poucas cores, mas muitas camadas.', '2024-05-22', 1, 8, 1),
('Onda de Memórias', 'Ilustração surrealista com elementos do passado e futuro.', '2024-03-12', 2, 3, 1),
('Visões do Futuro', 'Concept art de cidades e veículos espaciais.', '2024-01-20', 30, 9, 4),
('Caminhos de Pedra', 'Fotografia de paisagens naturais com trilhas rochosas.', '2023-10-15', 6, 2, 2),
('A Essência do Ser', 'Pintura digital de retratos com forte expressão.', '2024-04-15', 4, 6, 3),
('Mundos Paralelos', 'Animação curta explorando diferentes realidades em pixel art.', '2024-05-10', 8, 7, 6),
('Mar de Estrelas', 'Cena 3D de uma nave espacial navegando em um campo de estrelas.', '2024-03-18', 13, 5, 5),
('Fio da Navalha', 'Ilustração conceitual de um cenário de suspense.', '2024-06-12', 10, 4, 4),
('Fragmentos da Realidade', 'Fotografia documental que capta momentos singulares.', '2023-11-25', 16, 2, 2),
('Luzes da Cidade Grande', 'Pintura digital vibrante de arranha-céus iluminados.', '2024-04-08', 8, 9, 3),
('Movimento Abstrato', 'Arte generativa com formas em constante mudança.', '2024-05-03', 7, 1, 1),
('Silhuetas Urbanas', 'Fotografia de rua com foco em sombras e contornos.', '2023-09-28', 11, 2, 2),
('Sonho Flutuante', 'Pintura digital de uma ilha suspensa no ar.', '2024-06-18', 12, 4, 3),
('Guardiões Antigos', 'Modelagem 3D de estátuas em ruínas.', '2024-02-22', 5, 5, 5),
('Energia da Natureza', 'Ilustração de um espírito da floresta em harmonia com a natureza.', '2024-03-08', 19, 4, 4),
('Vortex Cósmico', 'Arte abstrata digital com uma espiral de cores e luz.', '2024-05-25', 1, 8, 1),
('A Última Fortaleza', 'Concept art de uma fortaleza em um mundo pós-apocalíptico.', '2024-01-28', 30, 9, 4),
('Vida em Trânsito', 'Fotografia documental de pessoas em movimento.', '2023-10-05', 3, 2, 2),
('Mente Criativa', 'Pintura digital que explora a imaginação.', '2024-04-03', 4, 6, 3),
('Labirinto do Destino', 'Animação 3D curta com um personagem explorando um labirinto.', '2024-05-05', 13, 5, 6),
('Sinfonia de Cores', 'Arte generativa com padrões complexos de cor e forma.', '2024-06-03', 23, 1, 1);


-- Obra_Ferramenta (associação N:N - id_obra, id_ferramenta)
INSERT INTO Obra_Ferramenta (id_obra, id_ferramenta) VALUES
(1, 2), (1, 1), (2, 4), (3, 1), (3, 2), (4, 1), (4, 7), (5, 5), (6, 3), (7, 4), (7, 1), (8, 2), (8, 6),
(9, 2), (9, 6), (10, 4), (10, 1), (11, 1), (11, 5), (12, 7), (12, 1), (13, 1), (13, 2), (14, 4), (15, 7), (15, 1), (15, 5),
(16, 1), (16, 3), (17, 1), (17, 7), (18, 1), (18, 5), (19, 3), (19, 7), (20, 5), (20, 8), (21, 4), (21, 11),
(22, 2), (22, 6), (23, 1), (23, 7), (24, 1), (24, 5), (25, 3), (25, 7), (26, 4), (26, 11), (27, 3), (27, 7),
(28, 5), (28, 8), (29, 1), (29, 7), (30, 2), (30, 6), (31, 1), (31, 3), (32, 4), (32, 11), (33, 1), (33, 2),
(34, 1), (34, 5), (35, 4), (35, 11), (36, 3), (36, 7), (37, 2), (37, 6), (38, 5), (38, 8), (39, 1), (39, 7),
(40, 4), (40, 11), (41, 1), (41, 3), (42, 2), (42, 6), (43, 4), (43, 11), (44, 3), (44, 7), (45, 5), (45, 8),
(46, 1), (46, 7), (47, 2), (47, 6), (48, 4), (48, 11), (49, 3), (49, 7), (50, 5), (50, 8), (51, 1), (51, 2),
(52, 4), (52, 11), (53, 3), (53, 7), (54, 5), (54, 8), (55, 1), (55, 7), (56, 2), (56, 6), (57, 4), (57, 11),
(58, 3), (58, 7), (59, 5), (59, 8), (60, 1), (60, 7), (61, 2), (61, 6), (62, 4), (62, 11), (63, 3), (63, 7),
(64, 5), (64, 8), (65, 1), (65, 7), (66, 2), (66, 6), (67, 4), (67, 11), (68, 3), (68, 7), (69, 5), (69, 8),
(70, 1), (70, 2);


-- Feedback
INSERT INTO Feedback (id_obra, usuario, comentario, nota_composicao, nota_cor, nota_mensagem) VALUES
(1, 'joana_lopes', 'Excelente uso de simetria e aleatoriedade.', 5, 4, 5),
(2, 'mario_neto', 'Narrativa poderosa. Transmite a realidade com respeito.', 4, 3, 5),
(3, 'aline_ferreira', 'Impactante e poética. A paleta ficou um pouco saturada.', 4, 2, 4),
(4, 'pedro_silva', 'Cores vibrantes e personagens bem desenhados. Adorei!', 5, 5, 5),
(5, 'lucia_gomes', 'A complexidade da cidade é impressionante. Muito criativo.', 5, 4, 5),
(6, 'fernanda_costa', 'A iluminação da aurora é mágica, quase posso sentir.', 4, 5, 4),
(1, 'rodrigo_artes', 'Ainda acho que faltou um pouco de contraste.', 3, 3, 4),
(8, 'carla_santos', 'Mergulho visual incrível. Realmente me fez sonhar.', 5, 5, 5),
(9, 'curioso_art', 'As formas são hipnotizantes!', 4, 5, 4),
(10, 'observador', 'A expressão no rosto do ancião conta uma história.', 5, 4, 5),
(11, 'critico_urbano', 'A atmosfera distópica é palpável. Muito bem executado.', 5, 4, 5),
(12, 'aventura_fan', 'Me transportou para outro mundo! Ansioso pelo jogo.', 5, 5, 5),
(13, 'geometric_art', 'Minimalista e impactante. Adorei as transições de cor.', 4, 4, 5),
(14, 'viajante_oculto', 'Captura a essência da vida noturna de Tóquio.', 5, 4, 5),
(15, 'sonhador', 'Um paraíso escondido, cheio de detalhes mágicos.', 5, 5, 5),
(16, 'analista_visual', 'A visualização dos dados é fascinante.', 4, 5, 4),
(17, 'emocional_art', 'Toque emocional profundo.', 5, 4, 5),
(18, 'futurista_fan', 'Cenário ciberpunk impressionante e sombrio.', 5, 4, 5),
(19, 'infancia_relembrada', 'Remete à minha própria infância.', 4, 5, 4),
(20, 'explorador_3d', 'A complexidade da modelagem é notável.', 5, 4, 5),
(21, 'urban_eye', 'Retrata a realidade urbana com muita autenticidade.', 4, 3, 5),
(22, 'sonhos_coloridos', 'A fluidez das cores é linda e relaxante.', 5, 5, 5),
(23, 'rpger', 'Personagem que eu adoraria encontrar em um jogo.', 5, 5, 5),
(24, 'sci_fi_addict', 'Cenário criativo e bem construído.', 4, 4, 5),
(25, 'animador_fan', 'A animação é suave e cativante.', 5, 4, 5),
(26, 'biologia_marinha', 'Detalhes da vida marinha são incríveis.', 5, 5, 5),
(27, 'conto_fadas_moderno', 'Uma nova versão charmosa e cativante.', 4, 5, 4),
(28, 'curioso_urbano', 'A complexidade da cidade é impressionante.', 5, 4, 5),
(29, 'dragao_fan', 'O dragão é majestoso e a cena é épica.', 5, 5, 5),
(30, 'astro_art', 'Uma obra que me faz pensar no universo.', 5, 4, 5),
(31, 'psicologo_art', 'Explora a mente de forma fascinante.', 4, 3, 5),
(32, 'humanista', 'As expressões são muito reais e tocantes.', 5, 5, 5),
(33, 'matematico_art', 'A precisão geométrica é incrível.', 4, 4, 5),
(34, 'robo_fan', 'Um dragão robótico é uma ideia genial!', 5, 4, 5),
(35, 'viajante_cultural', 'Cenas autênticas da vida aldeã.', 4, 3, 5),
(36, 'paisagista', 'As cores da primavera são lindíssimas!', 5, 5, 4),
(37, 'cosmos_digital', 'A arte generativa está em outro nível.', 5, 5, 5),
(38, 'ilusionista_fan', 'Adoro a complexidade e as ilusões.', 5, 4, 5),
(39, 'heroi_fantasia', 'Uma verdadeira aventura visual.', 5, 5, 5),
(40, 'naturalista_art', 'Captura a essência da vida selvagem.', 5, 4, 5),
(41, 'artista_urbano', 'As ruas ganham vida nessa obra.', 4, 3, 5),
(42, 'visoes_cosmicas', 'Hipnotizante e profundo.', 5, 5, 5),
(43, 'observador_social', 'Reflete bem a sociedade.', 4, 3, 5),
(44, 'sonho_infantil', 'Um jardim que eu gostaria de visitar.', 5, 5, 5),
(45, 'colecionador_arte', 'Um gigante que impõe respeito.', 5, 4, 5),
(46, 'noturno_fan', 'As luzes da cidade são mágicas.', 5, 5, 5),
(47, 'ilustrador_geek', 'Ideias incríveis e muito bem executadas.', 5, 4, 5),
(48, 'misterioso_art', 'Formas que te fazem questionar.', 4, 5, 4),
(49, 'tempo_passa', 'Traz uma reflexão profunda sobre a vida.', 5, 4, 5),
(50, 'romantico_art', 'A ponte é um símbolo perfeito.', 5, 5, 5),
(51, 'mistico_fan', 'Criaturas de outro mundo.', 5, 4, 5),
(52, 'cronicista_urbano', 'A energia da cidade noturna.', 4, 3, 5),
(53, 'sol_e_mar', 'Perfeito para um dia de verão.', 5, 5, 4),
(54, 'complexo_simples', 'Engenhoso na sua simplicidade.', 4, 4, 5),
(55, 'sonhador_profundo', 'Uma viagem mental.', 5, 5, 5),
(56, 'futuro_visionario', 'Incrível concepção de um mundo diferente.', 5, 4, 5),
(57, 'trilheiro_art', 'Me faz querer explorar a natureza.', 5, 5, 4),
(58, 'expressivo', 'Emoção pura em cada pincelada.', 5, 4, 5),
(59, 'pixel_animado', 'Uma animação charmosa e nostálgica.', 4, 5, 4),
(60, 'espaco_sideral', 'A nave e as estrelas são espetaculares.', 5, 5, 5),
(61, 'suspense_fan', 'A tensão é palpável.', 5, 4, 5),
(62, 'momentos_unicos', 'Captura a beleza do cotidiano.', 5, 4, 5),
(63, 'luminoso', 'As luzes são o destaque da obra.', 5, 5, 5),
(64, 'movimento_constante', 'A arte em si é a mudança.', 4, 5, 4),
(65, 'olhar_urbano', 'Um novo ângulo da cidade.', 5, 4, 5),
(66, 'ilhas_flutuantes', 'Um sonho transformado em arte.', 5, 5, 5),
(67, 'historia_antiga', 'As estátuas contam mil anos.', 5, 4, 5),
(68, 'conexao_natureza', 'A energia vital da floresta.', 5, 5, 5),
(69, 'espiral_mistica', 'Me sinto sugado para a obra.', 5, 5, 5),
(70, 'fim_e_inicio', 'Um conceito poderoso.', 5, 4, 5);
