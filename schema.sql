/* Database schema to keep the structure of entire database. */

CREATE TABLE animals(
  id INT GENERATED ALWAYS AS IDENTITY,
  name varchar(20),
  date_of_birth date NOT NULL,
  escape_attempts integer NOT NULL,
  neutered boolean NOT NULL,
  weight_kg decimal NOT NULL,
  PRIMARY KEY(id)

);

-- Day2

ALTER TABLE animals ADD species varchar(255);

-- Day3

CREATE TABLE owners(
	id INT GENERATED ALWAYS AS IDENTITY,
	full_name VARCHAR(100) NOT NULL,
	age integer,
  PRIMARY KEY(id)
);

CREATE TABLE species (
    id INT GENERATED ALWAYS AS IDENTITY,
    name varchar(400),
    PRIMARY KEY(id)
);

ALTER TABLE animals DROP COLUMN species;

ALTER TABLE animals ADD species_id integer, ADD FOREIGN KEY (species_id) REFERENCES species(id);

ALTER TABLE animals ADD owner_id integer, ADD FOREIGN KEY (owner_id) REFERENCES owners(id);