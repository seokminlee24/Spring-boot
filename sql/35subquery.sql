USE w3schools;

# subquery : 외부쿼리 내에 내부쿼라 작성
# 읽기가 쉽다.


SELECT Country
FROM Customers
WHERE CustomerID = 1;

SELECT *
FROM Customers
WHERE Country = 'Germany';

SELECT CustomerName, Country
FROM Customers
WHERE Country = (SELECT Country
                 FROM Customers
                 WHERE CustomerID = 1)
ORDER BY CustomerName;

# join
# 성는이 좋은 편이다.
SELECT c1.CustomerName, c1.Country
FROM Customers c1
         JOIN Customers c2
WHERE c2.CustomerID = 1
  AND c1.Country = c2.Country
ORDER BY c1.CustomerName;

# subquery 는 SELECT, FROM, WHERE에 작성 가능

# 각 고객이 주문한 건수
SELECT c.CustomerID, c.CustomerName, COUNT(o.OrderID) 건
FROM Customers c
         JOIN Orders o
              ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID
ORDER BY 건 DESC;

SELECT COUNT(Orders.OrderID)
FROM Orders
WHERE CustomerID = 4;

SELECT CustomerID,
       CustomerName,
       (SELECT COUNT(OrderID)
        FROM Orders o
        WHERE o.CustomerID = c.CustomerID) 건
FROM Customers c
ORDER BY 건 DESC, CustomerID;

# 1997년 1월 각지원이 몇 건 주문을 처래했는지 조회
SELECT e.EmployeeID, e.FirstName, COUNT(OrderID)
FROM (SELECT *
      FROM Orders
      WHERE OrderDate between '1997-01-01' AND '1997-01-31') AS JulyOrders
         RIGHT JOIN Employees e
                    ON JulyOrders.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID;

# subquery 종류
# 단일헹일단일열
SELECT AVG(Price)
FROM Products;

SELECT *
FROM Products
WHERE Price > 28.866364;

SELECT *
FROM Products
WHERE Price > (SELECT AVG(Price)
               FROM Products);

# subquery :
# 상관서브쿼리 : 외부쿼리의 값을 내부쿼리에서 사용함
# 비상관서브쿼리 : 외부쿼리의 값을 내부쿼리에서 사용하지; 않음

# 평균 처리건수보다 많은 주문을 처리한 직원 목록 조회
SELECT COUNT(OrderID)
FROM Orders;
SELECT COUNT(EmployeeID)
FROM Employees;
SELECT COUNT(EmployeeID)
FROM Employees;
SELECT ((SELECT COUNT(OrderID)
         FROM Orders) / (SELECT COUNT(EmployeeID)
                         FROM Employees));

SELECT e.EmployeeID, e.LastName, e.FirstName, COUNT(o.OrderID) 건
FROM Employees e
         JOIN Orders o
              ON e.EmployeeID = o.EmployeeID
GROUP BY e.EmployeeID
HAVING 건 > (SELECT ((SELECT COUNT(OrderID)
                     FROM Orders) / (SELECT COUNT(EmployeeID)
                                     FROM Employees)))
ORDER BY 건 DESC;

#고객이 가장 많은 국가의 고객 목록
SELECT Country, COUNT(CustomerID) 고객수
FROM Customers
GROUP BY Country
ORDER BY 고객수 DESC;

SELECT *
FROM Customers
WHERE Country =
      (SELECT Country
       FROM (SELECT Country, COUNT(CustomerID) 고객수
             FROM Customers
             GROUP BY Country
             ORDER BY 고객수 DESC
             LIMIT 1) AS MaxCustomer);
