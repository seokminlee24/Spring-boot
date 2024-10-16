# 집계함수
# COUNT AVG SUM MAX MIN
# 집계함수 사용 시 NULL 포함되지 않음

USE w3schools;
# COUNT 갯수
SELECT COUNT(*)
FROM Customers;
SELECT COUNT(CustomerID)
FROM Customers;
SELECT COUNT(CustomerName)
FROM Customers;
DESC Customers;
INSERT INTO Customers
    (CustomerName) VALUE ('흥민');

SELECT COUNT(Country)
FROM Customers;
SELECT COUNT(DISTINCT Country)
FROM Customers;

SELECT SUM(Price)
FROM Products;
SELECT AVG(Price)
FROM Products;
SELECT MAX(Price)
FROM Products;
SELECT MIN(Price)
FROM Products;


DELETE
FROM Customers
WHERE CustomerID = '흥민';

# 소계 : 부분 부분 계산
# GROUP BY : 소계시 사용
SELECT COUNT(CustomerID)
FROM Customers;
SELECT Country, COUNT(CustomerID)
FROM Customers
GROUP BY Country;

SELECT Country, COUNT(CustomerID) 인원
FROM Customers
GROUP BY Country
ORDER BY 인원 DESC;
SELECT Country, COUNT(CustomerID) 인원
FROM Customers
GROUP BY Country
ORDER BY 인원 DESC
LIMIT 5;

#카테고리별 평균 상품 가격
SELECT CategoryID, AVG(Price)
FROM Products
GROUP BY CategoryID;
SELECT CategoryID, COUNT(Price)
FROM Products
GROUP BY CategoryID;
SELECT CategoryID, SUM(Price)
FROM Products
GROUP BY CategoryID;
SELECT CategoryID, MIN(Price)
FROM Products
GROUP BY CategoryID;
SELECT CategoryID, MAX(Price)
FROM Products
GROUP BY CategoryID;

SELECT c.CategoryID, c.CategoryName, AVG(Price)
FROM Products p
         JOIN Categories c
              ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryID;

# 직원별 주문처리건수(Employees, Orders)
# 직원의 이름과 처리건수 조회, 직원 first name 순 정렬
SELECT e.EmployeeID, e.FirstName, e.LastName, COUNT(OrderID)
FROM Employees e
         JOIN Orders o
              ON e.EmployeeID = o.EmployeeID
GROUP BY e.EmployeeID
ORDER BY e.FirstName;

# 고객별 주문 건수
SELECT c.CustomerID, c.CustomerName, COUNT(o.OrderID)
FROM Orders o
         RIGHT JOIN Customers c
                    ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerID
ORDER BY 3 DESC;

# 한번도 주문하지 않은 고객
SELECT *
FROM Customers c
         LEFT JOIN Orders o
                   ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;

# 1997년 싱반기 1월 주문 처리건수를 직원별로 조회
SELECT e.EmployeeID, e.FirstName, e.LastName, COUNT(OrderID)
FROM Orders o
         LEFT JOIN Employees e
                   ON o.EmployeeID = e.EmployeeID
WHERE OrderDate between '1997-01-01' AND '1997-01-31'
GROUP BY e.EmployeeID;

# 5번 직원 0번
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
