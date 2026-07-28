
Demo Web Shop SQL Queries
Author: Md.Khairuzzaman


 1. View All Customers

SELECT *
FROM Customer;

 2. Find Customer by Email

SELECT *
FROM Customer
WHERE Email = 'john@example.com';


 3. Check Login Information

SELECT CustomerID, Email, Active
FROM Customer
WHERE Email = 'john@example.com';


 4. View All Products

SELECT *
FROM Product;

5. Search Product by Name

SELECT *
FROM Product
WHERE ProductName LIKE '%Laptop%';


 6. Check Product Price

SELECT ProductName, Price
FROM Product
WHERE ProductID = 101;

 7. Products with Price Greater Than 100

SELECT ProductName, Price
FROM Product
WHERE Price > 100;


 8. View Shopping Cart Items

SELECT *
FROM ShoppingCart
WHERE CustomerID = 1;

 9. Total Cart Amount

SELECT SUM(TotalPrice) AS CartTotal
FROM ShoppingCart
WHERE CustomerID = 1;


10. View Wishlist

SELECT *
FROM Wishlist
WHERE CustomerID = 1;

11. View Orders

SELECT *
FROM Orders
WHERE CustomerID = 1;

 12. Latest Order

SELECT TOP 1 *
FROM Orders
WHERE CustomerID = 1
ORDER BY OrderDate DESC;


 13. Order Details

SELECT *
FROM OrderDetails
WHERE OrderID = 1001;


 14. Count Total Orders

SELECT COUNT(*) AS TotalOrders
FROM Orders;


15. Total Revenue

SELECT SUM(OrderTotal) AS TotalRevenue
FROM Orders;


16. Find Duplicate Emails

SELECT Email, COUNT(*)
FROM Customer
GROUP BY Email
HAVING COUNT(*) > 1;


 17. Customers Registered Today

SELECT *
FROM Customer
WHERE CAST(RegisterDate AS DATE) = CAST(GETDATE() AS DATE);


18. Out of Stock Products

SELECT *
FROM Product
WHERE StockQuantity = 0;


19. Top 5 Most Expensive Products

SELECT TOP 5 *
FROM Product
ORDER BY Price DESC;


 20. Active Customers

SELECT *
FROM Customer
WHERE Active = 1;