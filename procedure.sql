CREATE TABLE film(
filmID int PRIMARY KEY identity(1,1),
filmNimetus varchar(50),
kestvus int,
rezisoor varchar(50),
v_aasta int);


CREATE PROCEDURE `otsing1taht`(IN `taht` CHAR(1)) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER BEGIN

  SELECT * FROM film
    WHERE filmnimetus LIKE CONCAT(taht,'%');
end;

CALL PROCEDURE otsing1taht ('C');
