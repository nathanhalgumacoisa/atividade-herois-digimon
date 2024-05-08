CREATE DATABASE herois;

\c herois

CREATE TABLE digimon (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    nivel INTEGER NOT NULL,
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

