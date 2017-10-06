/*
* Joey Brennan
* \i 'C:/Users/Joey/Documents/Database/Hw2/HW2.sql';
*/

COPY normaized_aircrafts(
    aircraft_group,
    aircraft_type,
    aircraft_config,
    seats,
    payload,
    flight_id)
    FROM 'C:\Users\Joey\Documents\Database\HW3\normalized_aircrafts.csv'
    DELIMITER ',' CSV HEADER;

COPY normaized_City (
    city_state,
    destination_market_id,
    destination_wac,
    origin_wac,
    city_abr
    )
    FROM 'C:\Users\Joey\Documents\Database\HW3\normaized_city.csv'
    DELIMITER ',' CSV HEADER;

COPY normaized_airports (
    destination_airport_id,
    destination_airport_seq_id,
    origin_airport_id,
    origin_airport_seq_id,
    city_abr,
    departures_scheduled,
    departures_preformed
    )
    FROM 'C:\Users\Joey\Documents\Database\HW3\normaized_airprots.csv'
    DELIMITER ',' CSV HEADER;

COPY normaized_carrier_dates (
    Carrier,
    Region,
    Start_Date
    )
    FROM 'C:\Users\Joey\Documents\Database\HW3\normaized_carrier_dates.csv'
    DELIMITER ',' CSV HEADER;

COPY normaized_carrier (
    carrier_name,
    unique_carrier_name,
    carrier,
    region_abr,
    carrier_group,
    carreir_group_new
    )
    FROM 'C:\Users\Joey\Documents\Database\HW3\normaized_carrier.csv'
    DELIMITER ',' CSV HEADER;

COPY normaized_distance (
    origin_airport_id,
    destination_airport_id,
    destance,
    destance_group
    )
    FROM 'C:\Users\Joey\Documents\Database\HW3\normaized_distance.csv'
    DELIMITER ',' CSV HEADER;

COPY normaized_flight (
    passangers,
    freight,mail,
    airline_id,
    year,month,
    class,
    ramp_to_ramp,
    air_time,
    origin_airport_id,
    destination_airport_id,
    aircraft_type,carrier,
    flight_id
    )
    FROM 'C:\Users\Joey\Documents\Database\HW3\normaized_flight.csv'
    DELIMITER ',' CSV HEADER;

COPY normaized_regions (
    region_abr,
    region
    )
    FROM 'C:\Users\Joey\Documents\Database\HW3\normaized_region.csv'
    DELIMITER ',' CSV HEADER;

COPY normaized_state (
    state_abv,
    fips,
    state_nm
    )
    FROM 'C:\Users\Joey\Documents\Database\HW3\normaized_state.csv'
    DELIMITER ',' CSV HEADER;
