--We want a list of ALL sales. If an online sale has no physical store (the store_id is blank), 
--we still want the sale in our report, with the city just showing up as NULL

SELECT a.total_amount, s.city FROM artisan_coffee_sales AS a
LEFT JOIN store_locations AS s
ON a.store_id = s.store_id;

--Retrieve all product_names and their associated region. 
--Ensure no products are lost from the report even if their store data is missing.

SELECT a.product_name, s.region FROM artisan_coffee_sales AS a
LEFT JOIN store_locations AS s
ON a.store_id = s.store_id;

--Write a LEFT JOIN to list all orders. 
--Filter the results to only show orders where the manager_name is missing (is NULL)

SELECT a.order_id, s.manager_name FROM artisan_coffee_sales AS a
LEFT JOIN store_locations AS s
ON a.store_id = s.store_id
WHERE manager_name IS NULL

