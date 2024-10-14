USE db1;
DESC my_table16;

#Comstrains (제약사항)

#NULL 허용 여부
CREATE TABLE my_table17
(
    col1 VARCHAR(3),         -- NULL 허용함
    col2 VARCHAR(3) NOT NULL -- Null 허용 안함
);
INSERT INTO my_table17
    (col2) value ('어떤값');
INSERT INTO my_table17
    (col1) value ('어떤값');
INSERT INTO my_table17
    (col1, col2) VALUE (NULL, '또다른');
INSERT INTO my_table17
    (col1, col2) VALUE (NULL, 'abc');
INSERT INTO my_table17
    value ('', '');
INSERT INTO my_table17
    value (NULL, NULL);

DESC my_table17;

# my_table18 생성
# name (문자열), price (정수)
# name 은 꼭 값이 있어야함
CREATE TABLE my_table18
(
    name  VARCHAR(3) NOT NULL, -- NULL 허용함
    price INT
);

DESC my_table18;

