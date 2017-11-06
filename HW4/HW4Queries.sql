/*
* Joey Brennan
* \i 'C:/Users/Joey/Documents/Database/HW4/HW4.sql';
*/


\o 'C:/Users/Joey/Documents/Database/HW4/HW4.out';



# displays all departures FROM Colorado by airline with sum of passengers
 SELECT City.city, State.state_abv, Airports.city, Carrier.carrier_name, sum (Flight.passengers)
 FROM Flight
	JOIN Airports
		on Flight.Origin_Airports_ID = Airports.Airports_ID
	JOIN City
		on City.city_abr= Airpoorts.city
	JOIN Carrier
		on Flight.carrier = Carrier.carrier_entity
	JOIN State
		on City.State_Abrv like State.State_Abrv
WHERE Flight.Origin_Airports_ID IN (SELECT Airports.Airports_ID
			FROM Airports
			INNER JOIN City on City.city_abr=Airpoorts.city
			WHERE City.State_Abrv like 'CO')
GROUP BY City.city_Name, State.state_abv, Airpoorts.city, Carrier.carrier_name;


#freight instead of passengers

 SELECT City.city_Name, State.state_abv, Airpoorts.city, Carrier.carrier_name, sum (Flight.Payload)
 FROM Flight
	JOIN Airports
		on Flight.Origin_Airports_ID = Airports.Airports_ID
	JOIN City
		on City.city_abr= Airpoorts.city
	JOIN Carrier
		on Flight.carrier = Carrier.carrier_entity
	JOIN State
		on City.State_Abrv like State.State_Abrv
WHERE Flight.Origin_Airports_ID IN (SELECT Airports.Airports_ID
			FROM Airports
			INNER JOIN City on City.city_abr=Airpoorts.city
			WHERE City.State_Abrv like 'CO')
GROUP BY City.city_Name, State.state_abv, Airpoorts.city, Carrier.carrier_name;





#3 to CO not FROM in CO


 SELECT City.city_Name AS Origin_City, State.state_abv, Carrier.carrier_name, Dest.city_name As Destination, sum(Flight.passengers)
 FROM Flight
	JOIN Airports
		on Flight.Origin_Airports_ID = Airports.Airports_ID
	JOIN City
		on City.city_abr= Airpoorts.city
	JOIN Carrier
		on Flight.carrier = Carrier.carrier_entity
	JOIN State
		on City.State_Abrv like State.State_Abrv
	JOIN (
	Select city.City_Name, Flight.Dest_Airports_ID
	FROM Flight
	join Airports
		on Flight.Dest_Airports_ID = Airports.Airports_ID
	join city
		on Airports.abriviation=City_Abrv
	WHERE Flight.Dest_Airports_ID in (SELECT Airports.Airports_ID
			FROM Airports
			INNER JOIN City on City.city_abr=Airpoorts.city
			WHERE City.State_Abrv like 'CO')

	) AS Dest on Dest.Dest_Airports_ID = Flight.Dest_Airports_ID
WHERE Flight.Origin_Airports_ID not IN (SELECT Airports.Airports_ID
			FROM Airports
			INNER JOIN City on City.city_abr=Airpoorts.city
			WHERE City.State_Abrv like 'CO')
	 and Flight.Dest_Airports_ID in (SELECT Airports.Airports_ID
			FROM Airports
			INNER JOIN City on City.city_abr=Airpoorts.city
			WHERE City.State_Abrv like 'CO')
GROUP BY Origin_City, State.state_abv, Carrier.carrier_name, Dest.city_name
;


#4 limmeted to Flight distance


 SELECT City.city_Name AS Origin_City, State.state_abv, Carrier.carrier_name
 FROM Flight
	JOIN Airports
		on Flight.Origin_Airports_ID = Airports.Airports_ID
	JOIN City
		on City.city_abr= Airpoorts.city
	JOIN Carrier
		on Flight.carrier = Carrier.carrier_entity
	JOIN State
		on City.State_Abrv like State.State_Abrv
	JOIN (
	Select city.City_Name, Flight.Dest_Airports_ID
	FROM Flight
	join Airports
		on Flight.Dest_Airports_ID = Airports.Airports_ID
	join city
		on Airports.abriviation=City_Abrv
	WHERE Flight.Dest_Airports_ID in (SELECT Airports.Airports_ID
			FROM Airports
			INNER JOIN City on City.city_abr=Airpoorts.city
			WHERE City.city_Name like 'Denver')

	) AS Dest on Dest.Dest_Airports_ID = Flight.Dest_Airports_ID
WHERE Flight.Origin_Airports_ID not IN (SELECT Airports.Airports_ID
			FROM Airports
			INNER JOIN City on City.city_abr=Airpoorts.city
			WHERE City.State_Abrv like 'CO')
	 and Flight.Dest_Airports_ID in (SELECT Airports.Airports_ID
			FROM Airports
			INNER JOIN City on City.city_abr=Airpoorts.city
			WHERE City.State_Abrv like 'CO')
	and Flight.Ramp_to_Ramp BETWEEN 500 and 1200
GROUP BY Origin_City, State.state_abv, Carrier.carrier_name;
\o
