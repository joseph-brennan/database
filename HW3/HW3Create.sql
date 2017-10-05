/*
* Joey Brennan
* \i 'C:/Users/Joey/Documents/Database/Hw2/HW2.sql';
*/

CREATE TABLE aircafts (
    aircraft_group INT,
    aircraft_type INT,
    aircraft_config INT,
    seats INT,
    paylaod INT,
    flight_id INT PRIMARY KEY
);

CREATE TABLE airports (
    destination_airport_id INT,
    destination_airport_seq_id INT,
    origin_airport_id INT,
    origin_airport_seq_id INT,
    city_abr VARCHAR(10),
    departures_scheduled INT,
    departures_preformed INT
);

CREATE TABLE carrier_dates (
    carreir VARCHAR(10),
    region VARCHAR(20),
    start_date VARCHAR(20)
);

CREATE TABLE carrier (
    carrier_name VARCHAR(30),
    unique_carrier_name VARCHAR(30),
    carrier VARCHAR(10),
    region_abr VARCHAR(10),
    carrier_group INT,
    carreir_group_new INT
);

CREATE TABLE city (
    city_state VARCHAR(20),
    destination_market_id INT,
    destination_wac INT,
    origin_wac INT
);

CREATE TABLE distance (
    origin_airport_id INT,
    destination_airport_id INT,
    destance INT,
    destance_group INT
);

CREATE TABLE flight (
    passangers INT,
    freight INT,
    mail INT,
    airline_id INT,
    year INT,
    month INT,
    class VARCHAR(10),
    ramp_to_ramp INT,
    air_time INT,
    origin_airport_id INT,
    destination_airport_id INT,
    aircraft_type INT,
    carrier VARCHAR(10),
    flight_id INT PRIMARY KEY
);

CREATE TABLE region (
    region_abr VARCHAR(5),
    region VARCHAR(20)
);

CREATE TABLE state (
    state_abv VARCHAR(5),
    fips INT,
    state_nm VARCHAR(20)
);
