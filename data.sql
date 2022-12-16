/* Populate database with sample data. */

INSERT INTO animals(id, name, date_of_birth, escape_attempts, neutered, weight_kg)
                VALUES (1,'Agumon','2020-3-2', 0 , FALSE , 10.23),
                (2,'Gabumon','2018-11-2', 0, TRUE, 10.23),
                (3,'Pikachu','2021-1-7', 0, FALSE, 15.04),
                (4,'Devimon','2017-5-12', 0,  TRUE, 11.00),

-- DAY 2
INSERT INTO animals(id, name, date_of_birth, escape_attempts, neutered, weight_kg)
	VALUES 	(5,'Charmander', '2020-2-8', 0, FALSE ,-11),
			(6,'Plantmon', '2021-11-15', 2, TRUE ,-5.7),
			(7,'Squirtle', '1993-4-2', 3, FALSE ,-12.13),
			(8,'Angemon', '2005-6-12', 1, TRUE ,-45),
			(9,'Boarmon', '2005-6-7', 7, TRUE ,20.4),
			(10,'Blossom', '1998-10-13', 3, TRUE ,17),
			(11,'Ditto', '2022-5-14', 4, TRUE ,22);

 -- Day3

INSERT INTO owners (full_name, age)
	VALUES 	('Sam Smith', 34),
			('Jennifer Orwell', 19),
			('Bob ', 45),
			('Melody Pond', 77),
			('Dean Winchester', 14),
			('Jodie Whittaker', 38);

INSERT INTO species (name) 
	VALUES ('Pokemon'), ('Digimon');

UPDATE animals SET species_id = 2 WHERE name LIKE '%mon';	

UPDATE animals SET species_id = 1 WHERE name NOT LIKE '%mon';

UPDATE animals set owner_id = 1 WHERE name = 'Agumon';

UPDATE animals set owner_id = 2 WHERE name in ('Gabumon','Pikachu');

UPDATE animals set owner_id = 3 WHERE name in ('Devimon','Plantmon');

UPDATE animals set owner_id = 4 WHERE name in ('Charmander','Squirtle','Blossom');

UPDATE animals set owner_id = 5 WHERE name in ('Angemon','Boarmon');
       
--        Day 4

INSERT INTO vets(id,name, age, date_of_graduation)
	VALUES 	(1,'William Tatcher', 45, '2000-4-23'),
			(2,'Maisy Smith', 26, '2019-2-17'),
			(3,'Stephanie Mendez', 64, '1981-5-4'),
			(4,'Jack Harkness', 38, '2008-1-8');

INSERT INTO specializations (id,vet_id, species_id)
	VALUES 	(1,1,1),
			(2,3,1),
			(3,3,2),
			(4,4,2);

INSERT INTO visits(id,animal_id, vet_id, date_of_visit) 
VALUES	(1,1,1,'2020-05-24'),
			(2,1,3,'2020-07-22'),
			(3,2,4,'2021-02-02'),
			(4,3,2,'2020-01-05'),
			(5,3,2,'2020-03-08'),
			(6,3,2,'2020-05-14'),
			(7,4,3, '2021-05-04'),
			(8,5,4, '2021-02-24'),
			(9,6,2, '2019-12-21'),
			(10,6,1, '2020-08-10'),
			(11,6,2, '2021-04-07'),
			(12,7,3, '2019-09-29'),
			(13,8,4, '2020-08-03'),
			(14,8,4, '2020-11-04'),
			(15,9,2, '2019-01-24'),
			(16,9,2,'2019-05-15'),
			(17,9,2, '2020-02-27'),
			(18,9,2,'2020-08-03'),
			(19,10,3,'2020-05-24'),
			(20,10,1, '2021-01-11');