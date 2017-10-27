/*
* Joey Brennan
* \i 'C:/Users/Joey/Documents/Database/HW5/HW5.sql';
* drop table booking, customer, mail_address;
*/
CREATE TABLE Mail_Address (
    my_key SERIAL PRIMARY KEY,
    street VARCHAR(30),
    city VARCHAR(30),
    state VARCHAR(30),
    postal_code INT
);

CREATE TABLE booking (
    booking_number INT,
    city_code INT,
    book_date INT,
    PRIMARY KEY (booking_number)
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

CREATE TABLE flight (
    flight_origin INT,
    flight_destination INT,
    unique_flight_number INT,
    airline INT,
    air_time INT,
    booking_number INT,
    flight_number INT,
    date_time_origin INT,
    date_time_destination INT,
    customer_last_payment VARCHAR(30),
    customer_first_payment VARCHAR(30),
    customer_last_ticket VARCHAR(30),
    customer_first_ticket VARCHAR(30),
    FOREIGN KEY (booking_number) REFERENCES booking(booking_number),
    FOREIGN KEY (customer_last_payment, customer_first_payment) REFERENCES Customer(last_name, first_name),
    FOREIGN KEY (customer_last_ticket, customer_first_ticket) REFERENCES Customer(last_name, first_name),
    PRIMARY KEY (unique_flight_number)
);
