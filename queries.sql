-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT c.CategoryName, ProductName 
FROM Product 
INNER JOIN Category as c ON Product.CategoryId = c.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT o.Id, s.CompanyName
FROM [Order] as o
INNER JOIN Shipper as s ON s.Id = o.ShipVia
WHERE o.OrderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT p.ProductName, o.Quantity
FROM [OrderDetail] as o
INNER JOIN Product as p ON p.Id = o.ProductId
WHERE o.OrderId = 10251
ORDER BY p.ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT o.Id AS OrderId, c.CompanyName AS CustomerCompanyName, e.LastName AS EmployeeLastName
FROM [Order] AS o
INNER JOIN [Customer] AS c
INNER JOIN [Employee] AS e;
