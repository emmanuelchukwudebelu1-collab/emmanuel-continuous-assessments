--Exercise 1: The London city council is requesting a local tax audit. Using a subquery on the locations table, 
--find the order_ids and total_amounts for all sales that occurred specifically in 'London'.

SELECT order_id, total_amount 
FROM artisan_coffee_sales
WHERE order_id IN (
SELECT order_id FROM store_locations
WHERE city = 'London'
);

--I have a problem with this answer

SELECT order_id, total_amount
FROM artisan_coffee_sales
WHERE store_id IN (
    SELECT store_id 
    FROM store_locations 
    WHERE city = 'London'
);

--Exercise 2: We are launching a new line of coffee mugs. 
--The marketing team wants to send a promo email to anyone who has ever bought 'Merch' from us in the past. 
--Retrieve a unique list of their names.

SELECT DISTINCT customer_name
FROM artisan_coffee_sales
WHERE customer_name IN (
    SELECT customer_name 
    FROM artisan_coffee_sales 
    WHERE category = 'Merch'
);