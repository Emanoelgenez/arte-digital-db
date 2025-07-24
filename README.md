## 👥
- Emanoel Genez de Souza
- Guilherme de Andrade Santos
- Guilherme Ribeiro Guimarães
- Hugo Leonardo Veloso de Sales
- Wendler José da Silva

# Plataforma de Análise e Produção de Arte Digital

>
> “Você já parou para pensar no que torna uma obra de arte *realmente* valiosa?”
>
> Não falamos apenas de dinheiro — mas de presença, emoção, impacto.  
> 
> Em um mundo onde imagens são geradas por inteligência artificial em segundos e obras digitais são vendidas por milhões em NFTs, como organizamos, entendemos e valorizamos a arte?  
>
> Este projeto nasceu dessa inquietação.  
>
> Em conversas com amigos criadores, vimos artistas brilhantes lutando para documentar seu trabalho, entender sua audiência ou simplesmente escolher a melhor ferramenta para criar.  
>
> Foi então que decidimos transformar essa dor em solução: uma plataforma de análise e produção de arte digital. Um banco de dados que não só organiza informações, mas **cria inteligência**, conecta contextos, e valoriza a trajetória artística em tempos de algoritmos e pixels.
>
> Esta não é apenas uma estrutura técnica. É uma ponte entre o humano e o digital. Entre o que se sente e o que se mede.


## 🧠 Contexto e Visão Científica
O projeto **Plataforma de Análise e Produção de Arte Digital** surge em meio à crescente convergência entre arte, tecnologia e cultura digital. Vivemos na era da **economia figital** (física + digital), onde bens simbólicos (como imagens, músicas e experiências) ganham valor econômico concreto por meio de sua circulação em redes digitais, marketplaces de NFTs, redes sociais, IA generativa e plataformas criativas.

Nesta realidade, artistas independentes, curadores, críticos e desenvolvedores culturais precisam lidar com **dados complexos** sobre obras, ferramentas digitais, estilos artísticos e percepção pública.

> Este projeto propõe um banco de dados relacional que organiza e analisa esses elementos de forma integrada, abrindo espaço para aplicações reais na gestão, curadoria e inteligência de mercado para arte digital e fotojornalismo.

## 🎯 Objetivo do Projeto
Criar uma base de dados relacional normalizada para registro e análise de:

- Obras de arte digital e fotojornalismo  
- Artistas e seus perfis  
- Estilos e categorias  
- Ferramentas utilizadas (ex: IA, software, hardware)  
- Feedback do público (com métricas subjetivas)

Esse sistema pode ser utilizado por plataformas de arte, marketplaces digitais, comunidades criativas ou para fins acadêmicos e analíticos.

## 🛠️ SGBD Utilizado
**SQLite**, por sua simplicidade e portabilidade no desenvolvimento inicial.

## 📁 Estrutura do Projeto

| Arquivo         | Descrição                                                                 |
|-----------------|---------------------------------------------------------------------------|
| `schema.sql`    | Criação das tabelas normalizadas com chaves primárias e estrangeiras      |
| `data.sql`      | População de dados fictícios realistas com artistas, estilos, obras, etc. |
| `queries.sql`   | Consultas SQL relevantes ao contexto                                       |
| `img/diagrama.png` | Diagrama ER do banco de dados                                          |

### 📌 Modelo Conceitual (ER)

![Diagrama ER](https://github.com/Emanoelgenez/arte-digital-db/blob/master/img/diagrama.png)

Principais entidades e relacionamentos:

- `Artista` (1:N com `Obra`)  
- `Estilo` (1:N com `Obra`)  
- `Categoria` (1:N com `Obra`)  
- `Ferramenta` (N:N com `Obra` via `Obra_Ferramenta`)  
- `Obra` (1:N com `Feedback`)

O modelo foi desenvolvido seguindo boas práticas de normalização (até 3FN), com o uso de chaves estrangeiras, constraints e entidades associativas para resolver relacionamentos complexos.

### **1. Tabela: Artista**

Esta tabela armazena informações sobre os artistas.

- **`id_artista`** (int):
    - **Chave Primária (PK)**: Identificador único para cada artista. É do tipo inteiro.
- **`nome`** (varchar(100)):
    - Nome completo do artista, limitado a 100 caracteres.
- **`bio`** (text):
    - Biografia do artista. O tipo `text` permite um texto longo.
- **`pais_origem`** (varchar(50)):
    - País de origem do artista, limitado a 50 caracteres.

---

### **2. Tabela: Obra**

Essa tabela centraliza as informações sobre as obras de arte.

- **`id_obra`** (int):
    - **Chave Primária (PK)**: Identificador único para cada obra de arte.
- **`titulo`** (varchar(150)):
    - Título da obra, limitado a 150 caracteres.
- **`descricao`** (text):
    - Descrição detalhada da obra.
- **`data_criacao`** (date):
    - Data em que a obra foi criada.
- **`id_artista`** (int):
    - **Chave Estrangeira (FK)**: Relaciona a obra a um `id_artista` específico na tabela `Artista`. Indica qual artista criou a obra.
- **`id_estilo`** (int):
    - **Chave Estrangeira (FK)**: Relaciona a obra a um `id_estilo` específico na tabela `Estilo`. Indica o estilo artístico da obra.
- **`id_categoria`** (int):
    - **Chave Estrangeira (FK)**: Relaciona a obra a um `id_categoria` específico na tabela `Categoria`. Indica a categoria da obra (ex: pintura, escultura, fotografia).

---

### **3. Tabela: Feedback**

A tabela registra os feedbacks ou avaliações sobre as obras.

- **`id_feedback`** (int):
    - **Chave Primária (PK)**: Identificador único para cada feedback.
- **`id_obra`** (int):
    - **Chave Estrangeira (FK)**: Relaciona o feedback a uma `id_obra` específica na tabela `Obra`. Indica a qual obra o feedback se refere.
- **`usuario`** (varchar(100)):
    - Nome do usuário que deixou o feedback, limitado a 100 caracteres.
- **`comentario`** (text):
    - O texto do comentário do feedback.
- **`nota_composicao`** (int):
    - Nota para a composição da obra de 1 a 5.
- **`nota_cor`** (int):
    - Nota para a cor da obra.
- **`nota_mensagem`** (int):
    - Nota para a mensagem ou significado da obra.

---

### **4. Tabela: Estilo**

Armazena informações sobre os diferentes estilos artísticos.

- **`id_estilo`** (int):
    - **Chave Primária (PK)**: Identificador único para cada estilo.
- **`nome`** (varchar(100)):
    - Nome do estilo (ex: Arte Generativa, Fotografia Documental, Pixel Art), limitado a 100 caracteres.
- **`descricao`** (text):
    - Descrição do estilo.

---

### **5. Tabela: Categoria**

Armazena as categorias de obras de arte.

- **`id_categoria`** (int):
    - **Chave Primária (PK)**: Identificador único para cada categoria.
- **`nome`** (varchar(100)):
    - Nome da categoria (ex: Arte Digital, Fotojornalismo, Pintura Digital… ), limitado a 100 caracteres.
- **`descricao`** (text):
    - Descrição da categoria.

---

### **6. Tabela: Ferramenta**

Armazena informações sobre as ferramentas utilizadas nas obras (ou que podem ser associadas a elas).

- **`id_ferramenta`** (int):
    - **Chave Primária (PK)**: Identificador único para cada ferramenta.
- **`nome`** (varchar(100)):
    - Nome da ferramenta (ex: Adobe Photoshop, Stable Diffusion, Dall-e…), limitado a 100 caracteres.
- **`tipo`** (varchar(50)):
    - Tipo da ferramenta (ex: Software, IA, Hardware..  ), limitado a 50 caracteres.

---

### **7. Tabela: Obra_Ferramenta**

Esta é uma tabela de associação (ou "tabela de junção" / "tabela N:N"). Ela resolve o relacionamento Muitos-para-Muitos (N:N) entre `Obra` e `Ferramenta`. Uma obra pode usar várias ferramentas, e uma ferramenta pode ser usada em várias obras.

- **`id_obra`** (int):
    - **Chave Estrangeira (FK)**: Relaciona a uma `id_obra` na tabela `Obra`. Faz parte da chave primária composta desta tabela.
- **`id_ferramenta`** (int):
    - **Chave Estrangeira (FK)**: Relaciona a uma `id_ferramenta` na tabela `Ferramenta`. Faz parte da chave primária composta desta tabela.
    - **Chave Primária Composta**: Juntas, `(id_obra, id_ferramenta)` formam a chave primária desta tabela. Isso garante que cada par (obra, ferramenta) seja único.

---

### **Relacionamentos:**

- **Artista (1) -- (N) Obra**: Um artista pode criar várias obras, mas cada obra é criada por apenas um artista.
- **Estilo (1) -- (N) Obra**: Um estilo pode ser associado a várias obras, mas cada obra tem um único estilo.
- **Categoria (1) -- (N) Obra**: Uma categoria pode conter várias obras, mas cada obra pertence a uma única categoria.
- **Obra (1) -- (N) Feedback**: Uma obra pode receber vários feedbacks, mas cada feedback está relacionado a uma única obra.
- **Obra (N) -- (N) Ferramenta** (resolvido pela tabela `Obra_Ferramenta`): Uma obra pode ser criada usando múltiplas ferramentas, e uma ferramenta pode ser usada em múltiplas obras.

## 🔎 Exemplos de Consultas SQL

- Top 3 obras com melhor avaliação de mensagem  
- Lista de artistas com mais obras produzidas  
- Estilos mais utilizados  
- Ferramentas mais empregadas na produção  

## 📊 Análise Competitiva e Tecnologias Disruptivas

Este projeto se insere em um ecossistema onde plataformas como **DeviantArt**, **OpenSea**, **ArtStation** e ferramentas como **Midjourney** moldam novas formas de produção e consumo estético.

O banco de dados proposto pode ser usado como base para:

- Dashboards de performance e engajamento  
- Relatórios e análises sobre comportamento do público  
- Ferramentas preditivas para curadoria e recomendação artística

Além disso, o uso de tecnologias como:

- IA generativa (Stable Diffusion, DALL·E, Runway)  
- Blockchain (NFTs)  
- Algoritmos de recomendação e análise semântica  

… estão transformando o valor simbólico da arte na economia contemporânea.

## 🧩 Relevância Filosófica e Social

A arte digital é uma linguagem da contemporaneidade. Reflete os paradoxos da sociedade conectada, como:

- A diluição entre criador e espectador  
- A fusão entre humano e algoritmo  
- A fluidez entre o tangível e o digital  

> Este projeto, ao organizar dados sobre essas dinâmicas, contribui para a discussão sobre **o futuro da criatividade, da autoria e da expressão na era figital**.

## 🚀 Perspectivas Futuras

- Geração de relatórios automatizados com Python/Power BI  
- Integração com APIs de IA generativa (ex: geração de arte)  
- Sistema web com upload de obras e coleta de feedbacks  
- Publicações analíticas sobre a produção artística digital brasileira  
