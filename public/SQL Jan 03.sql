# Display the first name and zip codes of customers
# in the customer table

SELECT customer_first_name, customer_zip
FROM farmers_market.customer;

# Order the output in Asc order of first names

SELECT customer_first_name, customer_zip
FROM farmers_market.customer
ORDER BY customer_first_name ASC; #ASC/DESC


# Order the output in Desc order of zip code

SELECT customer_first_name, customer_zip
FROM farmers_market.customer
ORDER BY customer_zip DESC;

# Order the output in Desc order of zip code and Asc order of customer first name

SELECT customer_first_name, customer_zip
FROM farmers_market.customer
ORDER BY customer_zip DESC, #level 1 sorting
customer_first_name ASC;#tie breaker for level 1 


## LIMITING THE NUMBER OF ROWS IN THE OUTPUT

SELECT *
FROM farmers_market.customer
LIMIT 2;

# Show records of first 3 customers in asc order

SELECT *
FROM farmers_market.customer
ORDER BY customer_first_name ASC
LIMIT 3;

# Show records of last 3 customers in asc order

SELECT *
FROM farmers_market.customer
ORDER BY customer_first_name DESC
LIMIT 3;

# Offset - to keep it away

SELECT *
FROM farmers_market.customer
ORDER BY customer_first_name ASC
LIMIT 3
OFFSET 2;

# Display customer id from 6 to 9

SELECT *
FROM farmers_market.customer
ORDER BY customer_id ASC
LIMIT 4
OFFSET 5;

/*MULTILINE COMMENTS 
IN SQL*/

# Single Link comment in SQL

# Limit without Order

SELECT *
FROM farmers_market.customer
LIMIT 5;

# Offset can only occur when Limit is there
# LIMIT and OFFSET does not decrease the the data in size, just hides

# FILTERS

# Extract from Database for True and doesnt for False values

# Apply filter so that only the customers zip id is 22801 are fetched
# Keyword is 'WHERE'
# reduces the number of rows that we get from table/databse

SELECT *
FROM farmers_market.customer
WHERE customer_zip = 22801;

# zip code with 22802

SELECT *
FROM farmers_market.customer
WHERE customer_zip = 22802;

# zip code with 22817

SELECT *
FROM farmers_market.customer
WHERE customer_zip = 22817; # no records

# AND OR NOT

# Filter with zip code 22801 or 22802

SELECT *
FROM farmers_market.customer
WHERE customer_zip = 22801
OR customer_zip = 22802;

/*WHERE customer_zip = 22801 OR 22802; - Second confition is not a Boolean Value*/

# Display customer id from 6 to 9 using Filters

SELECT *
FROM farmers_market.customer
WHERE customer_id = 6
OR customer_id = 7
OR customer_id = 8
OR customer_id = 9;


# Display customer id from 6 to 9 using Filters

SELECT *
FROM farmers_market.customer
WHERE customer_id >=6
AND customer_id <=9 ;

# Display customer id from 6 to 9 using Filters and then sort by last name with desc

SELECT *
FROM farmers_market.customer
WHERE customer_id >=6
AND customer_id <=9 
ORDER BY customer_last_name DESC;

# Get records of customers who are id is in the list [17,5,3,1,9,10]

SELECT *
FROM farmers_market.customer
WHERE customer_id IN (1,3,5,9,10,17);

# Get records of customers who are id is not in the list [17,5,3,1,9,10]

SELECT *
FROM farmers_market.customer
WHERE customer_id NOT IN (1,3,5,9,10,17);

# DISTINCT - Nn repeating values

SELECT DISTINCT customer_zip
FROM farmers_market.customer;

# Selecting id and zip, display unique 

SELECT DISTINCT customer_zip,customer_id 
FROM farmers_market.customer;

# FUNCTIONS (LOGIC)
# String Functions # input is a string
# Numeric Functions # input is a number
# function can have more than 1 input/variable 
# ALIAS

SELECT *, LENGTH(customer_first_name) AS FirstNameLength 
FROM farmers_market.customer;

# BACKTICK - `

SELECT *, LENGTH(customer_first_name) AS `First Name Length`
FROM farmers_market.customer;

SELECT *
FROM farmers_market.customer
LIMIT 2;