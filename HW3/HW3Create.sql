/*
* Joey Brennan
*
* drop table aircrafts, airports, carrier, carrier_dates, city, distance, flight, regions, state;
*/

CREATE TABLE Regions (
    region_abr VARCHAR(5),
    region VARCHAR(20) PRIMARY KEY,
    UNIQUE (region_abr)
);

CREATE TABLE State (
    state_abv VARCHAR(5),
    fips INT,
    state_nm VARCHAR(20) PRIMARY KEY,
    destination_wac INT
);

CREATE TABLE City (
    city VARCHAR(40),
    origin_market_id INT,
    origin_wac INT,
    city_abr VARCHAR(10),
    PRIMARY KEY (city_abr)
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
    origin_airport_id INT,
    destination_airport_id INT,
    origin_airport_seq_id INT,
    city VARCHAR(40),
    destination_airport_seq_id INT,
    PRIMARY KEY (origin_airport_id, destination_airport_id),
    FOREIGN KEY (city) REFERENCES City(city_abr)
);

CREATE TABLE Carrier (
    carrier_name VARCHAR(80),
    unique_carrier_name VARCHAR(80),
    carrier VARCHAR(10),
    carrier_group INT,
    carreir_group_new INT,
    carrier_entity VARCHAR(10),
    PRIMARY KEY (carrier_entity)
);

CREATE TABLE Distance (
    origin_airport_id INT,
    destination_airport_id INT,
    destance INT,
    destance_group INT,
    PRIMARY KEY (origin_airport_id, destination_airport_id),
    FOREIGN KEY (origin_airport_id, destination_airport_id) REFERENCES Airports(origin_airport_id,destination_airport_id)
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
    FOREIGN KEY (origin_airport_id, destination_airport_id) REFERENCES Airports(origin_airport_id, destination_airport_id),
    FOREIGN KEY (carrier) REFERENCES Carrier(carrier_entity)
);
