/*
* Joey Brennan
* \i 'C:/Users/Joey/Documents/Database/HW5/HW5.sql';
* drop table booking, customer, mail_address, flight, city, routes, countries;
*/
CREATE TABLE Mail_Address (
    my_key SERIAL PRIMARY KEY,
    street VARCHAR(30),
    city VARCHAR(30),
    state VARCHAR(30),
    postal_code INT
);

CREATE TABLE Countries (
    name VARCHAR(30),
    abrivation VARCHAR(10) PRIMARY KEY,
    area_code INT

);

CREATE TABLE City (
    name VARCHAR(20),
    origin_id INT UNIQUE,
    destination_id INT UNIQUE,
    state VARCHAR(30),
    country_abr VARCHAR(10),
    code INT UNIQUE,
    FOREIGN KEY (country_abr) REFERENCES Countries(abrivation),
    PRIMARY KEY (name, country_abr)
);

CREATE TABLE Booking (
    booking_number INT,
    city_code INT,
    book_date INT,
    PRIMARY KEY (booking_number),
    FOREIGN KEY (city_code) REFERENCES City(code)
);

CREATE TABLE Customer (
    first_name VARCHAR(30),
    last_name VARCHAR(40),
    mail_address INT,
    phone_number INT,
    email_address_1 VARCHAR(30) UNIQUE,
    FOREIGN KEY (mail_address) REFERENCES Mail_Address(my_key),
    PRIMARY KEY (first_name, last_name)
);

CREATE TABLE Flight (
    flight_origin INT,
    flight_destination INT,
    unique_flight_number INT,
    airline INT,
    air_time INT,
    booking_number INT,
    flight_number INT,
    date_origin date,
    time_origin time,
    date_destination date,
    time_destination time,
    customer_last_payment VARCHAR(30),
    customer_first_payment VARCHAR(30),
    customer_last_ticket VARCHAR(30),
    customer_first_ticket VARCHAR(30),
    FOREIGN KEY (booking_number) REFERENCES booking(booking_number),
    FOREIGN KEY (customer_last_payment, customer_first_payment) REFERENCES Customer(last_name, first_name),
    FOREIGN KEY (customer_last_ticket, customer_first_ticket) REFERENCES Customer(last_name, first_name),
    FOREIGN KEY (flight_origin) REFERENCES City(origin_id),
    FOREIGN KEY (flight_destination) REFERENCES City(destination_id),
    PRIMARY KEY (unique_flight_number)
);

CREATE TABLE Routes (
    origin INT,
    destination INT,
    airline INT,
    PRIMARY KEY (airline, origin, destination),
    FOREIGN KEY (origin) REFERENCES City(origin_id),
    FOREIGN KEY (destination) REFERENCES City(destination_id)
);
