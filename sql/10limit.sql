 w3schools;

# LIMIT : 조회 결과 수(레코드 수, 행의 수)를 제한

SELECT *
FROM Orders
ORDER BY OrderDate
LIMIT 10;
SELECT *
FROM Orders
ORDER BY OrderDate
LIMIT 20;
SELECT *
FROM Orders
ORDER BY OrderDate DESC
LIMIT 20;

# 나이가 가장 많은 직원 3명
SELECT *
FROM Employees
ORDER BY BirthDate
LIMIT 3;

# 나이가 가장 젊은직원 3명
SELECT *
FROM Employees
ORDER BY BirthDate desc
LIMIT 2;

# 가장 비싼 상품 10개
SELECT *
FROM Products
ORDER BY Price desc
LIMIT 10;

# 3번 카테고리에서 가장 저럼한 상품 5개
SELECT *
FROM Products
ORDER BY Price
LIMIT 5;

# 1번 고객이 가장 최근에 주문한 주문들
SELECT *
FROM Orders
WHERE CustomerID = 1
ORDER BY OrderDate DESC
LIMIT 1;

#LIMIT 수1: 상위 (수1)개
#LIMIT 수1, 수2: (수1)번쨰부터 (수2)개, 단 수1은 0부터 시작
SELECT *
FROM Customers
ORDER BY CustomerID
LIMIT 3;


#인덱스 0부터 시작함
SELECT *
FROM Customers
ORDER BY CustomerID
LIMIT 3,5;
# 4번쨰 부터 5개

#첫번쨰 나이 많은 사람
SELECT *
FROM Employees
ORDER BY BirthDate
LIMIT 0,1;

#2번쨰 나이 많은 사람
SELECT *
FROM Employees
ORDER BY BirthDate
LIMIT 1,1;

#3번쨰 나이 많은 사람
SELECT *
FROM Employees
ORDER BY BirthDate
LIMIT 2,1;

# 페이지를 나누기

# 91명 고객
SELECT *
FROM Customers
ORDER BY CustomerID;

#한 페이지에 10명 씩
# 1 페이지 페이지 1~10
SELECT *
FROM Customers
ORDER BY CustomerID
LIMIT 0,10;

# 2 페이지  11~20
SELECT *
FROM Customers
ORDER BY CustomerID
LIMIT 10,10;

# 3 페이지  21~30
SELECT *
FROM Customers
ORDER BY CustomerID
LIMIT 20,10;

# 4 페이지  31~40
SELECT *
FROM Customers
ORDER BY CustomerID
LIMIT 30,10;


# 기존 데이터 복사해서 테이블 추가하기
INSERT INTO Customers
    (CustomerName, ContactName, Address, City, PostalCode, Country)
SELECT CustomerName, ContactName, Address, City, PostalCode, Country
FROM Customers;

SELECT COUNT(*)
FROM Customers;


