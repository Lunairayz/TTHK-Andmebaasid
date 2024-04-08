SQL SERVER MANAGEMENT STUDIO
https://meet.google.com/hbg-ctqd-dju

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
sisseastumiskp date
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