-- Lab | SQL Queries 9

-- In this lab we will find the customers who were active in consecutive months of May and June. Follow the steps to complete the analysis.
USE sakila;

-- Create a table rentals_may to store the data from rental table with information for the month of May.
-- Insert values in the table rentals_may using the table rental, filtering values only for the month of May.
DROP TABLE IF EXISTS rentals_may;
CREATE TABLE rentals_may AS
SELECT * FROM rental WHERE rental_date LIKE '____-05-%';

SELECT * FROM rentals_may;

-- Create a table rentals_june to store the data from rental table with information for the month of June.
-- Insert values in the table rentals_june using the table rental, filtering values only for the month of June.
DROP TABLE IF EXISTS rentals_june;
CREATE TABLE rentals_june AS
SELECT * FROM rental WHERE rental_date LIKE '____-06-%';

SELECT * FROM rentals_june;
-- Check the number of rentals for each customer for May.
SELECT customer_id, COUNT(rental_id) AS number_of_rentals FROM rentals_may GROUP BY customer_id;

-- Check the number of rentals for each customer for June.
SELECT customer_id, COUNT(rental_id) AS number_of_rentals FROM rentals_june GROUP BY customer_id;

-- Create a Python connection with SQL database and retrieve the results of the last two queries (also mentioned below) as dataframes: