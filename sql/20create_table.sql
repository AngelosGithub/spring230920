USE mydb1;

-- 테이블 만들기
CREATE TABLE 테이블명 (
    컬럼명 컬럼타입,
    컬럼명 컬럼타입
);

-- 테이블, 컬럼 작명 관습 (회사 내규에 따름)
-- lower_snake_case (*)
-- UPPER_SNAKE_CASE
-- UpperCamelCase
-- lowerCamelCase

CREATE TABLE my_table1 (
    col_name1 varchar(100),
    col_name2 varchar(100),
    col_name3 varchar(100)
);

SELECT * FROM my_table1;
INSERT INTO my_table1 (col_name1, col_name2, col_name3)
VALUE ('민재', '흥민', '강인');

-- 예) my_table2 만들기, 컬럼은 4개, 모든 컬럼타입 varchar(10)
CREATE TABLE my_table2 (
    col1 varchar(10),
    col2 varchar(10),
    col3 varchar(10),
    col4 varchar(10)
);
SELECT * FROM my_table2;
INSERT INTO my_table2 (col1, col2, col3, col4)
VALUE ('30', 'seoul', '011', 'kor');

-- 정수, 문자열, 실수, 날짜