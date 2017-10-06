/*
* Joey Brennan
* \i 'C:/Users/Joey/Documents/Database/Hw2/HW2.sql';
*/

\COPY regions FROM 'C:\Users\Joey\Documents\Database\HW3\region.csv' CSV HEADER;

\COPY state FROM 'C:\Users\Joey\Documents\Database\HW3\state.csv' CSV HEADER;

\COPY City FROM 'C:\Users\Joey\Documents\Database\HW3\city.csv' CSV HEADER;

\COPY carrier_dates FROM 'C:\Users\Joey\Documents\Database\HW3\carrier_dates.csv' CSV HEADER;

\COPY aircrafts FROM 'C:\Users\Joey\Documents\Database\HW3\normalized_aircrafts.csv' CSV HEADER;

\COPY airports FROM 'C:\Users\Joey\Documents\Database\HW3\airports.csv' CSV HEADER;

\COPY carrier FROM 'C:\Users\Joey\Documents\Database\HW3\carrier.csv' CSV HEADER;

\COPY distance FROM 'C:\Users\Joey\Documents\Database\HW3\distance.csv' CSV HEADER;

\COPY flight FROM 'C:\Users\Joey\Documents\Database\HW3\flight.csv' CSV HEADER;
