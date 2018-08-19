SET TERMINATOR @
-- Stored procedures

--By setting the SCHEMA as FILM there's no need to refer to the SCHEME on each table creation
SET SCHEMA = MOVIEINDEX;

CREATE or REPLACE PROCEDURE REVENUE ( IN MOVIENAME VARCHAR(50), OUT TOTALREVENUE FLOAT)
LANGUAGE SQL
P3:BEGIN
    DECLARE cursor1 CURSOR FOR SELECT SUM(INCOME - COST) AS MOVIEREVENUE FROM MOVIE WHERE MOVIE.NAME = MOVIENAME;
    OPEN cursor1;
        FETCH FROM cursor1 INTO TOTALREVENUE;
    CLOSE cursor1;
END P3
@