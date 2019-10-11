DROP TABLE IF EXISTS coffee_production CASCADE;
DROP TABLE IF EXISTS starbucks_locations CASCADE;
DROP TABLE IF EXISTS conversion_table CASCADE;

CREATE TABLE coffee_production (
id INT PRIMARY KEY,
Country VARCHAR,
Year VARCHAR,
Total_Production FLOAT,
Exportable_Production FLOAT
);

CREATE TABLE starbucks_locations (
id INT PRIMARY KEY,
Store VARCHAR,
City VARCHAR,
State_Province VARCHAR,
Country VARCHAR
);

CREATE TABLE conversion_table (
id INT PRIMARY KEY,
Country VARCHAR,
Alpha2 VARCHAR
);

SELECT coffee_production.Country, coffee_production.Year, coffee_production.Total_Production, coffee_production.Exportable_Production, starbucks_locations.Store, starbucks_locations.City 
FROM coffee_production
JOIN conversion_table
	ON coffee_production.Country = conversion_table.Country
JOIN  starbucks_locations 
	ON conversion_table.Alpha2 = starbucks_locations.Country;

