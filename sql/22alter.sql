USE db1;

DESC my_table29;
ALTER TABLE my_table29
    MODIFY COLUMN ssn VARCHAR(10) DEFAULT '0000' UNIQUE;

SELECT *
FROM my_table29;

# 컬럼변경시 제약사항을 위한하는 기존 레코드의 값을 적절히 수정해야함
UPDATE my_table29
SET ssn = '1'
WHERE name = 's';

ALTER TABLE my_table29
    MODIFY COLUMN ssn VARCHAR(10) NOT NULL DEFAULT '0000' UNIQUE;

DESC my_table29;

# address 컬럼의 자료형 varchar(3)으로 변경
# not null 유지
UPDATE my_table29
SET address = 'lon'
WHERE address = 'london';

ALTER TABLE my_table29
    MODIFY COLUMN address VARCHAR(3) NOT NULL;

# 컬럼 삭제
# 매우 주의
ALTER TABLE my_table29
    DROP COLUMN city;

DROP TABLE book;

# isbn(책 바코드), 제목, 저자, 가격, 출판일
# 테이블(book) 만들기
CREATE table book
(
    isbn       VARCHAR(13)  NOT NULL UNIQUE,
    title      VARCHAR(100) not null,
    author     VARCHAR(50)  not null,
    price      INT                   DEFAULT 0,
    publishing DATE         NOT NULL DEFAULT NOW()
);
    
DESC book;

ALTER TABLE book

    MODIFY COLUMN isbn VARCHAR(13) NULL;

SELECT *
FROM book;



# Controller 29, 7번쪠 8번쨰 메소드 작성해서(jsp도)
# 새 책을 입력하는 프로그램 만들기