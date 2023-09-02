/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM ANIMALS WHERE NAME LIKE '%mon';
SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';
SELECT name FROM animals WHERE neutered=true AND escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name = 'Pikachu' OR name = 'Agumon';
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered=true;
SELECT * FROM animals WHERE name NOt IN ('Gabumon');
SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3 OR weight_kg = 17.3 OR weight_kg = 10.4;

BEGIN;
UPDATE ANIMALS SET SPECIES = 'unspecified';

BEGIN;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
COMMIT;

BEGIN;
DELETE FROM ANIMALS;
SELECT * FROM ANIMALS;
ROLLBACK;
SELECT * FROM ANIMALS;

BEGIN;
DELETE FROM ANIMALS WHERE DATE_OF_BIRTH > '2022-01-01';
SAVEPOINT DOB2022;
UPDATE ANIMALS SET WEIGHT_KG = WEIGHT_KG * -1;
ROLLBACK TO DOB2022;
UPDATE ANIMALS SET WEIGHT_KG = WEIGHT_KG * -1 WHERE WEIGHT_KG < 0;
COMMIT;
SELECT * FROM ANIMALS;