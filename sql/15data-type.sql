USE db1;

# 데이터 타입

# 문자형
#   고정형 안씀
#   가변형

# 숫자형
#   정수
#   실수

# 날짜형
#   년월일
#   년월일시분초

# 문자형
# VARCHAR(길이)
CREATE TABLE my_table4
(
    col1 VARCHAR(2),
    col2 VARCHAR(3),
    col3 VARCHAR(5)
);
INSERT INTO my_table4
    (col1, col2, col3)
    VALUE ('a', 'b', 'c');

INSERT INTO my_table4
    (col1, col2, col3)
    VALUE ('abc', 'abc', 'abc');

INSERT INTO my_table4
    (col1, col2, col3)
    VALUE ('흥민', '손흥민', '서울특별시');

SELECT *
FROM my_table4;

CREATE TABLE my_table5
(
    title  VARCHAR(300),
    author VARCHAR(100)
);

# my_table6 만들기
# 4개의 컬럼
# 각 컬럼의 데이터타입은 문자열 이고
# 컬럼명과, 허용되는 문자열 길이는 스스로 정하기
CREATE TABLE my_table6
(
    address VARCHAR(300),
    email   VARCHAR(300),
    name    VARCHAR(200),
    city    VARCHAR(100)
);

# 숫자형
CREATE TABLE my_tabla7
(
    price VARCHAR(10)
);
INSERT INTO my_tabla7
    (price) VALUE ('1000');

INSERT INTO my_tabla7
    (price) VALUE (2000);

INSERT INTO my_tabla7
    (price) VALUE ('천원');

SELECT *
FROM my_tabla7;

#INT INTEGER
CREATE TABLE my_table8
(
    price INT
);
INSERT INTO my_table8
    (price) VALUE (1000);

INSERT INTO my_table8
    (price) VALUE ('2000');

# 실수형은 .12 짤림
INSERT INTO my_table8
    (price) VALUE (50.12);

SELECT *
FROM my_table8;

# DEC,DECIMAL
# 고정된 실수
# DEC(총숫자 갯수, 소숫점 이후숫자 개수)
CREATE TABLE my_table9
(
    col1 DEC(3, 1),
    col2 DEC(5, 2)
);
INSERT INTO my_table9
    (col1) VALUE (31.4);

INSERT INTO my_table9
    (col1) VALUE (3.14); -- 잘림

INSERT INTO my_table9
    (col1) VALUE (314.1); -- x

INSERT INTO my_table9
    (col1) VALUE (314); -- x

SELECT *
FROM my_table9;

# my_table10 만들기
# price, score, age, length, width, height
CREATE TABLE my_table10
(
    price  DEC(10, 2),
    score  DEC(4, 2),
    age    INT,
    length DEC(20, 2),
    width  DEC(20, 2),
    height DEC(20, 2)
);
INSERT INTO my_table10
    (price, score, age, length, width, height)
    VALUE (1000, 5, 25, 20.14, 10.55, 35.55);

SELECT *
FROM my_table10;

# 날짜
# DATE 년월일
# YYYY-MM-DD
CREATE TABLE my_table11
(
    col1 DATE
);
INSERT INTO my_table11
    (col1) VALUE ('2024-10-14');
INSERT INTO my_table11
    (col1) VALUE ('2024-01-01');
INSERT INTO my_table11
    (col1) VALUE ('9999-12-31');
SELECT *
FROM my_table11;

# DATETIME : 날짜 시간
# 'YYYY-MM-DD HH:MM:SS.fffffff'
CREATE TABLE my_table12
(
    col1 DATETIME
);
INSERT INTO my_table12
    (col1) value ('2014-10-14 10:35:08');

INSERT INTO my_table12
    (col1) value ('2014-10-14 10:35:08.123456');

SELECT *
FROM my_table12;

CREATE TABLE my_table13
(
    col1 DATETIME(6)
);

INSERT INTO my_table13
    (col1) value ('2014-10-14 10:35:08.123456');

SELECT *
FROM my_table13;

# my_table14
# birth_date, start_date_time, end_date_time
CREATE TABLE my_table14
(
    birth_date      DATE,
    start_date_time DATETIME,
    end_date_time   DATETIME
);
INSERT INTO my_table14
    (birth_date, start_date_time, end_date_time)
    VALUE ('2024-10-14', '2024-10-14 10:41:01', '2024-10-21 10:41:01');

SELECT *
FROM my_table14;

# 다른 스키마(데이터베이스)에 있는 테이블 사용하기
#스키마명.컬럼
SELECT *
FROM w3schools.Products;

USE w3schools;
SELECT *
FROM db1.my_table14;

USE db1;

CREATE TABLE my_table15
(
    col1 VARCHAR(300),
    col2 int,
    col3 DEC(15, 2),
    col4 DATE,
    col5 DATETIME
);
SELECT *
FROM my_table15;

CREATE TABLE my_table16
(
    title     varchar(100),
    price     INT,
    score     DEC(65, 1),
    published DATE,
    inserted  DATETIME
);

SELECT *
FROM my_table16;

