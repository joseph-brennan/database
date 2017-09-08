/*
* Joey Brennan
* \i 'C:/Users/Joey/Documents/Database/Hw2/HW2.sql';
*/
-- #2 create countries table
CREATE TABLE Countries (
    name VARCHAR(20) PRIMARY KEY,
    latitude INT,
    longitude INT,
    area INT,
    population INT,
    gdp INT,
    gdpYear INT
);
--4a create borders table
CREATE TABLE Borders (
    id SERIAL PRIMARY KEY,
    name VARCHAR(20) references Countries(name),
    neighbor VARCHAR(20) references Countries(name));

--populate both countries and borders table
INSERT INTO Countries (
    name, latitude, longitude, area, population, gdp, gdpYear)
Values(
    'Germany', 5100, 900, 357022, 80594017, 349500, 2016);

INSERT INTO Countries (
    name, latitude, longitude, area, population, gdp, gdpYear)
Values (
    'Netherlands', 5230, 545, 41543, 17084719, 773, 2016);

INSERT INTO Countries (
    name, latitude, longitude, area, population, gdp, gdpYear)
Values (
    'Belgium', 5050, 400, 30528, 11491346, 470, 2016);

INSERT INTO Countries (
    name, latitude, longitude, area, population, gdp, gdpYear)
Values (
    'Luxemburg', 4945, 610, 2586, 594130, 60, 2016);

INSERT INTO Countries (
    name, latitude, longitude, area, population, gdp, gdpYear)
Values (
    'Poland', 5200, 2000, 312685, 38476269, 467, 2016);

INSERT INTO Countries (
    name, latitude, longitude, area, population, gdp, gdpYear)
Values (
    'Czech Republic', 4945, 1530, 78867, 10674723, 193, 2016);

INSERT INTO Countries (
    name, latitude, longitude, area, population, gdp, gdpYear)
Values (
    'Austria', 4720, 1320, 83871, 8754413, 387, 2016);

INSERT INTO Countries (
    name, latitude, longitude, area, population, gdp, gdpYear)
Values (
    'France', 4600, 200, 643801, 67106161, 248800 , 2016);

INSERT INTO Countries (
    name, latitude, longitude, area, population, gdp, gdpYear)
Values (
    'Switzerland', 4700, 800, 41277, 8236303, 662, 2016);

INSERT INTO Borders(name, neighbor)
Values (
    'Germany', 'Poland');

INSERT INTO Borders(name, neighbor)
Values (
    'Germany', 'Czech Republic');

INSERT INTO Borders(name, neighbor)
Values (
    'Germany', 'France');

INSERT INTO Borders(name, neighbor)
Values (
    'Germany', 'Austria');

INSERT INTO Borders(name, neighbor)
Values (
    'Germany', 'Belgium');

INSERT INTO Borders(name, neighbor)
Values (
    'Germany', 'Luxemburg');

INSERT INTO Borders(name, neighbor)
Values (
    'Germany', 'Netherlands');

INSERT INTO Borders(name, neighbor)
Values (
    'Netherlands', 'Belgium');

INSERT INTO Borders(name, neighbor)
Values (
    'Netherlands', 'Germany');

INSERT INTO Borders(name, neighbor)
Values (
    'Luxemburg', 'France');

INSERT INTO Borders(name, neighbor)
Values (
    'Luxemburg', 'Germany');

INSERT INTO Borders(name, neighbor)
Values (
    'Luxemburg', 'Belgium');

INSERT INTO Borders(name, neighbor)
Values (
    'Poland', 'Czech Republic');

INSERT INTO Borders(name, neighbor)
Values (
    'Poland', 'Germany');

INSERT INTO Borders(name, neighbor)
Values (
    'Czech Republic', 'Germany');

INSERT INTO Borders(name, neighbor)
Values (
    'Czech Republic', 'Poland');

INSERT INTO Borders(name, neighbor)
Values (
    'Czech Republic', 'Austria');

INSERT INTO Borders(name, neighbor)
Values (
    'Austria', 'Czech Republic');

INSERT INTO Borders(name, neighbor)
Values (
    'France', 'Switzerland');

INSERT INTO Borders(name, neighbor)
Values (
    'France', 'Germany');

INSERT INTO Borders(name, neighbor)
Values (
    'France', 'Belgium');

INSERT INTO Borders(name, neighbor)
Values (
    'Switzerland', 'Austria');

INSERT INTO Borders(name, neighbor)
Values (
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
