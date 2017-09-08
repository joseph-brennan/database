/*
* Joey Brennan
* \i 'C:/Users/Joey/Documents/Database/Hw2/HW2.sql';
*/
-- #2 create countries table
CREATE TABLE Countries (
    name VARCHAR(20) PRIMARY KEY,
    latitude VARCHAR(8),
    longitude VARCHAR(8),
    area INT,
    population INT,
    gdp_billion REAL,
    gdpYear INT
);
--4a create borders table
CREATE TABLE Borders (
    name VARCHAR(20) references Countries(name),
    neighbor VARCHAR(20) references Countries(name));

--populate both countries and borders table
INSERT INTO Countries Values(
    'Germany', '51 00 N', '9 00 E', 357022, 80594017, 3395., 2016);

INSERT INTO Countries Values (
    'Netherlands', '52 30 N', '5 45 E', 41543, 17084719, 773.9, 2016);

INSERT INTO Countries Values (
    'Belgium', '50 50 N', '4 00 E', 30528, 11491346, 470.2, 2016);

INSERT INTO Countries Values (
    'Luxemburg', '49 45 N', '6 10 E', 2586, 594130, 60.98, 2016);

INSERT INTO Countries Values (
    'Poland', '52 00 N', '20 00 E', 312685, 38476269, 467.4, 2016);

INSERT INTO Countries Values (
    'Czech Republic', '49 45 N', '15 30 E', 78867, 10674723, 193.5, 2016);

INSERT INTO Countries Values (
    'Austria', '47 20 N', '13 20 E', 83871, 8754413, 387.3, 2016);

INSERT INTO Countries Values (
    'France', '46 00 N', '2 00 E', 643801, 67106161, 2488. , 2016);

INSERT INTO Countries Values (
    'Switzerland', '47 00 N', '8 00 E', 41277, 8236303, 662.5, 2016);

INSERT INTO Borders Values ('Germany', 'Poland');
INSERT INTO Borders Values ('Germany', 'Czech Republic');
INSERT INTO Borders Values ('Germany', 'France');
INSERT INTO Borders Values ('Germany', 'Austria');
INSERT INTO Borders Values ('Germany', 'Belgium');
INSERT INTO Borders Values ('Germany', 'Luxemburg');
INSERT INTO Borders Values ('Germany', 'Netherlands');

INSERT INTO Borders Values ('Netherlands', 'Belgium');
INSERT INTO Borders Values ('Netherlands', 'Germany');

INSERT INTO Borders Values ('Belgium', 'Germany');
INSERT INTO Borders Values ('Belgium', 'Luxemburg');
INSERT INTO Borders Values ('Belgium', 'France');

INSERT INTO Borders Values ('Luxemburg', 'France');
INSERT INTO Borders Values ('Luxemburg', 'Germany');
INSERT INTO Borders Values ('Luxemburg', 'Belgium');

INSERT INTO Borders Values ('Poland', 'Czech Republic');
INSERT INTO Borders Values ('Poland', 'Germany');

INSERT INTO Borders Values ('Czech Republic', 'Germany');
INSERT INTO Borders Values ('Czech Republic', 'Poland');
INSERT INTO Borders Values ('Czech Republic', 'Austria');

INSERT INTO Borders Values ('Austria', 'Czech Republic');
INSERT INTO Borders values ('Austria', 'Germany');

INSERT INTO Borders Values ('France', 'Switzerland');
INSERT INTO Borders Values ('France', 'Germany');
INSERT INTO Borders Values ('France', 'Belgium');

INSERT INTO Borders Values ('Switzerland', 'Austria');
INSERT INTO Borders Values ('Switzerland', 'France');

\o 'C:/Users/Joey/Documents/Database/Hw2/HW2.out';

--4c. Use query to display all countries that border Germany
select neighbor from borders where name = 'Germany';

--4d. Use query to display all countries that have a population
--    greater than 100 million
select name from Countries where population > 100000000;

--4e. Use query to display all countries that a have a population
--    greater than 100 million AND border Germany
select neighbor from borders
INNER JOIN Countries C ON C.name = neighbor
WHERE borders.name = 'Germany' AND C.population > 100000000;
\o
