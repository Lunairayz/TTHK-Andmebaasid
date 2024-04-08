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