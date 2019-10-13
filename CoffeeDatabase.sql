DROP TABLE IF EXISTS coffee_production CASCADE;
DROP TABLE IF EXISTS starbucks_locations CASCADE;
DROP TABLE IF EXISTS conversion_table CASCADE;

CREATE TABLE coffee_production (
country VARCHAR,
year VARCHAR,
totalproduction FLOAT,
exportableproduction FLOAT
);

CREATE TABLE starbucks_locations (
store VARCHAR,
city VARCHAR,
stateprovince VARCHAR,
country VARCHAR
);

CREATE TABLE conversion_table (
country VARCHAR,
alpha2 VARCHAR
);

SELECT coffee_production.country, coffee_production.year, coffee_production.totalproduction, coffee_production.exportableproduction, starbucks_locations.store, starbucks_locations.city
FROM coffee_production
JOIN conversion_table
	ON coffee_production.country = conversion_table.country
JOIN  starbucks_locations 
	ON conversion_table.alpha2 = starbucks_locations.country;

