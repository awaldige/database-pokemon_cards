CREATE DATABASE pokemon_cards;
USE pokemon_cards;
select * from cartas_pokemon;
CREATE TABLE cartas_pokemon (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    descricao TEXT
);
select * from fraquezas;
CREATE TABLE fraquezas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    carta_id INT,
    tipo VARCHAR(50),
    multiplicador DOUBLE,
    FOREIGN KEY (carta_id) REFERENCES cartas_pokemon(id)
);
select * from resistencias;
CREATE TABLE resistencias (
    id INT PRIMARY KEY AUTO_INCREMENT,
    carta_id INT,
    tipo VARCHAR(50),
    multiplicador DOUBLE,
    FOREIGN KEY (carta_id) REFERENCES cartas_pokemon(id)
);
select * from traducao_cartas;
CREATE TABLE traducao_cartas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    carta_id INT,
    idioma VARCHAR(50),
    nome_traduzido VARCHAR(100),
    descricao_traduzida TEXT,
    FOREIGN KEY (carta_id) REFERENCES cartas_pokemon(id)
);
select * from ataques;
CREATE TABLE ataques (
    id INT PRIMARY KEY AUTO_INCREMENT,
    carta_id INT,
    nome VARCHAR(100),
    dano INT,
    custo_energia VARCHAR(50),
    FOREIGN KEY (carta_id) REFERENCES cartas_pokemon(id)
);
select * from raridades;
CREATE TABLE raridades (
    id INT PRIMARY KEY AUTO_INCREMENT,
    carta_id INT,
    nivel VARCHAR(50),
    FOREIGN KEY (carta_id) REFERENCES cartas_pokemon(id)
);
select * from habilidades;
CREATE TABLE habilidades (
    id INT PRIMARY KEY AUTO_INCREMENT,
    carta_id INT,
    nome VARCHAR(100),
    efeito TEXT,
    FOREIGN KEY (carta_id) REFERENCES cartas_pokemon(id)
);
select * from sets;
CREATE TABLE sets (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    data_lancamento DATE
);
select * from ilustradores;
CREATE TABLE ilustradores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100)
);
select * from carta_set;
CREATE TABLE carta_set (
    id INT PRIMARY KEY AUTO_INCREMENT,
    carta_id INT,
    set_id INT,
    FOREIGN KEY (carta_id) REFERENCES cartas_pokemon(id),
    FOREIGN KEY (set_id) REFERENCES sets(id)
);

-- Inserindo dados em cartas_pokemon
INSERT INTO cartas_pokemon (nome, tipo, descricao) VALUES
('Pikachu', 'Elétrico', 'Um Pokémon elétrico muito popular.'),
('Charizard', 'Fogo', 'Evolução final de Charmander, pode cuspir fogo intenso.'),
('Bulbasaur', 'Grama', 'Possui uma semente nas costas que cresce com ele.'),
('Squirtle', 'Água', 'Um Pokémon tartaruga que esguicha água.'),
('Jigglypuff', 'Normal', 'Usa sua canção para fazer os oponentes dormirem.'),
('Eevee', 'Normal', 'Pode evoluir para várias formas diferentes.'),
('Snorlax', 'Normal', 'Passa a maior parte do tempo dormindo.'),
('Mewtwo', 'Psíquico', 'Criado geneticamente para ser um dos mais poderosos Pokémon.'),
('Gyarados', 'Água', 'Uma evolução furiosa de Magikarp.'),
('Dragonite', 'Dragão', 'Muito raro e extremamente poderoso.'),
('Machamp', 'Lutador', 'Possui quatro braços e golpes extremamente fortes.'),
('Gengar', 'Fantasma', 'Adora pregar sustos em treinadores desavisados.'),
('Alakazam', 'Psíquico', 'Possui um QI extremamente elevado.'),
('Arcanine', 'Fogo', 'Conhecido por sua velocidade e lealdade.'),
('Lapras', 'Água', 'Usado frequentemente para transportar pessoas através do mar.'),
('Zapdos', 'Elétrico', 'Um dos lendários pássaros de Kanto.'),
('Moltres', 'Fogo', 'Um pássaro lendário associado às chamas.'),
('Articuno', 'Gelo', 'Um pássaro lendário que controla o frio.'),
('Raichu', 'Elétrico', 'A evolução de Pikachu, com descargas elétricas mais fortes.'),
('Blastoise', 'Água', 'A forma final de Squirtle, com canhões de água poderosos.');

-- Inserindo fraquezas
INSERT INTO fraquezas (carta_id, tipo, multiplicador) VALUES
(1, 'Terra', 2.0),
(2, 'Água', 2.0),
(3, 'Fogo', 2.0),
(4, 'Elétrico', 2.0),
(5, 'Lutador', 2.0),
(6, 'Lutador', 2.0),
(7, 'Lutador', 2.0),
(8, 'Fantasma', 2.0),
(9, 'Elétrico', 2.0),
(10, 'Gelo', 2.0),
(11, 'Psíquico', 2.0),
(12, 'Sombrio', 2.0),
(13, 'Sombrio', 2.0),
(14, 'Água', 2.0),
(15, 'Elétrico', 2.0),
(16, 'Gelo', 2.0),
(17, 'Água', 2.0),
(18, 'Fogo', 2.0),
(19, 'Terra', 2.0),
(20, 'Elétrico', 2.0);

-- Inserindo resistências
INSERT INTO resistencias (carta_id, tipo, multiplicador) VALUES
(1, 'Aço', 0.5),
(2, 'Grama', 0.5),
(3, 'Água', 0.5),
(4, 'Fogo', 0.5),
(5, 'Psíquico', 0.5),
(6, 'Sombrio', 0.5),
(7, 'Normal', 0.5),
(8, 'Lutador', 0.5),
(9, 'Fogo', 0.5),
(10, 'Grama', 0.5),
(11, 'Inseto', 0.5),
(12, 'Normal', 0.5),
(13, 'Fada', 0.5),
(14, 'Gelo', 0.5),
(15, 'Água', 0.5),
(16, 'Fogo', 0.5),
(17, 'Lutador', 0.5),
(18, 'Elétrico', 0.5),
(19, 'Aço', 0.5),
(20, 'Psíquico', 0.5);
-- iserindo ataques 
INSERT INTO ataques (carta_id, nome, dano, custo_energia) VALUES
(1, 'Choque do Trovão', 30, 'Elétrico'),
(2, 'Lança-Chamas', 50, 'Fogo'),
(3, 'Chicote de Vinhas', 20, 'Grama'),
(4, 'Jato d''Água', 25, 'Água'),
(5, 'Canção da Serenata', 0, 'Normal'),
(6, 'Investida', 20, 'Normal'),
(7, 'Descanso', 0, 'Normal'),
(8, 'Confusão Mental', 40, 'Psíquico'),
(9, 'Hidro Bomba', 60, 'Água'),
(10, 'Furacão', 70, 'Dragão'),
(11, 'Golpe Cruzado', 50, 'Lutador'),
(12, 'Sombra Noturna', 40, 'Fantasma'),
(13, 'Poder Psiônico', 55, 'Psíquico'),
(14, 'Presas Flamejantes', 45, 'Fogo'),
(15, 'Canto Gélido', 30, 'Água'),
(16, 'Trovão', 90, 'Elétrico'),
(17, 'Rajada de Fogo', 100, 'Fogo'),
(18, 'Nevasca', 80, 'Gelo'),
(19, 'Super Choque', 60, 'Elétrico'),
(20, 'Jato de Água', 85, 'Água');

-- inserindo dados em tradução_cartas
INSERT INTO traducao_cartas (carta_id, idioma, nome_traduzido, descricao_traduzida) VALUES
(1, 'Português', 'Pikachu', 'Um Pokémon elétrico muito popular.'),
(2, 'Português', 'Charizard', 'Evolução final de Charmander, pode cuspir fogo intenso.'),
(3, 'Português', 'Bulbasauro', 'Possui uma semente nas costas que cresce com ele.'),
(4, 'Português', 'Squirtle', 'Um Pokémon tartaruga que esguicha água.'),
(5, 'Português', 'Jigglypuff', 'Usa sua canção para fazer os oponentes dormirem.'),
(6, 'Português', 'Eevee', 'Pode evoluir para várias formas diferentes.'),
(7, 'Português', 'Snorlax', 'Passa a maior parte do tempo dormindo.'),
(8, 'Português', 'Mewtwo', 'Criado geneticamente para ser um dos mais poderosos Pokémon.'),
(9, 'Português', 'Gyarados', 'Uma evolução furiosa de Magikarp.'),
(10, 'Português', 'Dragonite', 'Muito raro e extremamente poderoso.'),
(11, 'Português', 'Machamp', 'Possui quatro braços e golpes extremamente fortes.'),
(12, 'Português', 'Gengar', 'Adora pregar sustos em treinadores desavisados.'),
(13, 'Português', 'Alakazam', 'Possui um QI extremamente elevado.'),
(14, 'Português', 'Arcanine', 'Conhecido por sua velocidade e lealdade.'),
(15, 'Português', 'Lapras', 'Usado frequentemente para transportar pessoas através do mar.'),
(16, 'Português', 'Zapdos', 'Um dos lendários pássaros de Kanto.'),
(17, 'Português', 'Moltres', 'Um pássaro lendário associado às chamas.'),
(18, 'Português', 'Articuno', 'Um pássaro lendário que controla o frio.'),
(19, 'Português', 'Raichu', 'A evolução de Pikachu, com descargas elétricas mais fortes.'),
(20, 'Português', 'Blastoise', 'A forma final de Squirtle, com canhões de água poderosos.');

-- inserido dados em raridades 
INSERT INTO raridades (carta_id, nivel) VALUES
(1, 'Comum'),
(2, 'Rara'),
(3, 'Comum'),
(4, 'Comum'),
(5, 'Incomum'),
(6, 'Comum'),
(7, 'Rara'),
(8, 'Ultra Rara'),
(9, 'Rara'),
(10, 'Ultra Rara'),
(11, 'Incomum'),
(12, 'Rara'),
(13, 'Rara'),
(14, 'Incomum'),
(15, 'Rara'),
(16, 'Lendária'),
(17, 'Lendária'),
(18, 'Lendária'),
(19, 'Incomum'),
(20, 'Ultra Rara');

-- adicionar dados em habilidades
INSERT INTO habilidades (carta_id, nome, efeito) VALUES
(1, 'Estática', 'Pode paralisar o oponente ao receber um ataque físico.'),
(2, 'Fogo Ardente', 'Aumenta o dano dos ataques de fogo quando com pouca vida.'),
(3, 'Clorofila', 'Aumenta a velocidade sob a luz do sol.'),
(4, 'Torrente', 'Aumenta o poder dos ataques de água quando está com pouca vida.'),
(5, 'Voz Encantada', 'Pode deixar o oponente confuso.'),
(6, 'Adaptação', 'Ajusta-se ao ambiente para melhorar seus ataques.'),
(7, 'Gula', 'Recupera HP automaticamente ao cair abaixo de 50%.'),
(8, 'Pressão', 'Força o oponente a gastar mais energia para atacar.'),
(9, 'Intimidação', 'Reduz o ataque do adversário ao entrar na batalha.'),
(10, 'Velocidade Extrema', 'Permite atacar primeiro, mesmo contra oponentes mais rápidos.'),
(11, 'Punhos de Ferro', 'Aumenta o dano de ataques baseados em socos.'),
(12, 'Corpo Sombrio', 'Reduz a precisão do oponente ao ser atingido.'),
(13, 'Sincronizar', 'Causa ao inimigo as mesmas condições de status sofridas.'),
(14, 'Flash Fire', 'Absorve ataques de fogo e aumenta o dano desse tipo.'),
(15, 'Casco Grosso', 'Reduz o dano recebido de ataques físicos.'),
(16, 'Eletrostático', 'Pode paralisar o oponente ao contato.'),
(17, 'Chamas Furiosas', 'Aumenta o dano dos ataques de fogo quando com pouca vida.'),
(18, 'Gelo Seco', 'Reduz a velocidade do oponente ao ser atingido.'),
(19, 'Fúria Elétrica', 'Aumenta a força dos ataques elétricos em tempestades.'),
(20, 'Canhões de Água', 'Aumenta o dano de ataques de água durante a chuva.');

-- inserir dados em sets
INSERT INTO sets (nome, data_lancamento) VALUES
('Base Set', '1999-01-09'),
('Jungle', '1999-06-16'),
('Fossil', '1999-10-10'),
('Team Rocket', '2000-04-24'),
('Gym Heroes', '2000-08-14'),
('Gym Challenge', '2000-10-16'),
('Neo Genesis', '2000-12-16'),
('Neo Discovery', '2001-06-01'),
('Neo Revelation', '2001-09-21'),
('Neo Destiny', '2002-02-28'),
('Legendary Collection', '2002-05-24'),
('Expedition Base Set', '2002-09-15'),
('Aquapolis', '2003-01-15'),
('Skyridge', '2003-05-12'),
('EX Ruby & Sapphire', '2003-06-18'),
('EX Sandstorm', '2003-09-17'),
('EX Dragon', '2003-11-24'),
('EX Team Magma vs Team Aqua', '2004-03-15'),
('EX Hidden Legends', '2004-06-14'),
('EX FireRed & LeafGreen', '2004-08-30'),
('EX Team Rocket Returns', '2004-11-08'),
('EX Deoxys', '2005-02-14'),
('EX Emerald', '2005-05-09'),
('EX Unseen Forces', '2005-08-22'),
('EX Delta Species', '2005-10-31'),
('EX Legend Maker', '2006-02-13'),
('EX Holon Phantoms', '2006-05-03'),
('EX Crystal Guardians', '2006-08-30'),
('EX Dragon Frontiers', '2006-11-08'),
('EX Power Keepers', '2007-02-14'),
('Diamond & Pearl', '2007-05-23'),
('Mysterious Treasures', '2007-08-22'),
('Secret Wonders', '2007-11-07'),
('Great Encounters', '2008-02-13'),
('Majestic Dawn', '2008-05-21'),
('Legends Awakened', '2008-08-20'),
('Stormfront', '2008-11-05'),
('Platinum', '2009-02-11'),
('Rising Rivals', '2009-05-20');

-- inserir dados em ilustradores
INSERT INTO ilustradores (nome) VALUES
('Ken Sugimori'),
('Mitsuhiro Arita'),
('Keiji Kinebuchi'),
('Kagemaru Himeno'),
('Atsuko Nishida'),
('Tomokazu Komiya'),
('Yuka Morii'),
('Shin Nagasawa'),
('Naoki Saito'),
('5ban Graphics'),
('Kouki Saitou'),
('Masakazu Fukuda'),
('Takashi Yamaguchi'),
('Midori Harada'),
('Sanosuke Sakuma'),
('Illus. & Direc.'),
('Akira Egawa'),
('Hideki Ishikawa'),
('Ryota Murayama'),
('Satoshi Shirai');

-- inserir dados em carta_set
INSERT INTO carta_set (carta_id, set_id) VALUES
(1, 1),  -- Pikachu no Base Set
(2, 1),  -- Charizard no Base Set
(3, 2),  -- Bulbasaur no Jungle
(4, 2),  -- Squirtle no Jungle
(5, 3),  -- Jigglypuff no Fossil
(6, 3),  -- Eevee no Fossil
(7, 4),  -- Snorlax no Team Rocket
(8, 4),  -- Mewtwo no Team Rocket
(9, 5),  -- Gyarados no Gym Heroes
(10, 5), -- Dragonite no Gym Heroes
(11, 6), -- Machamp no Gym Challenge
(12, 6), -- Gengar no Gym Challenge
(13, 7), -- Alakazam no Neo Genesis
(14, 7), -- Arcanine no Neo Genesis
(15, 8), -- Lapras no Neo Discovery
(16, 8), -- Zapdos no Neo Discovery
(17, 9), -- Moltres no Neo Revelation
(18, 9), -- Articuno no Neo Revelation
(19, 10), -- Raichu no Neo Destiny
(20, 10); -- Blastoise no Neo Destiny



