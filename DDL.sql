--
-- File generated with SQLiteStudio v3.2.1 on Thu Dec 1 13:06:39 2022
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: cars
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (carID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, car_name VARCHAR (100) NOT NULL, price INTEGER NOT NULL);
INSERT INTO cars (carID, car_name, price) VALUES (1, 'VW up!', 40);
INSERT INTO cars (carID, car_name, price) VALUES (2, 'Range Rover', 100);
INSERT INTO cars (carID, car_name, price) VALUES (3, 'Suzuki Swift', 50);
INSERT INTO cars (carID, car_name, price) VALUES (4, 'VW Polo', 50);

-- Table: details
DROP TABLE IF EXISTS details;
CREATE TABLE details (rentalID INTEGER REFERENCES rentals (rental_ID) PRIMARY KEY NOT NULL, carID INTEGER (0) NOT NULL REFERENCES cars (carID), duration INTEGER NOT NULL);
INSERT INTO details (rentalID, carID, duration) VALUES (1, 1, 4);

-- Table: rentals
DROP TABLE IF EXISTS rentals;
CREATE TABLE rentals (rental_ID INTEGER PRIMARY KEY NOT NULL, userID INTEGER REFERENCES users (userID), date TEXT NOT NULL);
INSERT INTO rentals (rental_ID, userID, date) VALUES (1, 1, '01/01/2022');

-- Table: users
DROP TABLE IF EXISTS users;
CREATE TABLE users (userID INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE, surname VARCHAR (40) NOT NULL, forname VARCHAR (40) NOT NULL, age INTEGER NOT NULL, email VARCHAR (50) NOT NULL UNIQUE, mobile BIGINT NOT NULL);
INSERT INTO users (userID, surname, forname, age, email, mobile) VALUES (1, 'Fardoe', 'Thomas', 20, 'fardoet@test.com', 7771686777);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
