DROP TABLE IF EXISTS addresses;
CREATE TABLE addresses (
	address_id serial PRIMARY KEY,
    postcode VARCHAR,
    street VARCHAR
);
COPY addresses
FROM $str$/code/data/adresses.csv$str$ 
DELIMITER ',' CSV HEADER;

DROP TABLE IF EXISTS houses;
CREATE TABLE houses (
	house_id serial PRIMARY KEY,
    address_id INT,
    owner_id INT
);
COPY houses
FROM $str$/code/data/houses.csv$str$ 
DELIMITER ',' CSV HEADER;

DROP TABLE IF EXISTS people;
CREATE TABLE people (
	people_id serial PRIMARY KEY,
    house_id INT,
    address_id, INT,
    first_name VARCHAR,
    last_name VARCHAR,
    full_name VARCHAR,
    age INT,
    nb_people INT
);
COPY people
FROM $str$/code/data/people.csv$str$ 
DELIMITER ',' CSV HEADER;


