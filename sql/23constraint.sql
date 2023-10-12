-- null 허용 여부 (NOT NULL)
-- 유일한 값 여부 (UNIQUE)
-- 기본값 지정 (DEFAULT)
-- 테이블의 컬럼과 타입, 제약사항 등을 확인 (DESCRIBE/DESC)
-- 유효범위 체크 (CHECK)

CREATE TABLE my_table13 (
    col1 INT NULL,
    col2 INT NOT NULL
);

INSERT INTO my_table13 (col1, col2)
    VALUE (33, 44); -- ok

INSERT INTO my_table13 (col2)
    VALUE (55); -- ok

INSERT INTO my_table13 (col1)
    VALUE (66); -- not ok

SELECT * FROM my_table13;

CREATE TABLE my_table14 (
    col1 INT,
    col2 INT UNIQUE -- 이 컬럼에 중복값 넣을 수 없음
);

INSERT INTO my_table14 (col1, col2)
VALUE (11,22); -- ok
INSERT INTO my_table14 (col1, col2)
VALUE (11,33); -- ok
INSERT INTO my_table14 (col1, col2)
VALUE (11,33); -- not ok

SELECT * FROM my_table14;

CREATE TABLE my_table15 (
    col1 INT,
    col2 INT NOT NULL ,
    col3 INT UNIQUE ,
    col4 INT NOT NULL  UNIQUE
);

INSERT INTO my_table15 (col1, col2, col3, col4)
VALUE (11,22,33,44); -- ok
INSERT INTO my_table15 (col1, col2, col3, col4)
VALUE (11,22,33,44); -- not ok
INSERT INTO my_table15 (col1, col2, col3, col4)
VALUE (11,22,44,null); -- not ok
INSERT INTO my_table15 (col1, col2, col3, col4)
VALUE (11,22,44,55); -- ok

SELECT * FROM my_table15;

-- 예) my_table16으로 연습

CREATE TABLE my_table17 (
    col1 INT,
    col2 INT DEFAULT 100,
    col3 VARCHAR(10) DEFAULT 'empty',
    col4 DATETIME DEFAULT NOW()
);

INSERT INTO my_table17 (col1, col2, col3, col4)
VALUE (22, 33, 'son', '2023-11-11 22:23:24');
INSERT INTO my_table17 (col1)
VALUE (222);
INSERT INTO my_table17 (col1, col2, col3, col4)
VALUE (22, 33, null, null);

SELECT * FROM my_table17;

CREATE TABLE my_table18 (
    col1 INT,
    col2 INT DEFAULT 300,
    col3 INT NOT NULL DEFAULT 500
);

INSERT INTO my_table18 (col1, col2, col3)
VALUE (3, null, 222);
INSERT INTO my_table18 (col1)
VALUE (5);

SELECT * FROM my_table18;

-- 테이블의 컬럼과 타입, 제약사항 등을 확인
-- DESCRIBE, DESC
DESCRIBE my_table18;
DESC my_table17;
DESC my_table15;

-- 테이블 생성 쿼리 확인
SHOW CREATE TABLE my_table15;

-- 값의 유효범위 체크
CREATE TABLE my_table19 (
    col1 INT,
    col2 INT CHECK ( col2 > 100 ),
    col3 INT CHECK ( col3 > 1000 AND col3 < 2000 )
);

DESC my_table19;

SHOW CREATE TABLE my_table19;

INSERT INTO my_table19 (col1, col2, col3)
VALUE (10000, 50, -10); -- not ok

INSERT INTO my_table19 (col1, col2, col3)
VALUE (10000, 150, 1500); -- ok
