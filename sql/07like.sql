USE w3schools;

#LIKE : ~같은
SELECT *
FROM Customers
WHERE CustomerName = 'Alfreds Futterkiste';

SELECT *
FROM Customers
WHERE CustomerName LIKE '%ed%';

#% : 0개 이상의 아무 문자들
#A 시작하는 부분
SELECT *
FROM Customers
WHERE CustomerName LIKE 'A%';

#a로 끝나는
SELECT *
FROM Customers
WHERE CustomerName LIKE '%A';

#처음에 있든 중간에 있든 마지막에 있는 다나옴
SELECT *
FROM Customers
WHERE CustomerName LIKE '%A%';

# _ : 임의의 한글자
SELECT *
FROM Employees
WHERE BirthDate LIKE '195_-__-__';

SELECT *
FROM Employees
WHERE BirthDate LIKE '195_-02-__';

# 고객명에 OR 이 포함되어 있는 고객들의 조회
SELECT *
FROM Customers
WHERE CustomerName LIKE '%OR%'
ORDER BY Country, CustomerName;

# 고객계약명이 A로 시작하고 O로 끝나는 고객들 조회
SELECT *
FROM Customers
WHERE ContactName LIKE 'a%o';

# 생일이 7월인 직원들 조회
SELECT *
FROM Employees
WHERE BirthDate LIKE '____-07-__';





