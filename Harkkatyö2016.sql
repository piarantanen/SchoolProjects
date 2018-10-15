Tietokantojen perusteet 2016
Harjoitustyö
Pia Rantanen
pr82355@student.uta.fi
82355

// Taulujen luonti, syötteet ja taulut:

CREATE TABLE ryhmaliikuntatunti (
rtunnus INT NOT NULL,
tnimi VARCHAR NOT NULL,
kuvaus VARCHAR,
kesto INT,
vaikeustaso INT,
ktunnus INT NOT NULL,
PRIMARY KEY (rtunnus),
FOREIGN KEY (ktunnus) REFERENCES kategoria,
UNIQUE (tnimi) );

INSERT INTO ryhmaliikuntatunti VALUES (100, 'Muokkaus', 'Muokataan lihaksia.', 45, 2, 10);
INSERT INTO ryhmaliikuntatunti VALUES (200, 'Joogan perusteet', 'Opetellaan joogaa.', 50, 1, 20);
INSERT INTO ryhmaliikuntatunti VALUES (201, 'Jooga 1', 'Opetellaan lis‰‰ joogaa.', 50, 2, 20);
INSERT INTO ryhmaliikuntatunti VALUES (202, 'Pilates 1', 'Opetellaan lis‰‰ pilatesta.', 60, 2, 20);
INSERT INTO ryhmaliikuntatunti VALUES (300, 'Spinning - alkeet', 'S‰‰det‰‰n ja poljetaan.', 60, 1, 30);
INSERT INTO ryhmaliikuntatunti VALUES (301, 'Spinning Pro', 'Tunnilla poljetaan raskaita m‰kiosuuksia ja tiukkoja spurtteja.', 80, 4, 30);

SELECT * FROM ryhmaliikuntatunti;

 rtunnus |       tnimi       |                             kuvaus                              | kesto | vaikeustaso | ktunnus
---------+-------------------+-----------------------------------------------------------------+-------+-------------+---------
     100 | Muokkaus          | Muokataan lihaksia.                                             |    45 |           2 |      10
     200 | Joogan perusteet  | Opetellaan joogaa.                                              |    50 |           1 |      20
     201 | Jooga 1           | Opetellaan lis‰‰ joogaa.                                        |    50 |           2 |      20
     202 | Pilates 1         | Opetellaan lis‰‰ pilatesta.                                     |    60 |           2 |      20
     300 | Spinning - alkeet | S‰‰det‰‰n ja poljetaan.                                         |    60 |           1 |      30
     301 | Spinning Pro      | Tunnilla poljetaan raskaita m‰kiosuuksia ja tiukkoja spurtteja. |    80 |           4 |      30
(6 rows)

CREATE TABLE kategoria ( 
ktunnus INT NOT NULL,
knimi VARCHAR NOT NULL,
PRIMARY KEY (ktunnus),
UNIQUE (knimi) );

INSERT INTO kategoria VALUES (10, 'Lihaskunto');
INSERT INTO kategoria VALUES (20, 'Kehonhuolto');
INSERT INTO kategoria VALUES (30, 'Spinning');


SELECT * FROM kategoria;

 ktunnus |    knimi
---------+-------------
      10 | Lihaskunto
      20 | Kehonhuolto
      30 | Spinning
(3 rows)


CREATE TABLE voi_ohjata (
ltunnus INT NOT NULL,
rtunnus INT NOT NULL,
FOREIGN KEY (ltunnus) REFERENCES liikuntaohjaaja,
FOREIGN KEY (rtunnus) REFERENCES ryhmaliikuntatunti );

INSERT INTO voi_ohjata VALUES (1, 201);
INSERT INTO voi_ohjata VALUES (1, 300);
INSERT INTO voi_ohjata VALUES (1, 301);
INSERT INTO voi_ohjata VALUES (2, 200);
INSERT INTO voi_ohjata VALUES (2, 201);
INSERT INTO voi_ohjata VALUES (2, 202);
INSERT INTO voi_ohjata VALUES (3, 300);
INSERT INTO voi_ohjata VALUES (3, 301);

SELECT * FROM voi_ohjata;

 ltunnus | rtunnus
---------+---------
       1 |     201
       1 |     300
       1 |     301
       2 |     200
       2 |     201
       2 |     202
       3 |     300
       3 |     301
(8 rows)

CREATE TABLE liikuntaohjaaja (
ltunnus INT NOT NULL,
lnimi VARCHAR NOT NULL,
syntaika DATE,
PRIMARY KEY (ltunnus) );

INSERT INTO liikuntaohjaaja VALUES (1, 'Elisa Markkanen', '1986-01-21');
INSERT INTO liikuntaohjaaja VALUES (2, 'Eero Ilonen', '1988-03-14');
INSERT INTO liikuntaohjaaja VALUES (3, 'Mikko Kontinen', '1977-11-01');

SELECT * FROM liikuntaohjaaja;

 ltunnus |      lnimi      |  syntaika
---------+-----------------+------------
       1 | Elisa Markkanen | 1986-01-21
       2 | Eero Ilonen     | 1988-03-14
       3 | Mikko Kontinen  | 1977-11-01
(3 rows)

CREATE TABLE tunti (
rtunnus INT NOT NULL,
viikonpva VARCHAR,
alkamisaika TIME,
paatosaika TIME,
stunnus INT NOT NULL,
ltunnus INT NOT NULL,
maxosallistujat INT,
PRIMARY KEY (rtunnus, viikonpva, alkamisaika),
FOREIGN KEY (rtunnus) REFERENCES ryhmaliikuntatunti,
FOREIGN KEY (stunnus) REFERENCES sali,
FOREIGN KEY (ltunnus) REFERENCES liikuntaohjaaja );

INSERT INTO tunti VALUES (201, 'ma', '08:10:00', '09:00:00', 1000, 1, 10);
INSERT INTO tunti VALUES (201, 'ma', '13:00:00', '13:50:00', 1000, 1, 15);
INSERT INTO tunti VALUES (201, 'ma', '20:10:00', '21:00:00', 3000, 1, 10);
INSERT INTO tunti VALUES (201, 'ti', '08:10:00', '09:00:00', 1000, 2, 15);
INSERT INTO tunti VALUES (202, 'ma', '8:00:00', '9:00:00', 1000, 2, 15);
INSERT INTO tunti VALUES (301, 'ma', '7:00:00', '8:20:00', 2000, 3, 20);
INSERT INTO tunti VALUES (300, 'ma', '10:45:00', '11:45:00', 2000, 3, 20);
INSERT INTO tunti VALUES (301, 'pe', '14:00:00', '15:20:00', 2000, 1, 20);

SELECT * FROM tunti;

 rtunnus | viikonpva | alkamisaika | paatosaika | stunnus | ltunnus | maxosallistujat
---------+-----------+-------------+------------+---------+---------+-----------------
     201 | ma        | 08:10:00    | 09:00:00   |    1000 |       1 |              10
     201 | ma        | 13:00:00    | 13:50:00   |    1000 |       1 |              15
     201 | ma        | 20:10:00    | 21:00:00   |    3000 |       1 |              10
     201 | ti        | 08:10:00    | 09:00:00   |    1000 |       2 |              15
     202 | ma        | 08:00:00    | 09:00:00   |    1000 |       2 |              15
     301 | ma        | 07:00:00    | 08:20:00   |    2000 |       3 |              20
     300 | ma        | 10:45:00    | 11:45:00   |    2000 |       3 |              20
     301 | pe        | 14:00:00    | 15:20:00   |    2000 |       1 |              20
(8 rows)

CREATE TABLE sali (
stunnus INT NOT NULL,
snimi VARCHAR NOT NULL,
paikkalkm INT,
PRIMARY KEY (stunnus),
UNIQUE (snimi) );

INSERT INTO sali VALUES (1000,'Sali 1', 25);
INSERT INTO sali VALUES (2000, 'Spinning-sali', 20);
INSERT INTO sali VALUES (3000, 'Sali 3', 20);

SELECT * FROM sali;

 stunnus |     snimi     | paikkalkm
---------+---------------+-----------
    2000 | Spinning-sali |        20
    3000 | Sali 3        |        20
    1000 | Sali 1        |        25
(3 rows)