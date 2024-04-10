-- commands
-- https://meet.google.com/hbg-ctqd-dju

--loomine
CREATE DATABASE ArchieLOGITpv22;

USE ArchieLOGITpv22;
--tabeli loomine
CREATE TABLE opilane(
id int Primary Key identity(1,1),
eesnimi varchar(20),
perenimi varchar(25) not null,
isikukood char(11) unique,
aadress TEXT,
sisseastumiskp date,
ryhmid char(12)
);

SELECT * FROM opilane;
--andmete lisamine
INSERT INTO opilane(
eesnimi, perenimi, isikukood, aadress, sisseastumiskp)
VALUES
('Ivan', 'Edu', '6784', 'Tallinn', '2023-08-16'),
('Artem', 'Mihhalkenkov', '375718957', 'Boloto', '2023-08-04'),
('Edu', 'Sulle', '234', 'Tartu', '2023-08-16');
SELECT * FROM opilane;

CREATE TABLE Language
(
ID int NOT NULL PRIMARY KEY,
Code char(3) NOT NULL,
Language varchar(50) NOT NULL,
IsOfficial bit,
Percentage decimal(5,2)
);

--tabeli andmete lisamine
SELECT * FROM Language;
INSERT INTO Language (ID, Code, Language, IsOfficial, Percentage)
VALUES (100, 'EST', 'Eesti', 1, 90.5)

--Tabeli struktuuri muutmine
ALTER TABLE Language ADD Capital varchar(20); 
--veergu kustutamine
--ALTER TABLE Language DROP COLUMN Capital;

INSERT INTO Language (ID, Code, Language, IsOfficial, Percentage, Capital)
VALUES (1076, 'FIN', 'Soome', 1, 95.5, 'Helsinki');

--uuendamine
UPDATE Language SET Capital='Tallinn'
WHERE ID=100
SELECT * FROM Language;

CREATE TABLE ryhm(
ryhmid int Primary Key identity(1,1),
ryhmnimetus varchar(25) not null,
emakond varchar(11)
);

CREATE TABLE ryhmajuhataja(
juhatajaid int Primary Key identity(1,1),
eesnimi varchar(25) not null,
perenimi varchar(11),
telefon char(12),
);