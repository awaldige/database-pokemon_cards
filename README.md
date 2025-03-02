Pokémon Card Database

Este repositório contém um banco de dados relacional para armazenar informações sobre cartas de Pokémon, incluindo seus atributos, ataques, fraquezas, resistências e muito mais.

Estrutura do Banco de Dados

O banco de dados é composto pelas seguintes tabelas:

cartas_pokemon - Armazena informações básicas das cartas.

fraquezas - Define as fraquezas de cada carta.

resistencias - Define as resistências de cada carta.

traducao_cartas - Contém traduções dos nomes e descrições das cartas.

ataques - Lista os ataques disponíveis para cada carta.

raridades - Define a raridade de cada carta.

habilidades - Lista as habilidades das cartas.

sets - Armazena os conjuntos (expansões) de cartas.

ilustradores - Contém os ilustradores das cartas.

carta_set - Relaciona as cartas aos seus respectivos conjuntos.

Tecnologias Utilizadas

MySQL, MariaDB, PostgreSQL ou outros bancos relacionais - Para gerenciamento do banco de dados.

Um cliente SQL, como MySQL Workbench, DBeaver, pgAdmin, HeidiSQL ou qualquer outro de sua preferência.

Como Usar

Clone este repositório:

git clone https://github.com/seuusuario/pokemon-card-db.git

Acesse o diretório do projeto:

cd pokemon-card-db

Importe o arquivo SQL no seu banco de dados MySQL, MariaDB, PostgreSQL ou outro banco relacional compatível.

Utilize um cliente SQL para explorar os dados e realizar consultas.

Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou enviar pull requests.

Licença

Este projeto está sob a licença MIT.
