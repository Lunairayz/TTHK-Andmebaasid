CREATE DATABASE sirjajevprocedure;
USE sirjajevprocedure;

CREATE TABLE film(
filmID int PRIMARY KEY identity(1,1),
filmNimetus varchar(50),
kestvus int,
rezisoor varchar(50),
v_aasta int);
SELECT * FROM film;
--mockaroo.com

insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Son''s Room, The', 172, 'Kayley Flintoff', 2005);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('She Cried No', 242, 'Marnia Krelle', 2012);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Left Behind', 220, 'Jessica Bundock', 2010);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Death to Smoochy', 107, 'Harrietta Tordiffe', 2006);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('My Avatar and Me', 150, 'Abramo Foddy', 2006);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Caught', 238, 'Jordon Spears', 1994);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('The Divine Woman', 166, 'Farleigh Goulden', 2000);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Message to Love: The Isle of Wight Festival', 187, 'Farlie Hibbart', 2006);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Ricky Rapper and the Bicycle Thief', 128, 'Cami Erat', 1980);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('The Butterfly Effect 3: Revelations', 173, 'Barbara-anne Cecchi', 1994);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Filly Brown', 294, 'Robbyn Tuxill', 2004);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Terror on a Train', 181, 'Diarmid Maleham', 1987);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Rat', 253, 'Sheffy Gilvear', 2010);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('It''s Me, It''s Me', 285, 'Wendye Saulter', 2012);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Lola', 210, 'Randolf Ethelstone', 1995);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('112 Weddings', 277, 'Elke Pritty', 1984);