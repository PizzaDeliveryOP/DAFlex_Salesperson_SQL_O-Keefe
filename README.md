# Salesperson of the Year

Your manager has tasked you, a junior data analyst, with analyzing a database with tables for products, salespersons (employees), and sales to find out who the salesperson of the year should be. In addition, your manager would like you to gather some insights about how that individual was able to gain the coveted top spot in order to make improvements to sales training for the next quarter.

As a data analyst, you’ll write SQL queries as prompted to discover insights into the data provided, and then provide a short but detailed report based on your manager’s questions to help them identify the top salesperson, recognize them, and improve sales training.

## PREREQUISITES

- MySQL Server and MySQL Workbench, installed on your computer
- Intermediate understanding of SQL queries
  - SELECT, SELECT DISTINCT
  - WHERE, operators with WHERE, complex expressions using AND, OR, NOT, and NULL
  - Filtering and sorting (LIMIT, ORDER BY)
  - Aggregate functions: COUNT, MIN, MAX, AVG, SUM, GROUP BY
  - Aliasing (creating a new temporary column with the AS clause)
  - SQL comments
  - JOINs
  - Subqueries
  - Views

## INSTRUCTIONS

1. Run through the SETUP steps (outlined below) and watch the Walkthrough video for this project to see a live example
2. Complete the queries specified in the `queries.sql` script file included in this repository (also outlined below)
3. Write up your analysis by editing the `REPORT.md` file and adding your responses to each prompt.
4. Upload your completed project (with successful queries and report) to GitHub and submit!

## SETUP

1. Download the .zip file for this GitHub repository
2. Unzip the file on your computer
3. Open MySQL Workbench and choose your local connection
4. Run the `CREATE DATABASE intermediate_sql` query to create the database
5. Refresh your Schemas tab and right click on `intermediate_sql`
6. Select Table Data Import Wizard
7. When prompted to choose the file to import, click the Browse button and select `sales.csv` from the folder you unzipped out of our starter repository
8. Click Next five times - you will not need to change any settings when setting this project up for the first time.
9. Repeat Steps 6 and 7 for `employees.csv` and `products.csv`
10. Now, go to File > Open SQL Script in the top menu of MySQL Workbench.
11. In the window that pops up, choose the `queries.sql` file from the starter files, then click Open
12. You should see the script open in MySQL Workbench with all of the problems written out in SQL comments.
13. Write your queries underneath the problem they relate to, and execute those queries to check that they give you the expected output!

## QUERY PROBLEMS

1. Using JOINs in a single query, combine data from all three tables (employees, products, sales) to view all sales with complete employee and product information in one table.

2. Create a View for the query you made in Problem 1 named "all_sales"

3. Test your View by selecting all rows and columns from the View

4. Find the average sale amount for each sales person

5. Find the top three sales persons by total sales

6. Find the product that has the highest price

7. Find the product that was sold the most times

8. Using a subquery, find all products that have a price higher than the average price for all products

9. Find the customer who spent the most money in purchased products

10. Find the total number of sales for each sales person

11. Find the sales person who sold the most to the customer you found in Problem 8
