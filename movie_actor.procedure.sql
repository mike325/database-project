-- --#SET TERMINATOR @
-- Stored procedures

--By setting the SCHEMA as FILM there's no need to refer to the SCHEME on each table creation
SET SCHEMA = MOVIEINDEX;

CREATE or REPLACE PROCEDURE MOVIE_ACTOR ( IN MOVIENAME VARCHAR(50), IN ACTORNAME VARCHAR(50) )
LANGUAGE SQL
P1:BEGIN
    DECLARE ACTOR_ID int;
    DECLARE MOVIE_ID int;

    DECLARE cursor1 CURSOR FOR SELECT ID FROM MOVIE WHERE MOVIENAME = MOVIE.NAME;
    DECLARE cursor2 CURSOR FOR SELECT ID FROM ACTOR WHERE ACTORNAME = ACTOR.NAME;
    OPEN cursor1;
        FETCH FROM cursor1 INTO ACTOR_ID;
    CLOSE cursor1;
    OPEN cursor2;
        FETCH FROM cursor2 INTO MOVIE_ID;
    CLOSE cursor2;

    INSERT INTO ACTOR_MOVIE (ACTORID, MOVIEID) VALUES (ACTOR_ID, MOVIE_ID);
END P1
@
