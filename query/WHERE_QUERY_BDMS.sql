--  retrieve the products with the category id 1
SELECT * FROM production.products 
	WHERE category_id = 1
	ORDER BY list_price DESC

-- Find products that meet two conditions: 
-- category id is 1, and the model is 2018
SELECT * FROM production.products
	WHERE category_id = 1 AND model_year = 2018
	ORDER BY list_price DESC

-- Find the products whose list price is greater than 300, 
-- and the model is 2018.
SELECT * FROM production.products
	WHERE list_price > 300 AND model_year = 2018
	ORDER BY list_price DESC

-- Find products whose list price is greater than 3,000 or whose model is 2018. 
-- Any product that meets one of these conditions is included in the result set.
SELECT * FROM production.products
	WHERE list_price > 300 OR model_year = 2018
	ORDER BY list_price DESC

-- Find the products whose list prices are between 1,899 and 1,999.99
SELECT * FROM production.products
	WHERE list_price BETWEEN 1899 AND 1999.99
	ORDER BY list_price DESC

-- Find products with a list price of 299.99, 466.99, or 489.99.
SELECT * FROM production.products
	WHERE list_price IN (299.99, 466.99, 489.99)
	ORDER BY list_price DESC

-- Find the customer whose phone is not null
SELECT * FROM sales.customers
	WHERE phone IS NOT NULL

-- Find the products where the category 
-- identification number is one and the list price is greater than 400
SELECT * FROM production.products 
	WHERE category_id = 1 AND list_price > 400 
	ORDER BY list_price DESC

