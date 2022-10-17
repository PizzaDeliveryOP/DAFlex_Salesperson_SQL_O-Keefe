-- Problem 1 & 2
-- 1. Using JOINs in a single query, combine data from all three tables (employees, products, sales) to view all sales with complete employee and product information in one table.
select distinct * from employees JOIN sales on EmployeeID 

;
-- 2a. Create a View for the query you made in Problem 1 named "all_sales"
-- NOTE: You'll want to remove any duplicate columns to clean up your view!
CREATE VIEW all_sales as select distinct * from employees JOIN sales on EmployeeID 
;

-- 2b. Test your View by selecting all rows and columns from the View

-- Problem 3
-- Find the average sale amount for each sales person

-- Problem 4
-- Find the top three sales persons by total sales

-- Problem 5
-- Find the product that has the highest price

-- Problem 6
-- Find the product that was sold the most times

-- Problem 7
-- Using a subquery, find all products that have a price higher than the average price for all products

-- Problem 8
-- Find the customer who spent the most money in purchased products

-- Problem 9
-- Find the total number of sales for each sales person

-- Problem 10
-- Find the sales person who sold the most to the customer you found in Problem 8
