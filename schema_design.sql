CREATE DATABASE DataWarehouse;
USE DataWarehouse;

CREATE TABLE DIM_Passenger (
    passenger_id INT PRIMARY KEY,
    Gender VARCHAR(10),
    Age INT,
    Customer_Type VARCHAR(50)
);

CREATE TABLE DIM_Flight (
    flight_id INT PRIMARY KEY,
    Type_of_Travel VARCHAR(50),
    Class VARCHAR(50),
    Flight_Distance INT
);

CREATE TABLE DIM_Airline (
    airline_id INT PRIMARY KEY,
    airline_name VARCHAR(100)
);

CREATE TABLE DIM_Traveller (
    traveller_id INT PRIMARY KEY,
    Type_of_Traveller VARCHAR(50)
);

CREATE TABLE FACT_Satisfaction (
    satisfaction_id INT PRIMARY KEY,
    passenger_id INT,
    flight_id INT,
    airline_id INT,
    traveller_id INT,
    departure_delay INT,
    arrival_delay INT,
    inflight_service INT,
    seat_comfort INT,
    food_and_drink INT,
    cleanliness INT,
    value_for_money INT,
    FOREIGN KEY (passenger_id) REFERENCES DIM_Passenger (passenger_id),
    FOREIGN KEY (flight_id) REFERENCES DIM_Flight (flight_id),
    FOREIGN KEY (airline_id) REFERENCES DIM_Airline (airline_id),
    FOREIGN KEY (traveller_id) REFERENCES DIM_Traveller (traveller_id)
);
