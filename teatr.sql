CREATE DATABASE TeatrSirjajev;
Use TeatrSirjajev;

--create table filmtype
CREATE TABLE filmType(
	filmTypeID int Primary key identity (1,1),
	filmType varchar(25),
	kirjeldus TEXT);
select * from filmType;

--INSERT INTO filmType (filmType, kirjeldus)
--VALUES ('Sipsik', 'vaike sinine poiss');

CREATE TABLE zanr(
	zanrID int Primary key identity (1,1),
	zanrNimi varchar(25),
	zanrKirjeldus TEXT);
SELECT * FROM  zanr;

CREATE TABLE rezisor(
	rezisorID int Primary key identity (1,1),
	eesnimi varchar(25),
	perenimi varchar(25));
SELECT * FROM rezisor;

CREATE TABLE film(
	filmID int Primary key identity (1,1),
	filmNimetus varchar(25),
	zanrID int,
	pikkus int,
	rezisorID int,
	filmTypeID int,
	reklaam image);
SELECT * FROM  film;
--FK film to filmtype
ALTER TABLE film ADD FOREIGN KEY (filmTypeID)
REFERENCES filmType(filmTypeID);

CREATE TABLE kinokava(
	kinokavaID int Primary key identity (1,1),
	kuukell datetime,
	filmNimetus int,
	piletihind int);
SELECT * FROM  kinokava;

CREATE TABLE piletiMyyk(
	piletimyykID int Primary key identity (1,1),
	kogus int,
	kinokavaID int);
SELECT * FROM  piletiMyyk;