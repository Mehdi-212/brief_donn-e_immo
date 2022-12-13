CREATE DATABASE db_immobilier;

USE db_immobilier;

DROP TABLE IF EXISTS Bien;

CREATE TABLE Bien (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name_voie VARCHAR(50) NOT NULL,
    number INTEGER NOT NULL,
    type_voie VARCHAR(50) NOT NULL,
    total_piece INTEGER(12) NOT NULL,
    surface_carree FLOAT(12) NOT NULL,
    surface_local INTEGER(12) NOT NULL,
    type_local VARCHAR(50) NOT NULL,
    id_cmn VARCHAR(50) NOT NULL,
    id_vente VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_cmn) REFERENCES commune(id),
    FOREIGN KEY (id_vente) REFERENCES vente(id)
);

DROP TABLE IF EXISTS Vente;

CREATE TABLE Vente (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    date DATE NOT NULL,
    valeur INTEGER(12) NOT NULL
);

DROP TABLE IF EXISTS Commune;

CREATE TABLE Commune (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(50) NOT NULL,
    code VARCHAR(50) NOT NULL,
    code_postal VARCHAR(50) NOT NULL,                                
    Population INTEGER(12) NOT NULL,
    id_dpt VARCHAR(50) NOT NULL,                           
    FOREIGN KEY (id_dpt) REFERENCES departement(id)
);

DROP TABLE IF EXISTS Departement;

CREATE TABLE Departement (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(50) NOT NULL,
    code VARCHAR(50) NOT NULL,
    id_reg VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_reg) REFERENCES region(id)
);

DROP TABLE IF EXISTS Region;

CREATE TABLE Region (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(50) NOT NULL,
    code VARCHAR(50) NOT NULL
);