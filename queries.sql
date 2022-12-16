/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name LIKE '%mon';

SELECT name from animals where date_of_birth BETWEEN'2016-08-11' AND '2019-05-10';

SELECT name from animals where neutered = true AND escape_attempts < 3;

SELECT date_of_birth from animals where name = 'Agumon' OR name = 'Pikachu';

SELECT name, escape_attempts from animals where weight_kg > 10.5;

SELECT * from animals WHERE neutered = true;

SELECT * from animals WHERE name != 'Gabumon';

SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;

-- day 2

BEGIN;
UPDATE animals SET species = 'unspecified';
SELECT species from animals;
ROLLBACK;
SELECT species from animals;

BEGIN;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
SELECT species from animals;
COMMIT;
SELECT species from animals;

BEGIN;
DELETE FROM animals;
ROLLBACK;
SELECT * FROM animals;

BEGIN;
DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SAVEPOINT svp1;
UPDATE animals SET weight_kg = weight_kg * -1;
ROLLBACK TO SAVEPOINT svp1;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
COMMIT;

SELECT COUNT(*) FROM animals;
SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT neutered, MAX(escape_attempts) FROM animals GROUP BY neutered;
SELECT MAX(weight_kg), MIN(weight_kg) FROM animals GROUP BY species;
SELECT species, AVG(escape_attempts) FROM animals GROUP BY species
WHERE date_of_birth BETWEEN '01-01-1990' AND '01-01-2000';

