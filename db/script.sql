CREATE DATABASE herois;

\c herois

CREATE TABLE digimon (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    nivel INTEGER NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    ataqueEspecial VARCHAR(50) NOT NULL,
    dano INTEGER NOT NULL,
    HP INTEGER NOT NULL,
    defesa INTEGER NOT NULL,
    velocidade INTEGER NOT NULL,
    campo VARCHAR(50) NOT NULL
);

CREATE TABLE historico (
    id SERIAL PRIMARY KEY,
    digimon1_id INTEGER NOT NULL,
    digimon2_id INTEGER NOT NULL,
    winner_id INTEGER NOT NULL,
    FOREIGN KEY (digimon1_id) REFERENCES digimon(id),
    FOREIGN KEY (digimon2_id) REFERENCES digimon(id),
    FOREIGN KEY (winner_id) REFERENCES digimon(id)  
);

INSERT INTO digimon (nome, nivel, tipo, ataqueEspecial, dano, HP, defesa, velocidade, campo) VALUES 
('Agumon', 1, 'vacina', 'Baby Flame', 60, 70, 12, 10, 'dragon roar'),
('Greymon', 2, 'vacina', 'Mega Flame', 112, 120, 15, 7, 'dragon roar'),
('MetalGreymon', 3, 'vacina', 'Giga Destroyer', 150, 160, 20, 6, 'dragon roar'),
('WarGreymon', 4, 'vacina', 'Gaia Force', 220, 250, 24, 15, 'dragon roar');

INSERT INTO digimon (nome, nivel, tipo, ataqueEspecial, dano, HP, defesa, velocidade, campo) VALUES 
('Gabumon', 1, 'dado', 'Petit Fire', 50, 60, 10, 12, 'Metal Empire'),
('Garurumon', 2, 'vacina', 'Fox Fire', 108, 100, 13, 15, 'Metal Empire'),
('WereGarurumon', 3, 'vacina', 'Kaiser Nail', 130, 140, 18, 17, 'Metal Empire'),
('MetalGarurumon', 4, 'dado', 'Cocytus Breath', 190, 245, 27, 20, 'Metal Empire');

INSERT INTO digimon (nome, nivel, tipo, ataqueEspecial, dano, HP, defesa, velocidade, campo) VALUES 
('Palmon', 1, 'dado', 'Poison Ivy', 50, 60, 10, 12, 'Jungle Troopers'),
('Garurumon', 2, 'vacina', 'Fox Fire', 108, 100, 13, 15, 'Metal Empire'),
('WereGarurumon', 3, 'vacina', 'Kaiser Nail', 130, 140, 18, 17, 'Metal Empire'),
('MetalGarurumon', 4, 'dado', 'Cocytus Breath', 190, 245, 27, 20, 'Metal Empire');