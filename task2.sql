CREATE DATABASE postcrossing;

USE postcrossing; 

CREATE TABLE users (
Id_user int (10) NOT NULL,
name_user varchar (20) NOT NULL,
surname_user varchar (20) NOT NULL,
PRIMARY KEY (Id_user) );

CREATE TABLE cards (
Id_card int (10) NOT NULL,
сolor_card varchar (20) NOT NULL,
тame_country varchar (20) NOT NULL,
PRIMARY KEY (ID_card) );

CREATE TABLE country (
Id_country int (20) NOT NULL,
Id_user int (20) NOT NULL,
ID_card int (20) NOT NULL,
PRIMARY KEY (Id_country),
FOREIGN KEY (Id_user) REFERENCES users (Id_user),
FOREIGN KEY (Id_card) REFERENCES cards (Id_card) );

INSRT INTO users VALUES
(‘1’, ‘Erica’, ‘Sernova’),
(‘2’, ‘Evgen’, ‘Konoval’),
(‘3’, ‘Ann’, ‘King’),
(‘4’, ‘Olga’, ‘Noskova’),
(‘5’, ‘Nich’, ‘Cooper’);

INSERT INTO cards VALUES
(‘1’, ‘red’, ‘USA’),
(‘2’, ’blue’, ‘Ukraine’),
(‘3’, ’green’, ‘Polish’),
(‘4’, ‘white’, ‘France’);

INSERT INTO country VALUES
(‘1’, ‘2’, ‘1’),
(‘2’, ‘5’, ‘3’),
(‘3’, ‘4’, ‘2’),
(‘4’, ‘1’, ‘1’),
(‘5’, ‘3’, ‘4’);

SELECT * FROM users WHERE users.name_user = ‘Ann’;

SELECT * FROM cards WHERE (cards.color_card = ‘white’) AND (Id_card = ‘4’);

SELECT users.Id_user, users.name_user, country.Id_card FROM users, country WHERE (users.Id_user = contry.Id_user) AND (users.Id_user = ‘3’);

SELECT users.Id_user, cards.name_country, cards.color_card FROM users, cards, country WHERE (users.name_user =’Ann’) AND (cards.Id_card=country.id_card) AND (users.Id_user=country.Id_user);

SELECT COUNT (*) FROM country;