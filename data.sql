/* Populate database with sample data. */

INSERT INTO ANIMALS (NAME,DATE_OF_BIRTH,ESCAPE_ATTEMPTS,NEUTERED,WEIGHT_KG) VALUES 
('Agumon', '2020-02-03',0, true, 10.23 ), 
('Gabumon', '2018-11-15',2, true, 8 ), 
('Pikachu', '2021-01-07',1, false, 15.04 ), 
('Devimon', '2017-05-12',5, true, 11 );

INSERT INTO animals (name, DATE_OF_BIRTH, ESCAPE_ATTEMPTS, NEUTERED, WEIGHT_KG) VALUES 
('Charmander', '2020-02-08', 0, false, -11), 
('Plantmon', '2021-11-15', 2, true, -5.7), 
('Squirtle', '1993-04-02', 3, false, -12.13), 
('Angemon', '2005-06-12', 1, true, -45), 
('Boarmon', '2005-06-07', 7, true, 20.4), 
('Blossom', '1998-10-13', 3, true, 17), 
( 'Ditto', '2022-05-14', 4, true, 22);

INSERT INTO OWNERS (FULL_NAME, AGE) VALUES 
('Sam Smith', 34), 
('Jennifer Orwell', 19), 
('Bob', 45), 
('Melody Pond', 77), 
('Dean Winchester', 14), 
('Jodie Whittaker', 38);

INSERT INTO SPECIES (NAME) VALUES ('Pokemon'), ('Digimon');

UPDATE ANIMALS SET SPECIES_ID = 2 WHERE NAME LIKE '%mon';
UPDATE ANIMALS SET SPECIES_ID = 1 WHERE SPECIES_ID IS NULL;

UPDATE ANIMALS SET OWNER_ID = 1 WHERE NAME = 'Agumon';
UPDATE ANIMALS SET OWNER_ID = 2 WHERE NAME = 'Gabumon' OR NAME = 'Pikachu'; 
UPDATE ANIMALS SET OWNER_ID = 3 WHERE NAME = 'Devimon' OR NAME = 'Plantmon';
UPDATE ANIMALS SET OWNER_ID = 4 WHERE NAME = 'Charmander' OR NAME = 'Squirtle' OR NAME = 'Blossom';
UPDATE ANIMALS SET OWNER_ID = 5 WHERE NAME = 'Angemon' OR NAME = 'Boarmon';