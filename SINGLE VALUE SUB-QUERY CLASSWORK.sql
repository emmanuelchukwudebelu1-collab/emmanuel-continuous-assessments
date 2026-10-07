--Exercise 1:The pricing team wants to identify our 'budget-friendly' items for a new ad campaign. 
--Write a query to find the names and prices of all products that cost strictly less than our overall average product price

SELECT product_name, price FROM artisan_coffee_sales 
WHERE price < (SELECT AVG(total_amount) FROM artisan_coffee_sales
);

--Exercise 2: The logistics team needs to review our biggest wholesale order to optimize packaging. 
--Find all details (*) for the single transaction where the customer bought the absolute highest quantity of items.

SELECT * FROM artisan_coffee_sales 
WHERE quantity = (SELECT MAX(quantity) 
FROM artisan_coffee_sales
);