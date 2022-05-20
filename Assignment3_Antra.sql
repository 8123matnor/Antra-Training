USE Northwind
GO
--Assignment 3
--Lucia Fuentes

--1.      Create a view named “view_product_order_[your_last_name]”, list all products and total ordered quantity for that product.
CREATE VIEW view_product_order_fuentes
AS
SELECT p.ProductName, p.UnitsOnOrder
FROM Products p

SELECT *
FROM view_product_order_fuentes

--2.      Create a stored procedure “sp_product_order_quantity_[your_last_name]” that accept product id as an input and total quantities of order as output parameter.
CREATE PROCEDURE sp_product_order_quantity_fuentes
@productID int OUT
AS
BEGIN
SELECT p.UnitsOnOrder FROM Products p WHERE p.ProductID = @productID
End

EXECUTE sp_product_order_quantity_fuentes(1)

SELECT *
FROM Products

exec sp_help Products

--3.Create a stored procedure “sp_product_order_city_[your_last_name]” that accept product name as an input and top 5 cities that ordered most that product 
--combined with the total quantity of that product ordered from that city as output.
CREATE PROCEDURE sp_product_order_city_fuentes
@productName NVARCHAR(10) OUT
AS
BEGIN
SELECT TOP 5 o.ShipCity, SUM(os.Quantity)
FROM Orders o RIGHT JOIN
(SELECT od.OrderID, od.Quantity
FROM [Order Details] od LEFT JOIN(
SELECT p.ProductID
FROM Products p
WHERE p.ProductName = @productName) op ON od.ProductID = op.ProductID
) os ON o.OrderID = os.OrderID
GROUP BY o.ShipCity
END

EXECUTE sp_product_order_city_fuentes('Chai')

DROP PROCEDURE sp_product_order_city_fuentes


--4. Create 2 new tables “people_your_last_name” “city_your_last_name”. City table has two records: {Id:1, City: Seattle}, {Id:2, City: Green Bay}. 
--People has three records: {id:1, Name: Aaron Rodgers, City: 2}, {id:2, Name: Russell Wilson, City:1}, {Id: 3, Name: Jody Nelson, City:2}. 
--Remove city of Seattle. If there was anyone from Seattle, put them into a new city “Madison”. Create a view “Packers_your_name” lists all people from Green Bay. 
--If any error occurred, no changes should be made to DB. (after test) Drop both tables and view.
CREATE TABLE people_fuentes(
Id int,
pName varchar(20),
City int
)
SELECT *
FROM people_fuentes

INSERT INTO people_fuentes VALUES(1, 'Aaron Rodgers', 2)
INSERT INTO people_fuentes VALUES(2, 'Russell Wilson', 1)
INSERT INTO people_fuentes VALUES(3, 'Jody Nelson', 2)

CREATE TABLE city_fuentes(
Id int,
CityName varchar(20)
)
SELECT *
FROM city_fuentes

INSERT INTO city_fuentes VALUES(1, 'Seattle')
INSERT INTO city_fuentes VALUES(2, 'Green Bay')
INSERT INTO city_fuentes VALUES(3, 'Madison')


UPDATE people_fuentes
SET City = '3'
WHERE City = '1'

DELETE FROM city_fuentes WHERE CityName='Seattle'

CREATE VIEW Packers_fuentes
AS
SELECT pf.pName
FROM people_fuentes pf
WHERE pf.City = '2'

SELECT *
FROM Packers_fuentes

DROP VIEW Packers_fuentes
--5. Create a stored procedure “sp_birthday_employees_[you_last_name]” that creates a new table “birthday_employees_your_last_name” and fill it with all employees 
--that have a birthday on Feb. (Make a screen shot) drop the table. Employee table should not be affected.
CREATE PROC sp_birthday_employees_fuentes
AS
BEGIN
CREATE TABLE birthday_employees_fuentes(
EmployeeName varchar(20),
)
GO
SELECT be.EmployeeName
FROM birthday_employees_fuentes be RIGHT JOIN
(SELECT e.FirstName
FROM Employees e
WHERE e.BirthDate = '1952-02-19 00:00:00.000') sd ON be.EmployeeName = sd.FirstName
END

EXECUTE sp_birthday_employees_fuentes

--6. How do you make sure two tables have the same data?
--USING CHECKSUM
