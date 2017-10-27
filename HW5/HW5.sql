/*
* Joey Brennan
*
*
*/

CREATE TABLE Customer (
    first_name VARCHAR(30),
    last_name VARCHAR(40),
    mail_address VARCHAR(50),
    phone_number VARCHAR(30),
    email_address VARCHAR(50),
    FOREIGN KEY mail_address REFERENCES mail_address(),
    FOREIGN KEY phone_number REFERENCES phone_number(),
    PRIMARY KEY
);

CREATE TABLE mail_address (
    street VARCHAR(30),
    city VARCHAR(30),
    state VARCHAR(30),
    postal_code INT,
    PRIMARY KEY
);

CREATE TABLE phone_number (
    country_code INT,
    city_area_code INT,
    local_number INT,
    PRIMARY KEY
);

CREATE TABLE flight (
    flight_origin INT,
    flight_destination INT,
    flight_number INT,
    airline INT,
    air_time INT,
    booking_number INT,
    
    FOREIGN KEY
    PRIMARY KEY
);
