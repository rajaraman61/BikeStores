-- Basic query to fetch all customers
SELECT * FROM sales.customers

-- Fetch only specific columns from the customers
SELECT first_name, last_name, email FROM sales.customers

-- Fetch records based on state
SELECT * FROM sales.customers 
	WHERE state = 'CA'

-- Fetch records based on state and sort by firstname
SELECT * FROM sales.customers 
	WHERE state = 'CA' 
	ORDER BY first_name


-- Fetch records count of the customers based on state
SELECT state, COUNT (*) FROM sales.customers 
	GROUP BY state 
	ORDER BY state

-- Fetch records count of the customers count based on the city
SELECT city, COUNT (*) FROM sales.customers 
	WHERE state = 'CA' 
	GROUP BY city 
	ORDER BY city

-- Fetch records count of the customers count based on the city
-- with less than count of 10
SELECT city, COUNT (*) FROM sales.customers 
	WHERE state = 'CA' 
	GROUP BY city 
	HAVING COUNT (*) < 10
	ORDER BY city



