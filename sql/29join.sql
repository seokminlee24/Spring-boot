USE db1;
CREATE TABLE my_table48
(
    a    INT,
    name VARCHAR(20)
);

CREATE TABLE my_table49
(
    b     INT,
    notes VARCHAR(20)
);
INSERT INTO my_table48
VALUES (3, 'kim'),
       (4, 'lee'),
       (5, 'park'),
       (6, 'choi');
INSERT INTO my_table49
VALUES (4, '노벨상'),
       (5, '최우수상'),
       (6, '대상'),
       (7, '장려상'),
       (8, '참가상');

# 카테시안곱
SELECT *
FROM my_table48
         JOIN
     my_table49;
# Inner join(두 테이블 있는것)
SELECT *
FROM my_table48 t48
         JOIN my_table49 t49
              ON t48.a = t49.b;

# left join
# 두테이블 있는것 + 왼쪾 테이블
SELECT *
FROM my_table48 t48
         LEFT JOIN my_table49 t49
                   ON t48.a = t49.b;

# right join
# 두테이블 있는것 + 오른쪽 테이블
SELECT *
FROM my_table48 t48
         RIGHT OUTER JOIN my_table49 t49
                          ON t48.a = t49.b;

# 왠쪽 테이블에만 있는 레코드들
SELECT *
FROM my_table48 t8
         LEFT JOIN my_table49 t9
                   ON t8.a = t9.b;

# 왼쪽 테이블에만 있는 레코드들
SELECT *
FROM my_table48 t8
         LEFT JOIN my_table49 t9
                   ON t8.a = t9.b
WHERE b IS NULL;

USE w3schools;
# 주문한 적 있는 고객들
SELECT o.CustomerID, c.CustomerID
FROM Orders o
         RIGHT JOIN Customers c
                    ON o.CustomerID = c.CustomerID;
# 주문한 적 없는 고객들
SELECT c.CustomerName
FROM Orders o
         RIGHT JOIN Customers c
                    ON o.CustomerID = c.CustomerID
WHERE o.CustomerID IS NULL;

# 주문을 처리한 적 없는 직원들

SELECT e.FirstName, e.LastName
FROM Orders o
         RIGHT JOIN Employees e
                    ON o.EmployeeID = e.EmployeeID
WHERE o.EmployeeID IS NULL;

INSERT INTO Products
    (ProductName, SupplierID, CategoryID, Unit, Price)
VALUES ('핸드폰', 1, 1, '1개', 3000);
#주문된 적 없는 상품명 조회
SELECT p.ProductName 상품명
FROM OrderDetails od
         RIGHT JOIN Products p
                    ON od.ProductID = p.ProductID
WHERE od.OrderDetailID IS NULL;

SELECT p.ProductName
FROM Products p
         LEFT JOIN OrderDetails od
                   ON od.ProductID = p.ProductID
WHERE od.OrderDetailID IS NULL;