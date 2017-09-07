/*
* Joey Brennan
*
*/
\o "C:\Users\Joey\Documents\Database\Hw2\HW2.out";

CREATE TABLE Countries (
    name VARCHAR(20) PRIMARY KEY,
    latitude INT,
    longitude INT,
    area INT,
    population INT,
    gdp INT,
    gdpYear INT
);

CREATE TABLE Borders (
    id SERIAL PRIMARY KEY,
    name VARCHAR(20) references Countries(name),
    neighbor VARCHAR(20) references Countries(name));

INSERT INTO Countries (
    name, latitude, longitude, area, population, gdp, gdpYear)
Values(
    'Germany', 5100, 900, 357022, 80594017, 349500, 397900);

INSERT INTO Countries (
    name, latitude, longitude, area, population, gdp, gdpYear)
Values (
    'Netherlands', 5230, 545, 41543, 17084719, 773, 870);

INSERT INTO Countries (
    name, latitude, longitude, area, population, gdp, gdpYear)
Values (
    'Belgium', 5050, 400, 30528, 11491346, 470, 508);

INSERT INTO Countries (
    name, latitude, longitude, area, population, gdp, gdpYear)
Values (
    'Luxemburg', 4945, 610, 2586, 594130, 60, 58);

INSERT INTO Countries (
    name, latitude, longitude, area, population, gdp, gdpYear)
Values (
    'Poland', 5200, 2000, 312685, 38476269, 467, 105200);

INSERT INTO Countries (
    name, latitude, longitude, area, population, gdp, gdpYear)
Values (
    'Czech Republic', 4945, 1530, 78867, 10674723, 193, 351);

INSERT INTO Countries (
    name, latitude, longitude, area, population, gdp, gdpYear)
Values (
    'Austria', 4720, 1320, 83871, 8754413, 387, 416);

INSERT INTO Countries (
    name, latitude, longitude, area, population, gdp, gdpYear)
Values (
    'France', 4600, 200, 643801, 67106161, 248800 , 269900 );

INSERT INTO Countries (
    name, latitude, longitude, area, population, gdp, gdpYear)
Values (
    'Switzerland', 4700, 800, 41277, 8236303, 662, 496);

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
    'Luxemburg', 'France');

INSERT INTO Borders(name, neighbor)
Values (
    'Luxemburg', 'Belgium');

INSERT INTO Borders(name, neighbor)
Values (
    'Poland', 'Czech Republic');

INSERT INTO Borders(name, neighbor)
Values (
    'Austria', 'Czech Republic');

INSERT INTO Borders(name, neighbor)
Values (
    'France', 'Switzerland');

INSERT INTO Borders(name, neighbor)
Values (
    'France', 'Belgium');

INSERT INTO Borders(name, neighbor)
Values (
    'Switzerland', 'Austria');
