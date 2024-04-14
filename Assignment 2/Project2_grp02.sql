/***************************************************************************************************************************
GROUP 02
Members: Manav Alpeshbhai Zadafiya, Patel Arth Bimalbhai, Niroopah Bonifus Joseph
Stud Id: 144095221, 1417162225, 181677212
Date: 2023-12-04
Purpose: Assignment2 DBS211
We, members of Group2, declare that the attached assignment is our own work in accordance with 
the Seneca Academic Policy. No part of this assignment has been copied manually or electronically
from any other source (including web sites) or distributed to other students.
***************************************************************************************************************************/

--PART III--

--SOLUTION 1--
SELECT 
    fb.Flight_num,
    f.Airline_code,
    al.Airline_name,
    f.Aircraft_code,
    ac.Aircraft_desc,
    dep.Airport_code AS Departure_Airport_Code,
    dep.Airport_name AS Departure_Airport_Name,
    arr.Airport_code AS Arrival_Airport_Code,
    arr.Airport_name AS Arrival_Airport_Name
FROM 
    flightbooking fb
    JOIN
        Flight f ON f.Flight_num = fb.flight_num
    JOIN 
        Airline al ON f.Airline_code = al.Airline_code
    JOIN 
        Aircraft ac ON f.Aircraft_code = ac.Aircraft_code
    JOIN 
        Airport dep ON fb.dep_airport_code = dep.Airport_code
    JOIN 
        Airport arr ON fb.arr_airport_code = arr.Airport_code
WHERE 
    f.Flight_num = 'AF393';



--SOLUTION 2--
SELECT 
    b.bookingid, 
    b.bookedon, 
    fb.flight_num, 
    fb.dep_airport_code AS departure_airport_code, 
    fb.dep_date AS departure_date, 
    fb.dep_time AS departure_time,
    fb.arr_airport_code AS arrival_airport_code, 
    fb.arr_date AS arrival_date,
    fb.arr_time AS arrival_time
FROM Booking b
	INNER JOIN FlightBooking fb ON b.BookingID = fb.BookingID	
WHERE b.BookingID = 56753365
ORDER BY fb.dep_date, fb.dep_time;



--SOLUTION 3--
SELECT 
    b.bookingid, 
    e.eticket_num, 
    t.traveler_fname, 
    t.traveler_lname
FROM 
    booking b
JOIN 
    ticket e ON b.bookingid = e.bookingid
JOIN 
    traveler t ON e.traveler_id = t.traveler_id
WHERE 
    b.bookingid = 56753365
ORDER BY 
    t.traveler_lname;



--SOLUTION 5--
SELECT
    SUM(t.ticket_price + t.taxes_fees) AS "total_fees"
FROM booking b
    INNER JOIN ticket t ON b.bookingid = t.bookingid
WHERE
    t.bookingid = 56753365



--SOLUTION--
CREATE VIEW Book_ticket AS
SELECT 
    B.BookingID,
    B.Bookedon,
    COUNT(T.eticket_num) AS NumberOfTickets
FROM 
    Booking B
LEFT JOIN 
    Ticket T ON B.BookingID = T.BookingID
GROUP BY 
    B.BookingID, B.Bookedon;