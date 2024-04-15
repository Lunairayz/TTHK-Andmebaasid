CREATE DATABASE TeatrSirjajev;
Use TeatrSirjajev;

CREATE TABLE filmType(
	filmTypeID int Primary key identity (1,1),
	filmType varchar(25),
	kirjeldus TEXT);
select * from filmType;
INSERT INTO filmType (filmType, kirjeldus)
VALUES ('Sipsik', 'vaike sinine poiss');
