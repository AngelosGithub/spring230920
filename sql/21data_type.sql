-- 수형(정수, 실수)
-- 문자열
-- 날짜(시간)

-- 정수 : int
CREATE TABLE my_table3 (
    col int
);
INSERT INTO my_table3 (col)
VALUE (42342);
INSERT INTO my_table3 (col)
    VALUE ('434543');
INSERT INTO my_table3 (col)
    VALUE ('two'); -- 안됨
SELECT * FROM my_table3;

-- 실수 : DEC(DECIMAL)
CREATE TABLE my_table4 (
    col dec
);
INSERT INTO my_table4 (col)
VALUE (3.14);
SELECT * FROM my_table4;
-- 예) my_table6만들기
-- age 정수타입
-- score 실수타입 (총 길이 7, 소수점 이하 2)
CREATE TABLE my_table6(
    age int,
    score dec(7,2)
);

INSERT INTO my_table6 (age, score)
VALUE (32, 234.32);
SELECT * FROM my_table6;

-- 문자열 : VARCHAR
CREATE TABLE my_table7 (
    col1 VARCHAR(1),
    col2 VARCHAR(2),
    col3 VARCHAR(16000)
);
INSERT INTO my_table7 (col1)
VALUE ('가');
INSERT INTO my_table7 (col1)
    VALUE ('가나');

INSERT INTO my_table7 (col2)
    VALUE ('가나');
INSERT INTO my_table7 (col2)
    VALUE ('가나다');
SELECT * FROM my_table7;

-- 예) my_table9 만들기
-- name 문자열 100자
-- 주소 문자열 200자
-- 전화번호 문자열 100자
CREATE TABLE my_table9 (
    name varchar(100),
    address varchar(200),
    phone varchar(100)
);
INSERT INTO my_table9 (name, address, phone)
VALUE ('lee', 'seoul', '010');
INSERT INTO my_table9 (name, address, phone)
    VALUE ('seo', 'jeju', '020');
INSERT INTO my_table9 (name, address, phone)
    VALUE ('kim', 'ilsan', '030');
SELECT * FROM my_table9;

-- DATE : 날짜
CREATE TABLE my_table10 (
    col1 DATE
);
INSERT INTO my_table10 (col1)
VALUE ('1991-01-03')
