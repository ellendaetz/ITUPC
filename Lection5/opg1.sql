
-- https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all-- 

-- opg 1: get all employees -- 
SELECT * FROM Employees;

-- opg 2: get all customer countries --
SELECT country FROM Customers;
SELECT distinct(country) FROM Customers;

-- opg 2: get all firstnames and birthdays from employees --
SELECT FirstName, BirthDate FROM Employees;

-- opg 3: get all product names, units and prices on category 2 products --
SELECT ProductName, Unit, Price FROM Products
WHERE CategoryID = 2;

-- opg 4: get all supliers from germany or france --
SELECT SupplierName, City FROM Suppliers
WHERE Country = 'Germany' OR Country = 'France';

-- another solution --
SELECT SupplierName, City FROM Suppliers
WHERE Country in ('Germany', 'France');	

-- opg 5: get product from category 2 and 3 where price higher than 25 --
SELECT ProductName, Price FROM Products
WHERE Price >= 25
	AND (CategoryID = 2 OR CategoryID = 3)
ORDER BY Price;

-- opg 6: Who did the crime? another link -- 
SELECT name, place, item FROM Suspects, Crimescene
WHERE dna_profile = dna_found;

-- opg 7: join suppliers and products -- 
SELECT ProductName, Phone FROM Products, Suppliers 
WHERE Products.SupplierID = Suppliers.SupplierID
ORDER BY ProductName; 

