--Exercise 1: We want to create a 'Super Fan' award for the customer who has purchased the highest volume of items 
--over their lifetime.Find the absolute maximum total quantity ever bought by a single customer. 
--(Hint: First find the total quantity per customer using SUM, then find the MAX of that).

SELECT MAX(total_bought) AS max_items_bought
FROM (
    SELECT customer_name, SUM(quantity) AS total_bought
    FROM artisan_coffee_sales
    GROUP BY customer_name
) AS temp_quantity;

