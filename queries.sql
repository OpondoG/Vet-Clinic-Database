/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name LIKE '%mon';

SELECT name from animals where date_of_birth BETWEEN'2016-08-11' AND '2019-05-10';

SELECT name from animals where neutered = true AND escape_attempts < 3;

SELECT date_of_birth from animals where name = 'Agumon' OR name = 'Pikachu';

SELECT name, escape_attempts from animals where weight_kg > 10.5;

SELECT * from animals WHERE neutered = true;

SELECT * from animals WHERE name != 'Gabumon';

SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;

