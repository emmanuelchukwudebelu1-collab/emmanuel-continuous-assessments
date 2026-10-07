--(Business Case): The owner is planning to close underperforming retail locations. 
--She asks you to run a report identifying "Zombie" stores—locations that cost money to run but have registered absolutely zero sales.

SELECT s.city, s.manager_name
FROM artisan_coffee_sales AS a
RIGHT JOIN store_locations AS s 
    ON s.store_id = s.store_id
WHERE a.order_id IS NULL;

--Exercise 1: Retrieve the region of every single store location alongside the order_date of any sales. 
--Ensure no regions are dropped

SELECT s.region, a.order_date FROM artisan_coffee_sales AS a
RIGHT JOIN store_locations AS s
ON s.store_id = a.store_id;

--Exercise 2: Find the manager_name of any stores that currently have zero matching records in the sales table.

SELECT s.manager_name FROM artisan_coffee_sales AS a
RIGHT JOIN store_locations AS s
ON s.store_id = a.store_id
WHERE order_id IS NULL;

