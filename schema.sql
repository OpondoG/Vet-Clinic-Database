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

-- Day4

CREATE TABLE vets (
    id integer PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    age integer NOT NULL,
    date_of_graduation date NOT NULL
);

CREATE TABLE specializations (
    id integer PRIMARY KEY,
    species_id integer NOT NULL,
    vet_id integer NOT NULL,
    FOREIGN KEY (species_id) REFERENCES species (id),
    FOREIGN KEY (vet_id) REFERENCES vets (id)
);

CREATE TABLE visits (
    id integer PRIMARY KEY,
    animal_id integer NOT NULL,
    vet_id integer NOT NULL,
    date_of_visit date NOT NULL,
    FOREIGN KEY (animal_id) REFERENCES animals (id),
    FOREIGN KEY (vet_id) REFERENCES vets (id)
);