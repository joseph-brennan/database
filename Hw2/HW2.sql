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
    gdp REAL, --in Billions
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

INSERT INTO Borders(name, neighbor) Values (
    'Germany', 'Poland');

INSERT INTO Borders(name, neighbor) Values (
    'Germany', 'Czech Republic');

INSERT INTO Borders(name, neighbor) Values (
    'Germany', 'France');

INSERT INTO Borders(name, neighbor) Values (
    'Germany', 'Austria');

INSERT INTO Borders(name, neighbor) Values (
    'Germany', 'Belgium');

INSERT INTO Borders(name, neighbor) Values (
    'Germany', 'Luxemburg');

INSERT INTO Borders(name, neighbor) Values (
    'Germany', 'Netherlands');

INSERT INTO Borders(name, neighbor) Values (
    'Netherlands', 'Belgium');

INSERT INTO Borders(name, neighbor) Values (
    'Netherlands', 'Germany');

INSERT INTO Borders(name, neighbor) Values (
    'Luxemburg', 'France');

INSERT INTO Borders(name, neighbor) Values (
    'Luxemburg', 'Germany');

INSERT INTO Borders(name, neighbor) Values (
    'Luxemburg', 'Belgium');

INSERT INTO Borders(name, neighbor) Values (
    'Poland', 'Czech Republic');

INSERT INTO Borders(name, neighbor) Values (
    'Poland', 'Germany');

INSERT INTO Borders(name, neighbor) Values (
    'Czech Republic', 'Germany');

INSERT INTO Borders(name, neighbor) Values (
    'Czech Republic', 'Poland');

INSERT INTO Borders(name, neighbor) Values (
    'Czech Republic', 'Austria');

INSERT INTO Borders(name, neighbor) Values (
    'Austria', 'Czech Republic');

INSERT INTO Borders(name, neighbor) Values (
    'France', 'Switzerland');

INSERT INTO Borders(name, neighbor) Values (
    'France', 'Germany');

INSERT INTO Borders(name, neighbor) Values (
    'France', 'Belgium');

INSERT INTO Borders(name, neighbor) Values (
    'Switzerland', 'Austria');

INSERT INTO Borders(name, neighbor) Values (
    'Switzerland', 'France');

\o 'C:/Users/Joey/Documents/Database/Hw2/HW2.out';

--4c. Use query to display all countries that border Germany
select neighbor from borders where name = 'Germany';

--4d. Use query to display all countries that have a population
--    greater than 100 million
select name from Countries where population > 10000000;

--4e. Use query to display all countries that a have a population
--    greater than 100 million AND border Germany
select neighbor from borders
INNER JOIN Countries C ON C.name = neighbor
WHERE borders.name = 'Germany' AND C.population > 10000000;
\o
