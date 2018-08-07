-- Create 5 views

CREATE VIEW COUNTRY_MOVIES (COUNTRY, MOVIENAME, RELEASE_DATE)
  AS SELECT COUNTRIES.NAME, MOVIE.NAME, RELEASE_DATE
  FROM MOVIE, COUNTRIES
  WHERE MOVE.COUNTRY = COUNTRIES.ID;

CREATE VIEW TOP_REVENUE_MOVIES (
    NAME,
    GENDER,
    DURATION,
    COST,
    REVENUE,
    RELEASE_DATE,
    CLASIFICATION,
    STUDIO,
    DIRECTOR
)
  AS SELECT
    MOVIE.NAME,
    GENDERS.NAME,
    MOVIE.DURATION,
    MOVIE.COST,
    MOVIE.REVENUE,
    MOVIE.RELEASE_DATE,
    CLASIFICATION.NAME,
    STUDIO.NAME,
    DIRECTOR.NAME
  FROM
    MOVIE,
    GENDER,
    STUDIO,
    DIRECTOR,
    CLASIICATION
  WHERE
    MOVE.GENDER = GENDER.ID AND
    MOVIE.CLASIFICATION = CLASIFICATION.ID AND
    MOVIE.DIRECTOR = DIRECTOR.ID AND
    MOVIE.STUDIO = STUDIO.ID AND;

CREATE VIEW COUNTRY_MOVIES (COUNTRY, MOVIENAME, RELEASE_DATE)
  AS SELECT COUNTRIES.NAME, MOVIE.NAME, RELEASE_DATE
  FROM MOVIE, COUNTRIES
  WHERE MOVE.COUNTRY = COUNTRIES.ID;

CREATE VIEW COUNTRY_MOVIES (COUNTRY, MOVIENAME, RELEASE_DATE)
  AS SELECT COUNTRIES.NAME, MOVIE.NAME, RELEASE_DATE
  FROM MOVIE, COUNTRIES
  WHERE MOVE.COUNTRY = COUNTRIES.ID;

CREATE VIEW COUNTRY_MOVIES (COUNTRY, MOVIENAME, RELEASE_DATE)
  AS SELECT COUNTRIES.NAME, MOVIE.NAME, RELEASE_DATE
  FROM MOVIE, COUNTRIES
  WHERE MOVE.COUNTRY = COUNTRIES.ID;
