USE DWHAIRLINE
----Create Dimension Tables
CREATE TABLE TICKETS (
                TICKET_PK INT PRIMARY KEY,
                TICKET_ID VARCHAR(100),
                TICKETS_CLASS VARCHAR(100),
                TICKETS_FARE NUMERIC,
				SEAT_NUM NUMERIC(4),
				UPGRADE_CHECK NUMERIC(1) );

CREATE TABLE PROMOTIONS (
                PROMOTION_PK INT PRIMARY KEY, 
                PROMOTION_CODE VARCHAR(100),  
                PROMOTION_NAME VARCHAR(100), 
                PROMOTION_TYPE VARCHAR(100),
                PROMOTION_STARTDATE DATE,
                PROMOTION_ENDDATE DATE,
                PROMOTION_VALUE NUMERIC(8,2) );
CREATE TABLE T_DATE (
                DATE_PK INT PRIMARY KEY,
                FULL_DATE DATE,
                CALENDAR_YEAR NUMERIC(4),
                QUARTER NUMERIC(1),
                CALENDAR_MONTH NUMERIC(2),
                WEEK_IN_YEAR NUMERIC(3),
                WEEK_IN_MONTH NUMERIC(2),
                DAY_IN_WEEK NUMERIC(1),
                DAY_IN_MONTH NUMERIC(2),
                DAY_IN_YEAR NUMERIC(4),
				DAY_NAME VARCHAR(100));

CREATE TABLE AIRCRAFTS (
                AIRPLANE_PK INT PRIMARY KEY,
                AIRPLANE_CODE VARCHAR(100),
                AIRPLANE_TYPE VARCHAR(100),
                AIRPLANE_CAPACITY NUMERIC(6) );

CREATE TABLE FLIGHTS(
                FLIGHT_PK INT PRIMARY KEY,
                FLIGHT_NUMBER NUMERIC,
                FLIGHT_ARRIVAL_CITY VARCHAR(100),
                FLIGHT_DEPARTURE_CITY VARCHAR(100),
                ARRIVAL_TIME DATE,
                DEPARTURE_TIME DATE,
                FLIGHT_DURATION NUMERIC);

CREATE TABLE PASSENGERS(
                PASSENGER_PK INT PRIMARY KEY,
                PASSENGER_ID NUMERIC,
                PASSENGER_TYPE VARCHAR(100),
                PASSENGER_NAME VARCHAR(100),
                CITY VARCHAR(100),
                STATE VARCHAR(100));

CREATE TABLE RESERVATIONS_CHANNEL(
                RESERVATION_PK INT PRIMARY KEY,
                RESERVATION_CHANNEL VARCHAR(100));

CREATE TABLE PROBLEMS(
                PROBLEM_PK INT PRIMARY KEY,
				PROBLEM_SEVERITY VARCHAR(100),
                PASSENGER_COMPLAINT VARCHAR(100),
				INTERACTION_TYPE VARCHAR(100));
-- Create Fact Tables
CREATE TABLE MARKETING(
                FLIGHT_FK  INT,
                PROMOTION_FK INT,
                TICKET_FK INT,
                PASSENGER_FK INT,
                DATE_FK INT,
                GOLD_PASSENGERS NUMERIC,
                ALUMINUM_PASSENGERS NUMERIC,
                PLATINUM_PASSENGERS NUMERIC,
                TITANIUM_PASSENGERS NUMERIC,
                UPGRADED_TICKETS NUMERIC);

CREATE TABLE CUSTOMER_CARE(
                FLIGHT_FK INT,
                DATE_FK INT,
                AIRPLANE_FK INT,
                PROBLEM_FK INT,
				PASSENGER_FK INT,
                COMPLAINTS_PER_FLIGHT NUMERIC,
				COMPLAINTS_PER_FLIGHT_RATE NUMERIC,
				COMPLAINTS_PER_AIRPLANE NUMERIC,
                COMPLAINTS_PER_YEAR NUMERIC);

CREATE TABLE RESERVATIONS(
                 FLIGHT_FK INT,
                 TICKET_FK INT,
                 DATE_FK INT,
                 PASSENGER_FK INT,
                 RESERVATION_FK INT,
                 AIRPLANE_FK INT,
                 TOTAL_PROFIT NUMERIC);

