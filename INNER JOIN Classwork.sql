SELECT artisan_coffee_sales.order_id, store_locations.city FROM artisan_coffee_sales
INNER JOIN store_locations
ON artisan_coffee_sales.store_id = store_locations.store_id;

-- The coffee store owner wants to review the performance of a specific regional manager. 
--She asks you to pull a list of all products sold under the manager 'Sarah Jenkins'

SELECT a.product_name, a.price FROM artisan_coffee_sales AS a
INNER JOIN store_locations AS s
ON a.store_id = s.store_id;
WHERE s.manager_name = 'Sarah Jenkins';

--Write an INNER JOIN to retrieve the total_amount from the sales table, and the region from the locations table. 
--Use aliases a and s

SELECT a.total_amount, s.region FROM artisan_coffee_sales AS a
INNER JOIN store_locations AS s
ON a.store_id = s.store_id;

--Calculate the total revenue (SUM(total_amount)) grouped by the manager_name.

SELECT s.manager_name, SUM(a.total_amount) 
FROM artisan_coffee_sales AS a
INNER JOIN store_locations AS s
ON a.store_id = s.store_id
GROUP BY s.manager_name;


