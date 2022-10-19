-- Problem 1 & 2
-- 1. Using JOINs in a single query, combine data from all three tables (employees, products, sales) to view all sales with complete employee and product information in one table.
SELECT SalesID, SalesPersonID, CustomerID, Quantity, FirstName, MiddleInitial, LastName, name, price FROM sales JOIN employees as e on e.EmployeeID = sales.SalesPersonID JOIN products as p on p.ProductID = sales.ProductID;
-- 2a. Create a View for the query you made in Problem 1 named "all_sales"
-- NOTE: You'll want to remove any duplicate columns to clean up your view!
CREATE VIEW all_sales as SELECT SalesID, SalesPersonID, CustomerID, Quantity, FirstName, MiddleInitial, LastName, name,(quantity * price) as total_sale, price FROM sales JOIN employees as e on e.EmployeeID = sales.SalesPersonID JOIN products as p on p.ProductID = sales.ProductID;

-- 2b. Test your View by selecting all rows and columns from the View

-- Problem 3
-- Find the average sale amount for each sales person
-- Below is not formatted the way that CodeDevCamp encourages, but is formatted in a way that I can read without visual tinnitus.
Select 
	SalespersonID, FirstName, MiddleInitial, LastName,	
    avg(total_sale)
    from all_sales
    group by SalespersonID;

-- Problem 4
-- Find the top three sales persons by total sales
Select distinct
	SalespersonID, FirstName, MiddleInitial, LastName, (quantity * price) as Total_Sales
    from all_sales
    order by (quantity * price) desc
    limit 3;
    
-- Problem 5
-- Find the product that has the highest price
Select distinct
	name, Price 
    from all_sales
	order by Price desc
    limit 1;
-- Problem 6
-- Find the product that was sold the most times
Select 
	name, Price, SUM(quantity) as TotalQuantity, (sum(quantity) * price) as TotalSales
	from all_sales
    group by name 
    order by TotalQuantity desc
	limit 1;
    
-- Problem 7
Select *
	from all_sales
	where price > (select avg(price) from all_sales)
	order by price desc;
-- Using a subquery, find all products that have a price higher than the average price for all products

-- Problem 8
-- Find the customer who spent the most money in purchased products
Select 
	CustomerID, SUM(total_sale) as TotalSum
	from all_sales
    group by CustomerID  
    order by TotalSum desc
	limit 1;

-- Problem 9
-- Find the total number of sales for each sales person
Select 
	SalespersonID, FirstName, MiddleInitial, LastName, SUM(total_sale) as TotalSum
	from all_sales
    group by SalesPersonID  
    order by TotalSum desc
	;


-- Problem 10
-- Find the sales person who sold the most to the customer you found in Problem 8
Select 
	CustomerID, FirstName, MiddleInitial, LastName, SUM(total_sale) as TotalSum
	from all_sales
	Where CustomerID = 18723
    group by SalesPersonID  
    order by TotalSum desc;