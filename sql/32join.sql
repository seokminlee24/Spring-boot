USE w3schools;

SELECT *
FROM Orders;
SELECT *
FROM OrderDetails
WHERE OrderID = 10248;

#1996년 7월 4일에 어떤 고객이 어떤 상품을 몇 개 주문했는지 조회
SELECT o.OrderDate, c.CustomerName, p.ProductName, od.Quantity
FROM Orders o
         JOIN OrderDetails od
              ON o.OrderID = od.OrderID
         JOIN Customers c
              ON o.CustomerID = c.CustomerID
         JOIN Products p
              ON od.ProductID = p.ProductID
WHERE OrderDate = '1996-07-04';

# 1996년 7월 4일에 주문된 상품과 카테고리 정보 조회
SELECT o.OrderDate, p.ProductName, c.CategoryName
FROM Orders o
         JOIN OrderDetails od
              ON o.OrderID = od.OrderID
         JOIN Products p
              ON od.OrderDetailID = p.ProductID
         JOIN Categories c
              ON p.CategoryID = c.CategoryID
WHERE OrderDate = '1996-07-04';

#5번직원 처리한 주문의 주문날짜와 상품들 조회
SELECT e.FirstName, e.LastName, o.OrderDate, p.ProductName, od.Quantity
FROM Employees e
         JOIN Orders o
              ON e.EmployeeID = o.EmployeeID
         JOIN OrderDetails od
              ON o.OrderID = od.OrderID
         JOIN Products p
              ON p.ProductID = od.ProductID
WHERE e.EmployeeID = 5
ORDER BY o.OrderDate DESC;
