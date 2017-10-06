/*
* Joey Brennan
* \i 'C:/Users/Joey/Documents/Database/Hw2/HW2.sql';
*/

CREATE TABLE Regions (
    region_abr VARCHAR(5),
    region VARCHAR(20) PRIMARY KEY,
    UNIQUE (region_abr)
);

CREATE TABLE State (
    state_abv VARCHAR(5),
    fips INT,
    state_nm VARCHAR(20) PRIMARY KEY
);

CREATE TABLE City (
    city_state VARCHAR(20) PRIMARY KEY,
    destination_market_id INT,
    destination_wac INT,
    origin_wac INT,
    city_abr VARCHAR(10),
    UNIQUE (city_abr)
);

CREATE TABLE Carrier_dates (
    carreir VARCHAR(10),
    region VARCHAR(20),
    start_date VARCHAR(20),
    FOREIGN KEY (region) REFERENCES Regions(region),
    PRIMARY KEY (region, carreir)
);

CREATE TABLE Aircrafts (
    aircraft_group INT,
    aircraft_type INT,
    aircraft_config INT,
    seats INT,
    paylaod INT,
    flight_id INT PRIMARY KEY
);

CREATE TABLE Airports (
    destination_airport_id INT,
    destination_airport_seq_id INT,
    origin_airport_id INT,
    origin_airport_seq_id INT,
    city_abr VARCHAR(10),
    departures_scheduled INT,
    departures_preformed INT,
    FOREIGN KEY (city_abr) REFERENCES City(city_abr),
    PRIMARY KEY (origin_airport_id, destination_airport_id)
);

CREATE TABLE Carrier (
    carrier_name VARCHAR(30),
    unique_carrier_name VARCHAR(30),
    carrier VARCHAR(10) PRIMARY KEY,
    region_abr VARCHAR(10),
    carrier_group INT,
    carreir_group_new INT,
    FOREIGN KEY (region_abr) REFERENCES Regions(region_abr)
);

CREATE TABLE Distance (
    origin_airport_id INT,
    destination_airport_id INT,
    destance INT,
    destance_group INT,
    PRIMARY KEY (origin_airport_id, destination_airport_id)
);

CREATE TABLE Flight (
    passangers INT,
    freight INT,
    mail INT,
    airline_id INT,
    year INT,
    month INT,
    class VARCHAR(10),
    ramp_to_ramp INT,
    air_time INT,
    origin_airport_id INT ,
    destination_airport_id INT,
    aircraft_type INT,
    carrier VARCHAR(10),
    flight_id INT PRIMARY KEY,
    FOREIGN KEY (origin_airport_id, destination_airport_id)
    REFERENCES Airports(origin_airport_id, destination_airport_id)
);
