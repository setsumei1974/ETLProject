DROP TABLE IF EXISTS license_premise CASCADE;
DROP TABLE IF EXISTS license_count CASCADE;

CREATE TABLE license_premise (
id INT PRIMARY KEY,
Premises_Name TEXT,
County_ID_Code INT
);

CREATE TABLE license_count (
id INT PRIMARY KEY,
County_Name_Licensee TEXT,
License_Count INT,
County_ID_Code INT
);


-- Joins tables
SELECT license_premise.id, license_premise.Premises_name, license_premise.County_ID_Code, license_count.id, license_count.County_Name_Licensee, license_count.License_Count, license_count.County_ID_Code
FROM license_premise
JOIN license_count
ON license_premise.County_ID_Code = license_count.County_ID_Code;
