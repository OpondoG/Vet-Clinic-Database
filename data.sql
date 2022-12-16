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
       