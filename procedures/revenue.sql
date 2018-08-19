-- SET TERMINATOR @
-- Stored procedures

--By setting the SCHEMA as FILM there's no need to refer to the SCHEME on each table creation
--SET SCHEMA = MOVIEINDEX;

CREATE or REPLACE PROCEDURE MOVIEINDEX.REVENUE ( IN MOVIENAME VARCHAR(50), OUT TOTAL FLOAT )
LANGUAGE SQL
P1:BEGIN

    DECLARE cursor1 CURSOR FOR SELECT SUM(INCOME - COST) AS MOVIEREVENUE FROM MOVIEINDEX.MOVIE WHERE MOVIENAME = MOVIEINDEX.MOVIE.NAME;
    OPEN cursor1;
        FETCH FROM cursor1 INTO TOTAL;
    CLOSE cursor1;
END P1
@
