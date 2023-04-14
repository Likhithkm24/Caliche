show databases;
CREATE DATABASE Chemical_KE;
use Chemical_KE;
show databases;
CREATE TABLE ph_value (
    id INT NOT NULL,
    concentration DECIMAL(5,2) NOT NULL,
    type VARCHAR(50) NOT NULL,
    ph_value DECIMAL(5,2) NOT NULL,
    PRIMARY KEY (ph_value)
);
-- Alter table ph_value add column Constant int ;
INSERT INTO ph_value (id,concentration, type, ph_value, pOH)
VALUES (05, 0.1, 'HCl', 5, 14 - ph_value);
      --  (02, 0.05, 'NaOH', 11.32, 14, Constant - ph_value),
--        (03, 0.01, 'H2SO4', 2.00, 14, Constant - ph_value);
desc ph_value;
DELETE FROM ph_value;
DELETE FROM ph_value where id = 1;

SELECT * FROM ph_value;
SELECT * FROM ph_value WHERE concentration = 0.1;
-- Alter table ph_value_table DROP PRIMARY KEY, ADD PRIMARY KEY(ph_value);

CREATE TABLE pOH_Table (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    hydroxide_concentration DECIMAL(5,2) NOT NULL,
    poh_value DECIMAL(5,2) NOT NULL,
    ph_value DECIMAL(5,2) NOT NULL,
    FOREIGN KEY (ph_value) REFERENCES ph_value(ph_value)
    
);


INSERT INTO pOH_Table (hydroxide_concentration, poh_value, ph_value)
VALUES (0.1, 1.00),
       (0.05, 1.30),
       (0.01, 2.00);
       
SELECT * FROM pOH_value WHERE hydroxide_concentration = 0.1;
SELECT * FROM pOH_value;

CREATE TABLE pKa_value (
    id INT NOT NULL AUTO_INCREMENT,
    acid_type VARCHAR(50) NOT NULL,
    acid_concentration DECIMAL(5,2) NOT NULL,
    dissociated_concentration DECIMAL(5,2) NOT NULL,
    pka_value DECIMAL(5,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO pKa_value (acid_type, acid_concentration, dissociated_concentration, pka_value)
VALUES ('Acetic acid', 0.1, 0.05, 4.75),
       ('Carbonic acid', 0.05, 0.03, 6.35),
       ('Phosphoric acid', 0.01, 0.003, 2.12);
       
SELECT * FROM pKa_value WHERE acid_type = 'Acetic acid';
SELECT * FROM pKa_value;


CREATE TABLE Humidity (
    id INT NOT NULL AUTO_INCREMENT,
    temperature DECIMAL(5,2) NOT NULL,
    absolute_humidity DECIMAL(5,2) NOT NULL,
    relative_humidity DECIMAL(5,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO Humidity (temperature, absolute_humidity, relative_humidity)
VALUES (25.0, 12.4, 47.6),
       (20.0, 8.2, 35.1),
       (30.0, 18.9, 63.7);
       
SELECT * FROM Humidity;       
SELECT * FROM Humidity WHERE temperature = 25.0;
