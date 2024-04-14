-- Drop if exists
DROP DATABASE IF EXISTS PlayerMoves;

CREATE DATABASE IF NOT EXISTS PlayerMoves;

USE PlayerMoves;

CREATE TABLE Movements (
    MovementId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    PlayerName VARCHAR(255) NOT NULL,
    LevelName VARCHAR(255) NOT NULL,
    Time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Moves (
    MoveId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    MovementId INT NOT NULL,
    Frame INT NOT NULL,
    KeysPressed TINYINT NOT NULL,
    FOREIGN KEY (MovementId) REFERENCES Movements(MovementId)
);