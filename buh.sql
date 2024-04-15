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
	ryhmid char(12));

SELECT * FROM opilane;
--andmete lisamine
INSERT INTO opilane(
eesnimi, perenimi, isikukood, aadress, sisseastumiskp)
VALUES
('Ivan', 'Edu', '6784', 'Tallinn', '2023-08-16'),
('Artem', 'Mihhalkenkov', '375718957', 'Boloto', '2023-08-04'),
('Edu', 'Sulle', '234', 'Tartu', '2023-08-16');
SELECT * FROM opilane;

CREATE TABLE Language(
	ID int NOT NULL PRIMARY KEY,
	Code char(3) NOT NULL,
	Language varchar(50) NOT NULL,
	IsOfficial bit,
	Percentage decimal(5,2));

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

--tabeli kustutamine
DROP TABLE language;
--tabeli rühm loomine
CREATE TABLE ryhm(
	ryhmId int Primary key identity(1,1),
	ryhmNimetus varchar(20) UNIQUE,
	osakond char(3));

Select * from ryhm;
SELECT * FROM opilane;

INSERT INTO ryhm (ryhmNimetus,osakond,juhatajaID)
VALUES ('TARpv23','IT',2);


--FOREIGN KEY --> PK teises tabelis
ALTER TABLE opilane ADD ryhmID int;

--tabeli opilane uuendamine
Update opilane SET ryhmId=2;

--Fk lisamine opilane tabelisse
ALTER TABLE opilane
ADD FOREIGN KEY (ryhmID) REFERENCES ryhm(ryhmID);

INSERT INTO opilane(
eesnimi, perenimi, isikukood, aadress, sisseastumiskp, ryhmId)
VALUES
('Test','Test','5855301','Tallinn','2023-08-26',1);
SELECT * FROM opilane;

--Drop table nazvanie, Alter table.... drop column....
--telefon varchar(15)
--tabeli ryhmajuhataja loomine
CREATE TABLE ryhmajuhataja(
	juhatajaId int Primary key identity (1,1),
	eesnimi varchar(20),
	perenimi varchar(20),
	telefon varchar(20));
SELECT * FROM ryhmajuhataja;

INSERT INTO ryhmajuhataja(eesnimi, perenimi, telefon)
VALUES ('arch','sir','56171819');
SELECT * FROM ryhmajuhataja;

--veergu lisamine tabelisse
ALTER TABLE ryhm add juhatajaID int;
--tabeli ryhm uuendamine
Update ryhm SET juhatajaID=1;

ALTER TABLE ryhm
ADD FOREIGN KEY (juhatajaID) REFERENCES ryhmajuhataja(juhatajaID);

INSERT INTO ryhm (ryhmNimetus,osakond,juhatajaID)
VALUES ('LOGITpv22','IT',1);

--tabeli hinnad loomine
CREATE TABLE hinnad(
	hinnangID int Primary key identity (1,1),
	kuupaeb date,
	id int,
	juhatajaID int,
	hinnang text);

SELECT * FROM hinnad

INSERT INTO hinnad(kuupaev,id,juhatajaID,hinnang)
VALUES('2024-02-21',1,1,'4');

ALTER TABLE hinnad
ADD FOREIGN KEY (id) REFERENCES opilane(id);

ALTER TABLE hinnad
ADD FOREIGN KEY (juhatajaid) REFERENCES ryhmajuhataja(juhatajaid);
