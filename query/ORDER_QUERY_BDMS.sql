-- Sorts the customer list by the first name in ascending order:
SELECT first_name, last_name from sales.customers 
	ORDER BY first_name

-- Sorts the customer list by the first name in descending order
SELECT first_name, last_name from sales.customers 
	ORDER BY first_name DESC

-- Retrieves the first name, last name, and city of the customers. 
-- It sorts the customer list by the city first and then by the first name.
SELECT first_name, last_name, city from sales.customers 
	ORDER BY city, first_name

-- Sorts the customers by the city in descending order and 
-- then sorts the sorted result set by the first name in ascending order.
SELECT first_name, last_name, city from sales.customers 
	ORDER BY city DESC, first_name ASC

-- LEN() function in the ORDER BY clause to 
-- retrieve a customer list sorted by the length of the first name
SELECT first_name, last_name, city from sales.customers 
	ORDER BY LEN(first_name) DESC

-- Sorts the customers by first name and 
-- last name. But instead of specifying the column names explicitly,
-- it uses the ordinal positions of the columns
SELECT
    first_name,
    last_name
FROM
    sales.customers
ORDER BY
    1,
    2;

-- Pagination in query where skip 10 rows and get next 10 rows based on the price
SELECT * FROM production.products 
	ORDER BY list_price DESC, model_year DESC
	OFFSET 0 ROWS 
	FETCH NEXT 10 ROWS ONLY;

-- Pagination to get top 5 of the products based on the price
SELECT TOP 5 * FROM production.products
	ORDER BY list_price DESC, model_year DESC

-- Pagination to get top 5% of the products based on the price
SELECT TOP 5 PERCENT * FROM production.products
	ORDER BY list_price DESC, model_year DESC

-- Pagination to get top 5 with ties of the products based on the price
SELECT TOP 5 WITH TIES * FROM production.products
	ORDER BY list_price DESC, model_year DESC

-- Fetch state records without duplicates
SELECT 
  DISTINCT state
FROM 
  sales.customers;







