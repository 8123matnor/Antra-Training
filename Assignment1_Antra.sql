--Lucia Fuentes Noriega
--Assignment 1
use AdventureWorks2019
GO

--1) Query that retrieves the columns ProductID, Name, Color and ListPrice from the Production.Product table, with no filter
SELECT c.ProductID, c.Name, c.Color, c.ListPrice
FROM Production.Product c

--2) Query that retrieves the columns ProductID, Name, Color and ListPrice from the Production.Product table, excluding the rows that ListPrice is 0.
SELECT c.ProductID, c.Name, c.Color, c.ListPrice
FROM Production.Product c
WHERE c.ListPrice != 0

--3) Query that retrieves the columns ProductID, Name, Color and ListPrice from the Production.Product table, the rows that are not NULL for the Color column.
SELECT c.ProductID, c.Name, c.Color, c.ListPrice
FROM Production.Product c
WHERE Color != 'NULL'

--4) Query that retrieves the columns ProductID, Name, Color and ListPrice from the Production.Product table, the rows that are not NULL for the column Color, and the column ListPrice has a value greater than zero.
SELECT c.ProductID, c.Name, c.Color, c.ListPrice
FROM Production.Product c
WHERE Color != 'NULL' AND ListPrice > 0

--5) Query that concatenates the columns Name and Color from the Production.Product table by excluding the rows that are null for color.
SELECT p.Name + ' ' + p.Color as NameColor
FROM Production.Product p
WHERE Color IS NOT NULL

--6) Query that generates the following result set from Production.Product
SELECT 'NAME: ' + p.Name + ' -- COLOR: ' + p.Color
FROM Production.Product p
WHERE p.Name LIKE '%Crankarm' OR p.Name LIKE 'Chainring%'
ORDER BY p.Name DESC

--7) Query to retrieve the to the columns ProductID and Name from the Production.Product table filtered by ProductID from 400 to 500 using between
SELECT p.ProductID, p.Name
FROM Production.Product p 
WHERE p.ProductID BETWEEN 400 and 500

--8) Query to retrieve the to the columns  ProductID, Name and color from the Production.Product table restricted to the colors black and blue
SELECT p.ProductID, p.Name, p.Color
FROM Production.Product p
WHERE p.Color IN ('Black', 'Blue')

--9) Query to get a result set on products that begins with the letter S. 
SELECT p.Name
FROM Production.Product p
WHERE p.Name LIKE 'S%'

--10) Write a query that retrieves the columns Name and ListPrice from the Production.Product table. Your result set should look something like 
-- the following. Order the result set by the Name column. The products name should start with either 'A' or 'S'
SELECT p.Name, p.ListPrice
FROM Production.Product p
WHERE p.Name LIKE 'A%' or p.Name LIKE 'S%'

--11) Query so you retrieve rows that have a Name that begins with the letters SPO, but is then not followed by the letter K. After this zero 
-- or more letters can exists. Order the result set by the Name column.
SELECT p.Name
FROM Production.Product p
WHERE p.Name LIKE 'SPO[^K]%' 

--12) Query that retrieves the unique combination of columns ProductSubcategoryID and Color from the Production.Product table. We do not want any rows that are NULL.in any of the two columns in the result. (Hint: Use IsNull)
SELECT DISTINCT p.ProductSubcategoryID, p.Color
FROM Production.Product p
WHERE p.ProductSubcategoryID IS NOT NULL AND p.Color IS NOT NULL